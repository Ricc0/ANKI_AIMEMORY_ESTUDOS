# Notas do professor

## Preferências do aluno
- Gosta de explicações **aprofundadas**, com intuição, exemplos de auditoria/fraude e tabelas comparativas.
- Toda explicação vira **cards no Anki** (deck `CGU::<Matéria>::<Assunto>`) e tudo vai para o GitHub (`sync.ps1` na raiz do repositório).
- Quer uma **lição HTML por tópico**, organizada em blocos, no mesmo estilo do workspace da ANPD (`assets/style.css` + `assets/quiz.js`).
- Nada de estudo dentro do OneDrive: este workspace fica em `C:\Users\Henricco Santos\Estudos\ANKI_AIMEMORY_ESTUDOS\teach`.

## Como as lições são feitas
- Estrutura: kicker → h1 → lede → conceito → diagrama SVG → exemplo resolvido → pegadinhas → prática (quiz) → fonte principal → "pergunte ao professor" → navegação.
- Quiz: `assets/quiz.js`, com `data-key` = resposta certa e um `.feedback[data-for]` por opção. **Banca Cebraspe: usar só itens certo/errado.** Alternar o gabarito e não deixar padrão (ex.: o item 1 sempre "errado"). Itens com redação de prova, em linguagem formal, e o feedback explica as duas escolhas.
- `assets/metricas.js`: calculadora de matriz de confusão (componente reutilizável).
- Glossário em `reference/glossario.html`. Termos novos entram lá e as lições seguem o glossário.

## Verificação de fontes
- 2026-11-14: statlearning.com, incompleteideas.net (Sutton & Barto), distill.pub, developers.google.com (MLCC) e deepmind.google responderam 200. Os links de scikit-learn.org **não puderam ser testados** a partir desta máquina (DNS bloqueado no sandbox). São URLs estáveis da documentação oficial, mas vale conferir.
