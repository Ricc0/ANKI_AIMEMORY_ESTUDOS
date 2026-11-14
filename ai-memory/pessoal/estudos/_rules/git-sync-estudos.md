---
tags:
- git
- regra
- anki
- backup
- cgu
pinned: true
tier: procedural
type: Rule
generated:
  by: process:ai-memory/2.2.1
  at: 2026-11-14T15:10:16Z
---
# Regra: commit e push a cada card, mudança ou estudo

Pedido do usuário (2026-11-14): tudo dos estudos fica versionado no GitHub, no repositório **https://github.com/Ricc0/ANKI_AIMEMORY_ESTUDOS** (conta Ricc0). **Sempre** fazer commit e push depois de criar cards no Anki, mudar o ai-memory ou registrar qualquer estudo.

## Como fazer
- Clone local: `C:\Users\Henricco Santos\Estudos\ANKI_AIMEMORY_ESTUDOS`, branch `main`. **Fica FORA do OneDrive de propósito**: o usuário não quer esses arquivos sincronizados no OneDrive. Nunca criar cópias, exports ou arquivos de estudo dentro de `OneDrive - exedconsulting`.
- **Rodar o sync pelo terminal do usuário** (ferramenta `run_in_terminal`), não pelo shell interno do agente: o shell interno roda isolado e não acessa a credencial do GitHub salva no Git Credential Manager, então o push falha com "terminal prompts disabled". Comando (com o Anki aberto):
  `powershell -NoProfile -ExecutionPolicy Bypass -File 'C:\Users\Henricco Santos\Estudos\ANKI_AIMEMORY_ESTUDOS\sync.ps1' -Message '<mensagem>'`
  Depois, ler a saída com `read_terminal` e confirmar a linha "Push feito".
- O script exporta todos os cards via AnkiConnect (`anki/notes.json` + Markdown por deck em `anki/decks/`), copia só as páginas `.md` da wiki do ai-memory-estudos (lidas de `\\wsl.localhost\Ubuntu\home\ricco\.local\share\ai-memory-estudos\wiki`) para `ai-memory/<workspace>/<projeto>/`, e faz `git add -A`, commit e push. Também reenvia commits que ficaram pendentes de um push que falhou.
- Nunca enviar o banco `db/`, `raw/` nem observações de sessão, só as páginas da wiki.
- Mensagens de commit em português, curtas: `cards: <assunto>`, `ai-memory: <o que mudou>`, `estudos: <...>`.
- Ordem ao explicar algo: explicar → criar cards (ver [[anki-cards-ao-explicar]]) → gravar no ai-memory se for o caso → rodar o sync. Avisar o usuário se o push falhar.
