# Mission: aprovação no concurso da ANPD (Especialista em Regulação de Proteção de Dados)

## Why
Henricco quer passar no **primeiro concurso da ANPD** para Especialista em
Regulação de Proteção de Dados (Lei nº 15.352/2026). O concurso é de
**cargo único, nível superior em qualquer área, sem especialidade
anunciada** (Portaria MGI nº 5.092/2026). O edital deve sair entre
set/2026 (otimista) e dez/2026 (mais provável); pela Nota Técnica da própria
agência, a **prova objetiva/discursiva está prevista para ~27/01/2027** e a
prova de títulos para 19/03/2027.

## Pivô estratégico (2026-08-02)
Até então o workspace tratava o cargo como se fosse a especialidade
"Ciência de Dados" (espelhada no edital ANATEL 2024), com peso alto em
Probabilidade/Estatística, Machine Learning, BI e Big Data (Blocos B–E).
O **Guia DOM ANPD 2026** (`2026_07_26_ANPD_guia_dom.pdf`) mostrou que isso
é uma aposta arriscada: **a ANPD não anunciou especialidade**, e o guia
alerta explicitamente para *não* aprofundar em TI antes de o edital
confirmar se haverá especialidade de dados. Henricco decidiu, então,
**congelar os Blocos B–E** (sem apagar) e concentrar no núcleo
jurídico-regulatório — que é o que pesa com certeza. Ver
`learning-records/0003`.

Ordem de peso apostada pelo guia (usar como ordem de estudo, não como
percentual de prova):
1. **LGPD + normas da ANPD** — peso MÁXIMO (a lei que a agência aplica)
2. Regulação e processo administrativo sancionador — ALTO
3. ECA Digital, plataformas e IA — ALTO (competência nova, 2025–2026)
4. Segurança da informação e privacidade — MÉDIO A ALTO
5. Direito administrativo e constitucional — MÉDIO
6. Comparado e transferência internacional (GDPR) — MÉDIO
7. Economia, estatística e avaliação (AIR/evidência) — MÉDIO
8. Português e Inglês — BASE (presentes em todo edital de reguladora)

## Success looks like
- Citar de memória e aplicar os dispositivos-chave da LGPD, com atenção
  especial aos de maior peso do trabalho da agência: direitos do titular e
  decisão automatizada (arts. 17–22), sanções e dosimetria (arts. 52–54 +
  Res. 4/2023), a própria ANPD (arts. 55-A a 55-L), transferência
  internacional (arts. 33–36 + Res. 19/2024)
- Dominar conceitos, princípios e bases legais (arts. 5º–11) sem cair nas
  pegadinhas clássicas (consentimento não é base superior; anonimizado
  reversível volta a ser dado pessoal; pseudonimização ≠ anonimização;
  sigilo de comunicação ≠ dado armazenado)
- Conhecer as 7 resoluções de efeito externo da ANPD (1/2021, 2/2022,
  4/2023, 15/2024, 18/2024, 19/2024, 32/2026) — números, prazos e
  competências
- Entender o marco institucional (Lei 15.352/2026, Lei das Agências
  13.848/2019, AIR) e o ECA Digital (Lei 15.211/2025 + Decreto 12.880/2026)
- Responder itens certo/errado no padrão Cebraspe/IADES com segurança
- Português no loop: interpretar e reescrever texto legal sem trocar o
  sentido (o material da prova É texto jurídico e técnico)

## Constraints
- Ponto de partida: sem formação jurídica prévia — as lições ensinam
  vocabulário jurídico básico junto com o conteúdo; e sem base quantitativa
  consolidada (mas isso importa menos agora que B–E estão congelados)
- **Rigor máximo no núcleo jurídico**: citar lei seca e conferir em fonte
  primária. A LGPD já está no workspace em edição oficial
  (`Lei_geral_protecao_dados_pessoais_1ed.pdf`) — usar como fonte primária
  para o texto dos artigos. Planalto recusa fetch direto (ver RESOURCES),
  então a edição oficial local é a referência de verificação.
- Ordem pedagógica ≠ ordem de peso: para um iniciante, ensinar conceitos e
  bases legais (arts. 5º–11) ANTES de direitos/sanções, mesmo que estes
  pesem mais — não dá para entender os direitos sem o vocabulário. Priorizar
  profundidade e antecedência nos temas de peso 1 do guia.
- Padrão de qualidade das lições: ver `NOTES.md` (diagramas SVG, ≥2 exemplos
  resolvidos por conceito novo, citações inline, e o box "Português na
  prática")

## Escopo ativo
- Bloco A: LGPD (lei seca) + atos da ANPD — **foco principal**
- Fronts subsequentes: ECA Digital/IA, tronco regulatório (regulação +
  Lei 13.848/2019 + Lei 9.784/1999 + AIR), Direito administrativo e
  constitucional aplicados
- Transversal: Português (no loop de cada lição) + Inglês instrumental

## Congelado (não apagar — retomar se o edital confirmar especialidade)
- Bloco B: Probabilidade e Estatística
- Bloco C: Aprendizado de Máquina + IA
- Bloco D: BI/Analytics (SQL, DW, governança)
- Bloco E: Big Data
