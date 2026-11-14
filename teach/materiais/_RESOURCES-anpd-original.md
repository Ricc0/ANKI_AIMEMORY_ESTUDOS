# LGPD/ANPD + Ciência de Dados (concurso ANPD) Resources

## Knowledge

### LGPD, ANPD e fundamento constitucional
- **[LGPD — edição oficial (PDF no workspace): `Lei_geral_protecao_dados_pessoais_1ed.pdf`]**
  Fonte primária LOCAL com camada de texto extraível — conferida palavra por
  palavra. É a referência de verificação preferida da lei seca, já que o
  Planalto recusa fetch direto (ver Gaps). Use para: transcrição literal de
  qualquer artigo da LGPD. Arts. 5º, 6º, 12 e 13 já conferidos aqui na Lição 3.
- [Lei nº 13.709/2018 (LGPD) — texto compilado, Planalto](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm)
  Fonte primária obrigatória — lei seca, redação vigente. Use para: conferir alterações posteriores. **Acesso que funciona:** `WebFetch` falha (ECONNRESET), mas o **navegador embutido carrega normalmente** (`mcp Claude_Browser preview_start` + `get_page_text`/`javascript_tool`). ⚠️ O texto compilado empilha TODAS as redações históricas com marcadores "(Redação dada por…)" — pegar sempre a ÚLTIMA redação de cada dispositivo. Conferido em 2026-08-18: `reference/lgpd-texto-compilado.md` completado com arts. 1º–65 a partir desta fonte.
- **[Guia DOM ANPD 2026 (PDF no workspace): `2026_07_26_ANPD_guia_dom.pdf`]**
  Guia de mentoria (Fernando Mesquita / Douglas Schneider, jul/2026) com a
  leitura estratégica do concurso: cargo único sem especialidade, aposta de
  pesos por disciplina, ordem de prioridade da LGPD por peso do trabalho da
  agência, as 7 resoluções que caem, cronograma da Nota Técnica 2/2026
  (prova ~27/01/2027). Base do pivô estratégico (learning-records/0003).
- [Constituição Federal de 1988 — Planalto](https://www.planalto.gov.br/ccivil_03/constituicao/constituicao.htm)
  Fonte primária para art. 1º, 5º, 21, 22. Use para: fundamento constitucional da proteção de dados.
- [Emenda Constitucional nº 115/2022 — Planalto](https://www.planalto.gov.br/ccivil_03/constituicao/emendas/emc/emc115.htm)
  Texto oficial que insere o direito à proteção de dados na CF (art. 5º LXXIX, 21 XXVI, 22 XXX). Use para: linha do tempo constitucional, cláusula pétrea.
- [Medida Cautelar na ADI 6.387 — inteiro teor, STF (PDF)](https://www.stf.jus.br/arquivo/cms/noticianoticiastf/anexo/adi6387mc.pdf)
  Decisão que reconheceu a autodeterminação informativa como direito fundamental autônomo, antes da EC 115/2022. Use para: fundamento constitucional, jurisprudência do STF.
- [Documentos e publicações — ANPD](https://www.gov.br/anpd/pt-br/documentos-e-publicacoes)
  Portal oficial com resoluções (1/2021, 2/2022, 4/2023, 15/2024, 18/2024, 19/2024), guias (legítimo interesse, poder público, segurança, cookies) e o Enunciado 1/2023. Use para: qualquer ato infralegal da ANPD.
- [Prova ANPD PSS Substitutos 2025 (IADES) — Anexo IV](https://www.gov.br/anpd)
  Conteúdo programático espelho para o bloco A. Use para: calibrar profundidade exigida em LGPD/ANPD (buscar edital específico quando publicado).

### Ciência de Dados
- [Book: _Estatística Básica_ — Bussab & Morettin](—)
  Referência principal de Probabilidade e Estatística indicada no plano de estudos. Use para: probabilidade, variáveis aleatórias, distribuições, estatística descritiva e inferência.
- [Book: _An Introduction to Statistical Learning_ (ISLR) — James, Witten, Hastie, Tibshirani](https://www.statlearning.com)
  Texto gratuito e padrão-ouro para Aprendizado de Máquina aplicado. Use para: classificação, regressão, avaliação de modelos, redução de dimensionalidade.
- [SQLBolt — tutorial interativo de SQL](https://sqlbolt.com)
  Prática interativa gratuita de SQL. Use para: álgebra relacional, sintaxe SQL padrão ANSI, joins, agregações.
- [Prova ANATEL 2024 — Cebraspe, Cargo 2 (Ciência de Dados)](https://www.cebraspe.org.br/concursos/anatel_24)
  Prova-espelho oficial: mesmo edital de conteúdo técnico. Use para: calibrar nível de dificuldade e estilo certo/errado do Cebraspe.
- [QConcursos](https://www.qconcursos.com)
  Banco de questões filtrável por banca/matéria. Use para: prática massiva de questões (filtrar estatística, TI, Cebraspe).
- [Probability axioms — Wikipedia](https://en.wikipedia.org/wiki/Probability_axioms)
  Definição formal dos axiomas de Kolmogorov. Use para: fundamentar a Lição 1 de probabilidade.
- [Addition rule for probability — Khan Academy](https://www.khanacademy.org/math/statistics-probability/probability-library/addition-rule-lib/a/addition-rule-for-probability-basic)
  Artigo curto sobre a regra da união (inclusão-exclusão). Use para: reforço da união geral de eventos.
- [Conditional probability and independence — Khan Academy](https://www.khanacademy.org/math/ap-statistics/probability-ap/stats-conditional-probability/a/check-independence-conditional-probability)
  Artigo sobre como checar independência a partir de probabilidades. Use para: probabilidade condicional e independência.
- [The medical test paradox — 3Blue1Brown (YouTube)](https://www.youtube.com/watch?v=lG4VkPoG3ko)
  Explicação visual de alta qualidade da falácia da taxa base com Teorema de Bayes. Use para: reforço de Bayes e base rate fallacy.
- [Naive Bayes — scikit-learn user guide](https://scikit-learn.org/stable/modules/naive_bayes.html)
  Documentação oficial da implementação de referência em Python. Use para: Naive Bayes, log-probabilidades, variantes (Gaussian/Multinomial/Bernoulli).
- [Joins Between Tables — documentação oficial do PostgreSQL](https://www.postgresql.org/docs/current/tutorial-join.html)
  Tutorial oficial de JOIN. Use para: SQL básico, tipos de join.
- [What is a Data Lake? — AWS](https://aws.amazon.com/what-is/data-lake/)
  Definição oficial de data lake e comparação com data warehouse por um provedor de nuvem. Use para: fundamentos de Big Data, armazenamento.

## Wisdom (Communities)
- Nenhuma definida ainda — perguntar a Henricco se ele quer comunidade (ex.: grupo de estudos para concursos de TI/dados, subreddit de concursos públicos) antes de sugerir uma.

## Gaps
- Falta uma fonte de referência específica para modelagem dimensional (fatos/dimensões) e governança de dados dentro de BI/Analytics — coberto até agora só o SQL básico.
- Falta fonte específica para pipeline de dados, MOLAP/ROLAP/HOLAP dentro do bloco Big Data — coberto até agora só fluxo geral e data lake x warehouse.
- planalto.gov.br recusou fetch direto (ECONNRESET) durante a pesquisa das Lições 1–2 do Bloco A — o texto de CF, EC 115/2022 e LGPD arts. 1º–4º foi reconstruído via busca (resumos/citações de fontes secundárias como Estratégia Concursos, Jusbrasil, DireitoHD) cruzados com conhecimento prévio, não por leitura direta do documento oficial. Antes de confiar 100% nesses artigos em uma prova, vale reabrir o Planalto manualmente (navegador) e conferir palavra por palavra.
