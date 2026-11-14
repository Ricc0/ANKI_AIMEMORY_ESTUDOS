# Plano de Estudos — ANPD · Especialista em Regulação de Proteção de Dados (Ciência de Dados)

> Elaborado em 10/07/2026, cruzando: (1) seu mapeamento jul–nov, (2) o conteúdo programático de Ciências de Dados do edital ANATEL 2024 (Cebraspe) e (3) o conteúdo programático do PSS ANPD 2025 (IADES) — os dois melhores preditores do futuro edital.

---

## 1 · Foto do concurso (o que se sabe hoje)

| Item | Situação |
|---|---|
| Autorização | Publicada (Portaria MGI nº 5.092/2026) — **50 vagas** |
| Cargo | Especialista em Regulação de Proteção de Dados (carreira criada pela **Lei nº 15.352/2026**) |
| Requisito | Nível superior em **qualquer área** (a lei não restringe; o edital pode criar especialidades, como fez a ANATEL) |
| Subsídio | **R$ 17.726,42** inicial (Classe A, Padrão I) → R$ 29.119,71 no topo |
| Edital | Até **dezembro/2026** (prazo de 6 meses da portaria) |
| Prova | No mínimo 2 meses após o edital → **fevereiro–março/2027** é o cenário provável |
| Banca | **Não definida.** Atenção: a ANATEL usou **Cebraspe** (certo/errado), mas o PSS da própria ANPD usou **IADES** (múltipla escolha). Treine prioritariamente no estilo Cebraspe, mas não ignore questões de múltipla escolha do IADES |

**Consequência prática:** até o edital sair, o plano é probabilístico. O núcleo comum (LGPD + atos da ANPD + regulação) e o delta quantitativo (estatística/ML) são apostas seguras em qualquer cenário. O que muda com o edital é o peso relativo e as matérias acessórias.

---

## 2 · Diagnóstico do seu mapeamento

### O que está bem resolvido
- **Julho (base LGPD)** está excelente: fundamento constitucional → conceitos → princípios → bases legais → sensíveis/crianças é a ordem certa, e as "pegadinhas" anotadas são as que caem mesmo.
- Começar **Probabilidade agora** está correto: é o conteúdo que não se comprime.
- A lógica **núcleo comum + delta da especialidade** é a arquitetura certa.

### Lacunas no delta técnico (comparado ao edital ANATEL C. de Dados, que está no seu PDF)
O edital real da ANATEL tem **4 blocos** de conhecimentos específicos, e seu plano cobre bem só 2:

1. **Probabilidade e Estatística** ✅ coberto (jul–ago) — mas o edital lista explicitamente **técnicas de amostragem e os 5 tipos de viés** (sampling, selection, attrition, reporting, measurement bias). Isso não está no seu plano e é presa fácil de questão.
2. **Aprendizado de Máquina** ⚠️ parcialmente coberto — o edital detalha: Naive Bayes, regressão logística, árvores/random forest, SVM, KNN, redes neurais, **avaliação de modelos** (matriz de confusão, precisão/recall/F1, ROC-AUC), clustering, redução de dimensionalidade (PCA), **NLP** (normalização, representação de texto, similaridade) e **deep learning**. Seu plano diz só "supervisionado/não supervisionado; viés; avaliação".
3. **Business Intelligence e Analytics** ❌ ausente — banco de dados (esquema, índices, transação, triggers), **álgebra relacional e SQL ANSI**, relacional × não relacional, **Data Warehouse** (fatos, dimensões, modelagem dimensional), qualidade de dados, visualização/dashboards, noções de geoprocessamento, **governança de dados**.
4. **Big Data** ❌ ausente — ingestão/processamento/disponibilização/armazenamento, pipeline, processamento distribuído, data lake, data mart, staging, **ETL × ELT**, **MOLAP/ROLAP/HOLAP**, arquiteturas de big data, computação em nuvem.

> **Nota importante:** o edital ANATEL **não cobrou Python nem R**. Cobrou SQL (padrão ANSI) e álgebra relacional. Reordene a prioridade: **SQL ≫ Python**. Python fica como ferramenta de apoio para praticar estatística/ML, não como matéria de prova (até o edital dizer o contrário).

### Lacunas no núcleo comum (comparado ao PSS ANPD 2025, que está no seu PDF)
O PSS da própria ANPD cobrou itens que não aparecem no seu mapa:

- **Lei nº 13.460/2017** (direitos dos usuários de serviços públicos) — apareceu em TODOS os perfis do PSS.
- **Políticas públicas**: ciclo (formulação → implementação → monitoramento → avaliação), indicadores de resultado/impacto/eficiência, uso de evidências.
- **Metodologia científica**: pesquisa quali/quanti, elaboração de pareceres e relatórios técnicos.
- **Gestão de riscos** como matéria autônoma (metodologias de mapeamento e mensuração) — você tem só a ISO na semana 4 de agosto.
- **Interfaces da LGPD**: Marco Civil da Internet (Lei 12.965/2014), **LAI (Lei 12.527/2011) × LGPD**, **CDC (Lei 8.078/1990) × LGPD**.
- **Agentes de tratamento de pequeno porte** (Resolução CD/ANPD nº 2/2022).
- **Processo fiscalizatório e sancionador** (Resolução CD/ANPD nº 1/2021 + a dosimetria da Res. 4/2023 que você já tem).
- **IA**: o PSS cobrou "conceitos principais, modelos de IA, IA e proteção de dados" — seu outubro cobre, mantenha.
- **Redação oficial** (Manual de Redação da PR) — o PSS cobrou junto com Português.

### Matérias básicas subestimadas
- **Língua Portuguesa**: ausente do seu plano e é a matéria de maior peso em qualquer P1. Precisa ser transversal desde já (como você fez com inglês).
- **Direito Constitucional (noções)**: direitos e garantias fundamentais além do art. 5º ligado a dados — a ANATEL cobrou como bloco próprio.
- **Direito Administrativo**: você deixou para novembro. É matéria grande (atos, poderes, 8.112, 9.784, licitações 14.133, improbidade, LAI). Novembro sozinho não dá — antecipe o início leve para setembro.
- **Prova discursiva**: a ANATEL teve discursiva com peso alto. Treinar redação técnica 1×/quinzena a partir de outubro.

---

## 3 · Blocos de estudo consolidados

| # | Bloco | Fonte preditora | Peso estimado | Quando |
|---|---|---|---|---|
| A | LGPD + atos da ANPD (lei seca profunda + guias + resoluções) | PSS ANPD (itens 8.1–8.20) | ★★★★★ | jul–out + revisão contínua |
| B | Probabilidade e Estatística (nível bacharelado) | ANATEL C. Dados | ★★★★★ | jul–set |
| C | Aprendizado de Máquina + IA | ANATEL + PSS (item 9) | ★★★★ | set–out |
| D | BI/Analytics: SQL, bancos de dados, DW, visualização, governança | ANATEL C. Dados | ★★★★ | out |
| E | Big Data e engenharia de dados (ETL/ELT, data lake, OLAP, nuvem) | ANATEL C. Dados | ★★★ | out–nov |
| F | Teoria da Regulação + Lei 13.848/2019 + Lei 15.352/2026 | PSS + ANATEL | ★★★ | set |
| G | Segurança da informação (ISO 27001/27002/29151, criptografia, incidentes) + gestão de riscos | PSS | ★★★ | ago |
| H | Direito Administrativo + Legislação (8.112, 9.784, 14.133, LAI, 13.460) | PSS + ANATEL | ★★★ | set (leve) → nov (foco) |
| I | Língua Portuguesa + redação oficial | Todas | ★★★★ | transversal (3h/semana desde já) |
| J | Língua Inglesa (instrumental) | ANATEL | ★★ | transversal (leitura diária leve) |
| K | Direito Constitucional (noções) + políticas públicas + metodologia científica | ANATEL + PSS | ★★ | nov |
| L | Anonimização técnica (k-anonimato, privacidade diferencial) | LGPD art. 12 + diferencial | ★★ | out (mantido do seu plano) |

---

## 4 · Calendário julho/2026 → prova

### JULHO — como você planejou, com 2 adições
- Mantém as 4 semanas de base LGPD (fundamento constitucional, conceitos, princípios, bases legais, sensíveis e crianças) + probabilidade fundamentos + estatística descritiva.
- **Adicionar:** Português transversal (3h/semana — comece por interpretação e coesão, que a Cebraspe adora) e leitura instrumental de inglês (15 min/dia — textos de tecnologia/privacidade: IAPP, EDPB).

### AGOSTO — direitos, sanções, segurança (detalhamento das suas linhas "a detalhar")
| Semana | Conteúdo | Fontes |
|---|---|---|
| 1 | **Direitos do titular** (arts. 17–22): rol dos direitos, prazos, revisão de decisões automatizadas (art. 20), portabilidade. Pegadinha: quais direitos exigem requisição do titular vs. atuação de ofício | LGPD + Regulamento de fiscalização |
| 2 | **Agentes de tratamento e RIPD** (arts. 37–41): registros de operações, RIPD (quando é exigível — atenção: a LGPD não define hipóteses, a ANPD sim), encarregado (**Res. CD/ANPD 18/2024**), **pequeno porte (Res. 2/2022)** | LGPD + resoluções |
| 3 | **Responsabilidade e sanções** (arts. 42–45 e 52–54): responsabilidade civil (controvérsia objetiva × subjetiva), excludentes, sanções, **dosimetria (Res. 4/2023)** — decore os critérios do art. 52 §1º e as faixas de multa | LGPD + Res. 4/2023 |
| 4 | **Segurança e boas práticas** (arts. 46–51) + **ISO 27001/27002/29151** (visão de gestão: SGSI, controles, PII) + criptografia básica + **gestão de riscos** (mapeamento, mensuração, tratamento de riscos) | LGPD + normas ISO (resumos) |
| Fech. | Inferência estatística correu em paralelo o mês todo (estimação pontual e intervalar, propriedades de estimadores, testes de hipóteses, ANOVA). Simulado do mês | — |

### SETEMBRO — a agência e a regulação (mantido, com ajustes)
| Semana | Conteúdo |
|---|---|
| 1 | **Marco institucional**: Lei 15.352/2026 (carreira), estrutura e competências da ANPD (arts. 55-A a 58-B da LGPD), Lei 13.848/2019 (Lei das Agências), Regimento Interno da ANPD |
| 2 | **Incidentes de segurança (Res. 15/2024)**: prazos de comunicação, risco relevante — decore os critérios. + **fiscalização (Res. 1/2021)**: processo fiscalizatório e sancionador |
| 3 | **Transferência internacional (Res. 19/2024)**: adequação, cláusulas-padrão, normas corporativas globais + panorama GDPR (visão comparada: bases legais, DPO, one-stop-shop) |
| 4 | **Teoria da Regulação**: falhas de mercado, assimetria de informação, teoria da captura, agente-principal, regulação responsiva, AIR/ARR, poder normativo das agências |
| Paralelo | **Amostragem e vieses** (item explícito do edital ANATEL!) + início de ML: classificação (Naive Bayes, logística, árvores, random forest, SVM, KNN) + **Direito Administrativo leve** (atos administrativos + princípios, 2h/semana) |

### OUTUBRO — fronteiras + o delta técnico pesado
| Semana | Conteúdo |
|---|---|
| 1 | **ECA Digital (Lei 15.211/2025)** + Enunciado 1/2023 revisitado + **Guia do Poder Público** (bases legais do poder público, art. 23–30 da LGPD, uso compartilhado) |
| 2 | **IA e proteção de dados**: conceitos (IA, ML, sistema de IA), modelos de IA, notas técnicas da ANPD sobre biometria e IA generativa + **redes neurais, deep learning, NLP** (fechando o bloco ML do edital ANATEL) |
| 3 | **SQL e bancos de dados**: álgebra relacional, SQL ANSI (SELECT, JOINs, GROUP BY, subqueries, window functions), transações/ACID, índices, triggers, relacional × NoSQL |
| 4 | **Data Warehouse e BI**: modelagem dimensional (star/snowflake, fatos e dimensões), qualidade de dados, dashboards, governança de dados + **anonimização técnica** (k-anonimato, l-diversidade, privacidade diferencial, pseudonimização técnica) |
| Fech. | **Avaliação de modelos de ML** (matriz de confusão, precisão/recall/F1, ROC-AUC, cross-validation, overfitting) + clustering (k-means, hierárquico) + PCA. Simulado do mês. **Iniciar discursiva: 1 redação técnica/quinzena** |

### NOVEMBRO — big data, direito administrativo e consolidação
| Semana | Conteúdo |
|---|---|
| 1 | **Big Data**: pipeline (ingestão → processamento → disponibilização → armazenamento), data lake × data mart × staging, ETL × ELT, MOLAP/ROLAP/HOLAP, processamento distribuído (noção de Hadoop/Spark), computação em nuvem (IaaS/PaaS/SaaS) |
| 2 | **Direito Administrativo foco**: Lei 8.112/1990 (regime disciplinar!), Lei 9.784/1999, poderes, organização administrativa |
| 3 | **Direito Administrativo II + acessórias**: Lei 14.133/2021 (visão geral), improbidade, **LAI × LGPD**, **Lei 13.460/2017**, **Marco Civil**, **CDC × LGPD** |
| 4 | **Direito Constitucional (noções)** + políticas públicas (ciclo, indicadores) + metodologia científica (quali/quanti, pareceres) |
| Fech. | Bateria pesada de questões certo/errado (Cebraspe: ANATEL 2024, ANPD-adjacentes, TCU/SERPRO/DATAPREV para o delta técnico). Simulado geral |

### DEZEMBRO — mês do edital
- **Semana 1–2:** revisão geral do núcleo A (LGPD + atos) com lei seca e flashcards. Estatística: revisão de distribuições especiais (Bernoulli, Binomial, Poisson, Geométrica, Hipergeométrica, Uniforme, Normal, Qui-quadrado, t, F) — decorar esperança e variância de cada uma.
- **Quando o edital sair:** parar tudo por 2 dias e fazer o **de-para edital × este plano**. Ajustar: matérias novas ganham janeiro; matérias que não caíram são cortadas sem dó. Confirmar banca e recalibrar estilo de questão.

### JANEIRO–FEVEREIRO/2027 — ciclo de revisão e questões
- 60% questões / 40% teoria. Meta: 80–120 questões/semana.
- 1 simulado completo/quinzena em condições reais (tempo cronometrado, caderno estilo da banca).
- Discursiva: 1/semana com correção (temas prováveis: IA e proteção de dados, incidentes, transferência internacional, ECA Digital, anonimização).
- Lei seca em áudio/leitura corrida: LGPD inteira 1×/semana.

### MARÇO/2027 — véspera
- Só revisão de erros, flashcards, resoluções da ANPD (números e prazos!) e simulados leves. Nada de conteúdo novo.

---

## 5 · Espelho do edital ANATEL — Ciências de Dados (checklist do delta técnico)

Use como checklist de cobertura. Fonte: [ED_1_2023_ANATEL_ABERTURA.pdf](ED_1_2023_ANATEL_ABERTURA.pdf), Cargo 2.

**Probabilidade e Estatística**
- [ ] Axiomas, probabilidade condicional, independência
- [ ] VA discretas e contínuas; função de probabilidade e densidade
- [ ] Esperança e momentos; distribuições especiais
- [ ] Distribuições condicionais; transformação de variáveis
- [ ] Leis dos grandes números; TCL; distribuições amostrais
- [ ] Estimação pontual (métodos, propriedades, suficiência)
- [ ] Estimação intervalar (ICs, intervalos de credibilidade — nota bayesiana!)
- [ ] Testes de hipóteses; ANOVA
- [ ] Amostragem: AAS, estratificada, sistemática, conglomerados; tamanho amostral
- [ ] Vieses: sampling, selection, attrition, reporting, measurement

**BI e Analytics**
- [ ] BD: esquema, campos, registros, índices, relacionamentos, transação, triggers, stored procedures
- [ ] Álgebra relacional e SQL ANSI
- [ ] Relacional × não relacional
- [ ] DW: conceitos, fatos e dimensões, modelagem dimensional
- [ ] Tratamento e qualidade de dados
- [ ] Visualização, dashboards, análise exploratória; noções de geoprocessamento
- [ ] Governança de dados

**Aprendizado de Máquina**
- [ ] Naive Bayes, regressão logística, árvores/random forest, SVM, KNN, redes neurais
- [ ] Avaliação de modelos de classificação
- [ ] Clustering; redução de dimensionalidade
- [ ] NLP: normalização textual, representação de texto, similaridade
- [ ] Deep learning

**Big Data**
- [ ] Fluxo: ingestão, processamento, disponibilização, armazenamento
- [ ] Pipeline; processamento distribuído
- [ ] Data lake, data mart, staging area
- [ ] ETL × ELT; MOLAP/ROLAP/HOLAP
- [ ] Arquiteturas de big data; noções de nuvem

---

## 6 · Fontes principais

**Legislação (Planalto):** CF/88, EC 115/2022, LGPD (Lei 13.709/2018), Lei 13.848/2019, Lei 15.352/2026, Lei 15.211/2025 (ECA Digital), Lei 12.965/2014 (Marco Civil), Lei 12.527/2011 (LAI), Lei 13.460/2017, Lei 9.784/1999, Lei 8.112/1990, Lei 14.133/2021.

**ANPD (gov.br/anpd → documentos e publicações):** Res. 1/2021 (fiscalização), Res. 2/2022 (pequeno porte), Res. 4/2023 (dosimetria), Res. 15/2024 (incidentes), Res. 18/2024 (encarregado), Res. 19/2024 (transferência internacional), Enunciado 1/2023 (crianças), Guia de Legítimo Interesse, Guia do Poder Público, Guia de Segurança para Pequeno Porte, notas técnicas sobre IA/biometria.

**Jurisprudência:** ADI 6387 (autodeterminação informativa), julgados recentes do STF/STJ sobre dados (acompanhar até 30 dias antes da prova — regra padrão Cebraspe).

**Questões:** ANATEL 2024 (Cebraspe, C. de Dados) — a prova-espelho; provas Cebraspe de TI/dados (TCU, SERPRO, DATAPREV, BACEN); PSS ANPD 2025 (IADES) quando disponível no QConcursos.

**Delta técnico (material de estudo):** Meu/Morettin & Bussab (estatística), ISLR — *Introduction to Statistical Learning* (ML, leitura seletiva), documentação SQL ANSI + exercícios (SQLBolt, Mode), resumos de Kimball para DW.

---

## 7 · Método

1. **Rotina semanal sugerida** (≈20h): 8h delta técnico · 6h núcleo LGPD/regulação · 3h Português + questões · 2h Direito Adm/Const (a partir de set) · 1h inglês diluído.
2. **Lei seca ativa:** LGPD é para saber de cor no nível de "qual artigo, qual prazo, qual exceção". Releitura integral semanal a partir de dezembro.
3. **Questões desde o 1º dia:** 20–30/semana já em julho (LGPD tem milhares no QConcursos), subindo para 80–120/semana em janeiro.
4. **Flashcards para números:** prazos das resoluções, faixas de multa, critérios de dosimetria, esperança/variância das distribuições.
5. **Certo/errado com disciplina:** na Cebraspe, errada anula certa — treine a decisão de "deixar em branco" desde novembro.
6. **Simulado mensal** (fechamento de cada mês, como você já previu) + quinzenal a partir de janeiro.
7. **Revisão espaçada:** D+1, D+7, D+30 para cada bloco concluído.
