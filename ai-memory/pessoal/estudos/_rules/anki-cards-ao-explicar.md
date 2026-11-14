---
tags:
- anki
- regra
- flashcards
- cgu
pinned: true
tier: procedural
type: Rule
generated:
  by: process:ai-memory/2.2.1
  at: 2026-11-14T14:48:10Z
---
# Regra: sempre criar cards no Anki ao explicar

Pedido do usuário (2026-11-14): **sempre que ele pedir para explicar algo**, além de explicar, criar flashcards no Anki e colocar num deck por categoria.

## Como fazer
- Anki oficial (Anki.Anki via winget, escopo usuário) em `%LOCALAPPDATA%\Programs\Anki\Anki.exe`. O app "Anki Universal" (MSIX) que também está instalado é de terceiros e NÃO serve.
- Cards criados pelo add-on **AnkiConnect** (código 2055492159), API HTTP em `http://127.0.0.1:8765`. O Anki precisa estar aberto; se não estiver, abrir o Anki.exe e esperar a porta subir.
- Deck = categoria, no formato `CGU::<Matéria>::<Assunto>`. Ex.: `CGU::IA e Aprendizado de Máquina::Paradigmas de Aprendizado`. Criar o deck com `createDeck` antes de `addNotes`.
- Modelo `Basic` (Frente/Verso, nomes de campo conforme o idioma do Anki: conferir com `modelFieldNames`). Usar tags `cgu`, a matéria e `pegadinha` quando for pegadinha de prova.
- Gerar de 3 a 8 cards atômicos por explicação: uma ideia por card, pergunta objetiva na frente, resposta curta + porquê no verso. Priorizar pegadinhas de banca e distinções (X vs Y).
- No fim da resposta, informar quantos cards foram criados e em qual deck.
- Se o AnkiConnect não responder, explicar mesmo assim e avisar que os cards ficaram pendentes.
