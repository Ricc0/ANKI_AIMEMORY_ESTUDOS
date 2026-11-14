# Sincroniza os cards do Anki (via AnkiConnect) e a wiki do ai-memory "estudos"
# para este repositório, e então faz commit e push.
#
# Uso:  powershell -ExecutionPolicy Bypass -File sync.ps1 -Message "cards: paradigmas de aprendizado"

param(
    [string]$Message = "sync: estudos"
)

$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [Text.Encoding]::UTF8
$repo = $PSScriptRoot
$utf8 = New-Object System.Text.UTF8Encoding($false)

function Write-Utf8([string]$path, [string]$text) {
    $dir = Split-Path $path -Parent
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force $dir | Out-Null }
    [IO.File]::WriteAllText($path, $text.Replace("`r`n", "`n"), $utf8)
}

# ---------- 1. Anki ----------
function Invoke-Anki([string]$action, $params = @{}) {
    $body = @{ action = $action; version = 6; params = $params } | ConvertTo-Json -Depth 20 -Compress
    $r = Invoke-RestMethod -Uri 'http://127.0.0.1:8765' -Method Post `
        -Body ([Text.Encoding]::UTF8.GetBytes($body)) -ContentType 'application/json; charset=utf-8' -TimeoutSec 30
    if ($r.error) { throw "AnkiConnect ($action): $($r.error)" }
    return $r.result
}

$ankiOk = $false
try { [void](Invoke-Anki 'version'); $ankiOk = $true } catch {
    Write-Warning "AnkiConnect offline (o Anki está aberto?). Cards NÃO foram exportados; só o ai-memory será sincronizado."
}

if ($ankiOk) {
    $ankiDir = Join-Path $repo 'anki'
    if (Test-Path $ankiDir) { Remove-Item -Recurse -Force $ankiDir }

    $noteIds = @(Invoke-Anki 'findNotes' @{ query = 'deck:*' })
    $notes = @()
    if ($noteIds.Count -gt 0) {
        $notes = @(Invoke-Anki 'notesInfo' @{ notes = $noteIds })
        $firstCards = @($notes | ForEach-Object { $_.cards[0] })
        $cards = @(Invoke-Anki 'cardsInfo' @{ cards = $firstCards })
        $deckByCard = @{}
        foreach ($c in $cards) { $deckByCard[[string]$c.cardId] = $c.deckName }
    }

    $export = foreach ($n in ($notes | Sort-Object noteId)) {
        $fields = [ordered]@{}
        foreach ($p in ($n.fields.PSObject.Properties | Sort-Object { $_.Value.order })) { $fields[$p.Name] = $p.Value.value }
        [ordered]@{
            noteId    = $n.noteId
            deckName  = $deckByCard[[string]$n.cards[0]]
            modelName = $n.modelName
            tags      = @($n.tags | Sort-Object)
            fields    = $fields
        }
    }
    Write-Utf8 (Join-Path $ankiDir 'notes.json') (ConvertTo-Json @($export) -Depth 20)

    # Um Markdown legível por deck (CGU::A::B  ->  anki/decks/CGU/A/B.md)
    foreach ($g in ($export | Group-Object { $_.deckName })) {
        $parts = $g.Name -split '::' | ForEach-Object { $_ -replace '[\\/:*?"<>|]', '_' }
        $mdPath = Join-Path $ankiDir ('decks\' + ($parts -join '\') + '.md')
        $sb = New-Object System.Text.StringBuilder
        [void]$sb.AppendLine("# $($g.Name)").AppendLine()
        [void]$sb.AppendLine("$($g.Count) card(s).").AppendLine()
        $i = 0
        foreach ($n in $g.Group) {
            $i++
            $vals = @($n.fields.Values)
            [void]$sb.AppendLine("## $i. $($vals[0])").AppendLine()
            if ($vals.Count -gt 1) { [void]$sb.AppendLine($vals[1]).AppendLine() }
            if ($n.tags.Count) { [void]$sb.AppendLine("Tags: " + (($n.tags | ForEach-Object { "``$_``" }) -join ' ')).AppendLine() }
        }
        Write-Utf8 $mdPath $sb.ToString()
    }
    Write-Host "Anki: $($export.Count) nota(s) exportada(s)."
}

# ---------- 2. ai-memory (só as páginas da wiki, nada de banco/observações) ----------
$wiki = '\\wsl.localhost\Ubuntu\home\ricco\.local\share\ai-memory-estudos\wiki'
$memDir = Join-Path $repo 'ai-memory'
if (Test-Path $wiki) {
    if (Test-Path $memDir) { Remove-Item -Recurse -Force $memDir }
    foreach ($ws in (Get-ChildItem $wiki -Directory | Where-Object Name -ne '.git')) {
        $wsMeta = Join-Path $ws.FullName '_meta.md'
        $wsName = if (Test-Path $wsMeta) { ((Get-Content $wsMeta -Encoding UTF8) -match '^workspace:\s*(.+)$' | Select-Object -First 1) -replace '^workspace:\s*', '' } else { $ws.Name }
        foreach ($pj in (Get-ChildItem $ws.FullName -Directory)) {
            $pjMeta = Join-Path $pj.FullName '_meta.md'
            $pjName = if (Test-Path $pjMeta) { ((Get-Content $pjMeta -Encoding UTF8) -match '^project:\s*(.+)$' | Select-Object -First 1) -replace '^project:\s*', '' } else { $pj.Name }
            $dest = Join-Path $memDir "$wsName\$pjName"
            New-Item -ItemType Directory -Force $dest | Out-Null
            robocopy $pj.FullName $dest *.md /E /XF _meta.md /NFL /NDL /NJH /NJS /NP | Out-Null
            if ($LASTEXITCODE -ge 8) { throw "robocopy falhou ($LASTEXITCODE)" }
        }
    }
    $LASTEXITCODE = 0
    Write-Host "ai-memory: wiki copiada."
} else {
    Write-Warning "Wiki do ai-memory não encontrada em $wiki (o WSL está rodando?)."
}

# ---------- 3. git ----------
Push-Location $repo
try {
    git add -A
    $pending = git status --porcelain
    if (-not $pending) { Write-Host "Nada mudou; nenhum commit."; return }
    git commit -m $Message | Out-Host
    git push -u origin main | Out-Host
    if ($LASTEXITCODE -ne 0) { throw "git push falhou" }
    Write-Host "Commit e push feitos: $Message"
} finally { Pop-Location }
