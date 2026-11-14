---
tags:
- regra
- licoes
- teach
- html
- cebraspe
pinned: true
tier: procedural
type: Rule
generated:
  by: process:ai-memory/2.2.1
  at: 2026-11-14T15:37:08Z
---
# Regra: cada tópico estudado vira lição HTML (estilo skill teach)

Pedido do usuário (2026-11-14): além dos cards no Anki, ir criando **lições HTML por bloco e tópico**, no formato da skill `teach` do mattpocock (`mattpocock-skills:teach`), igual ao workspace da ANPD que ele já tinha (`...\Pessoal\Anpd\teach_teste`, usado só como modelo). O alvo é o concurso da ANPD, e o edital da CGU (TI · Ciência de Dados, Cebraspe) serve de roteiro. Ver [[missao-concurso]].

## Onde
- Workspace: `C:\Users\Henricco Santos\Estudos\ANKI_AIMEMORY_ESTUDOS\teach\`, **fora do OneDrive** e versionado junto com o repositório (o `sync.ps1` já inclui).
- `lessons/index.html` (índice por bloco), `lessons/bloco-<letra>-<tema>/0001-<nome>.html`, `assets/` (style.css, quiz.js, metricas.js), `reference/glossario.html`, `MISSION.md`, `RESOURCES.md`, `NOTES.md`, `learning-records/NNNN-*.md`.

## Como fazer cada lição
- Lição curta, sobre um único tópico, com: kicker → h1 → lede → conceito → diagrama SVG → exemplo resolvido (controle ou proteção de dados) → `.pegadinha` → prática com `.quiz` → fonte principal + citações `[n]` → `.ask-teacher` → `.nav`.
- Incluir `<meta charset="utf-8">`. **Reusar `assets/`.** Componente novo e reutilizável vai para `assets/`, nunca inline.
- **Quiz só certo/errado (Cebraspe)**, com redação formal de prova. `data-key` = gabarito, um `.feedback[data-for]` para cada escolha. Alternar o gabarito, sem padrão de posição.
- Atualizar o índice, o glossário (os termos seguem o glossário), um learning-record novo por sessão e o RESOURCES se houver fonte nova.
- Fonte principal do Bloco A: ISLR (statlearning.com).

## Ordem completa ao estudar um tema
Explicar no chat → cards no Anki ([[anki-cards-ao-explicar]]) → lição HTML → ai-memory → sync pelo terminal do usuário ([[git-sync-estudos]]).

## Estado em 2026-11-14
Bloco A · IA e Aprendizado de Máquina: lições 0001–0005 (paradigmas; regressão/classificação/métricas com calculadora; não supervisionado; sobreajuste/regularização; ensembles/baseline), todas com 5 itens C/E. Próximo: modelos em detalhe (árvores, k-NN, SVM, Naive Bayes).
