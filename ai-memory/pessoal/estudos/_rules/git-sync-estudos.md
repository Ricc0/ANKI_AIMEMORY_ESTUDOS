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
  at: 2026-11-14T15:03:37Z
---
# Regra: commit e push a cada card, mudança ou estudo

Pedido do usuário (2026-11-14): tudo dos estudos fica versionado no GitHub, no repositório **https://github.com/Ricc0/ANKI_AIMEMORY_ESTUDOS** (conta Ricc0). **Sempre** fazer commit e push depois de criar cards no Anki, mudar o ai-memory ou registrar qualquer estudo.

## Como fazer
- Clone local: `CGU\ANKI_AIMEMORY_ESTUDOS` (dentro da pasta CGU do OneDrive), branch `main`.
- Rodar, com o Anki aberto: `powershell -ExecutionPolicy Bypass -File ANKI_AIMEMORY_ESTUDOS\sync.ps1 -Message "<mensagem>"`.
- O script exporta todos os cards via AnkiConnect (`anki/notes.json` + Markdown por deck em `anki/decks/`), copia só as páginas `.md` da wiki do ai-memory-estudos (lidas de `\\wsl.localhost\Ubuntu\home\ricco\.local\share\ai-memory-estudos\wiki`) para `ai-memory/<workspace>/<projeto>/`, e faz `git add -A`, commit e push. Se nada mudou, não cria commit.
- Nunca enviar o banco `db/`, `raw/` nem observações de sessão, só as páginas da wiki.
- Mensagens de commit em português, curtas: `cards: <assunto>`, `ai-memory: <o que mudou>`, `estudos: <...>`.
- Ordem ao explicar algo: explicar → criar cards (ver [[anki-cards-ao-explicar]]) → gravar no ai-memory se for o caso → rodar o sync. Avisar o usuário se o push falhar.
