---
tags:
- anki
- regra
- flashcards
- anpd
pinned: true
tier: procedural
type: Rule
generated:
  by: process:ai-memory/2.2.1
  at: 2026-11-14T15:40:13Z
---
# Regra: sempre criar cards no Anki ao explicar

Pedido do usuário (2026-11-14): **sempre que ele pedir para explicar algo**, além de explicar, criar flashcards no Anki e colocar num deck por categoria.

## Como fazer
- Anki oficial (Anki.Anki via winget, escopo usuário) em `%LOCALAPPDATA%\Programs\Anki\Anki.exe`. O "Anki Universal" foi desinstalado e não deve ser usado.
- Cards criados pelo add-on **AnkiConnect** (código 2055492159), API HTTP em `http://127.0.0.1:8765`. O Anki precisa estar aberto; se não estiver, abrir o Anki.exe e esperar a porta subir. Se o add-on acabou de ser instalado, é preciso reiniciar o Anki.
- **Deck = `ANPD::<Trilha>::<Matéria>::<Assunto>`**. Ex.: `ANPD::Ciência de Dados::IA e Aprendizado de Máquina::Ensembles`. (Até 2026-11-14 o prefixo era `CGU::`. O usuário pediu para renomear, porque o alvo é a ANPD; ver [[missao-concurso]].) Criar o deck com `createDeck` antes de `addNotes`.
- Modelo `Básico`, campos `Frente`/`Verso` (o Anki está em português). Tags: `anpd`, a área (`ia` etc.), o subtema e `pegadinha` quando for pegadinha de banca (Cebraspe, troca de conceito).
- Gerar de 3 a 8 cards atômicos por subtema: uma ideia por card, pergunta objetiva na frente, resposta curta + porquê no verso.
- Para mover cards, usar `changeDeck`, que preserva o histórico de revisão. Nunca apagar e recriar.
- No fim da resposta, informar quantos cards foram criados e em qual deck. Se o AnkiConnect não responder, explicar mesmo assim e avisar que os cards ficaram pendentes.
