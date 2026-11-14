---
tags:
- regra
- licoes
- teach
- html
- cebraspe
- anpd
pinned: true
tier: procedural
type: Rule
generated:
  by: process:ai-memory/2.2.1
  at: 2026-11-14T15:55:49Z
---
# Regra: cada tópico estudado vira lição HTML (estilo skill teach)

Pedido do usuário (2026-11-14): além dos cards no Anki, ir criando **lições HTML por bloco e tópico** no formato da skill `teach` do mattpocock (`mattpocock-skills:teach`). Ver [[missao-concurso]].

## Workspace único (desde 2026-11-14)
- `C:\Users\Henricco Santos\Estudos\ANKI_AIMEMORY_ESTUDOS\teach\`, **fora do OneDrive**, versionado no GitHub (repositório **público**). O antigo `OneDrive\...\Pessoal\Anpd\teach_teste` foi copiado para cá e deixou de ser a fonte da verdade.
- Blocos: **A LGPD e atos da ANPD** (0001–0010), **B Probabilidade e Estatística** (0001–0002), **C Aprendizado de Máquina** (0001–0005 da trilha CGU + 0006 Naive Bayes), **D BI e Analytics** (0001), **E Big Data** (0001). Próximos: Lote 11 (arts. 46–51 + Res. 15/2024 e 1/2021) no Bloco A; árvores, k-NN, SVM e redes no Bloco C.
- `lessons/index.html`, `assets/` (style.css, quiz.js, metricas.js), `reference/` (glossario.html, lgpd-texto-compilado.md), `materiais/` (PDFs, planilha, editais), MISSION, RESOURCES, NOTES, `learning-records/0001–0006`.
- O **Guia DOM ANPD 2026** (PDF de terceiros) fica fora do Git via `.gitignore`. Nunca subir material de terceiros com direitos autorais para o repositório público.

## Como fazer cada lição
- Uma lição por tópico: kicker → h1 → lede → conceito → SVG → exemplos resolvidos → `.pegadinha` → `.quiz` → fonte principal + citações → `.ask-teacher` → `.nav`. Lições jurídicas terminam com o box `.portugues`.
- `<!doctype html>` + `<meta charset="utf-8">` + viewport. Reusar `assets/`.
- **Quiz só certo/errado (Cebraspe).** Um `.feedback[data-for]` por escolha. Alternar o gabarito. Conferir itens absolutos ("depende de", "somente", "não se aplica") contra hipóteses alternativas da lei.
- **Rigor jurídico:** conferir a lei no `reference/lgpd-texto-compilado.md` e os **atos da ANPD (resoluções, enunciados, guias) no texto oficial**. Na revisão de 2026-11-14, o erro mais grave estava no Enunciado 1/2023 (ver `NOTES.md`).
- Atualizar índice, glossário, learning-record e RESOURCES. Validar quizzes e links por script antes do sync.

## Ordem completa ao estudar um tema
Explicar no chat → cards no Anki ([[anki-cards-ao-explicar]]) → lição HTML → ai-memory → sync pelo terminal do usuário ([[git-sync-estudos]]).
