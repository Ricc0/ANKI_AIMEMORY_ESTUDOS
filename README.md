# ANKI_AIMEMORY_ESTUDOS

Backup versionado dos meus estudos para o concurso da CGU.

- `anki/notes.json`: todos os cards do Anki (deck, campos, tags), exportados pelo AnkiConnect.
- `anki/decks/`: os mesmos cards em Markdown, um arquivo por deck (`CGU/<Matéria>/<Assunto>.md`).
- `ai-memory/`: as páginas da wiki do ai-memory "estudos" (regras e anotações permanentes).
- `teach/`: lições interativas em HTML (formato da skill `teach`). Comece por `teach/lessons/index.html`.

## Como atualizar

O clone local fica em `C:\Users\Henricco Santos\Estudos\ANKI_AIMEMORY_ESTUDOS`, fora do OneDrive. Com o Anki aberto (para o AnkiConnect responder):

```powershell
powershell -ExecutionPolicy Bypass -File "C:\Users\Henricco Santos\Estudos\ANKI_AIMEMORY_ESTUDOS\sync.ps1" -Message "cards: <assunto>"
```

O script exporta tudo, faz commit e dá push. Se nada mudou, não cria commit.
