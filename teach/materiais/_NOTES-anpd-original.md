# Notes

- RESOURCES.md não é uma lista fechada. Henricco prefere que eu use qualquer
  fonte boa para ensinar (livros, artigos, o que for), não apenas o que já
  está listado — desde que o conteúdo seja aprendido. Ainda assim, vale
  registrar fontes novas de qualidade em RESOURCES.md quando usadas.
- Lições de probabilidade precisam de exemplo numérico resolvido para cada
  regra/fórmula nova — só a definição simbólica não é suficiente para ele
  (ver learning-records/0001).
- As 5 primeiras lições foram consideradas "pobres, sem gráficos e sem
  exemplos" (2026-08-02). Padrão daqui pra frente: toda lição deve ter
  pelo menos um diagrama SVG (figure.diagram, componente em assets/style.css)
  e pelo menos dois exemplos numéricos resolvidos por conceito novo, além
  de citações inline (sup.cite) para fontes externas de qualidade — não
  só um link solto no rodapé. Todas as 5 lições existentes já foram
  atualizadas para esse padrão.
- **Português no loop (ago/2026):** Henricco pediu Português junto às
  lições. Padrão adotado: cada lição do núcleo jurídico termina com um box
  `.portugues` ("Português na prática") que usa o PRÓPRIO texto legal da
  lição como matéria-prima — interpretação, reescrita mantendo o sentido,
  ponto de gramática (ex.: "salvo" = exceção; futuro do subjuntivo "puder").
  É interleaving e treina no material real da prova (texto jurídico). Sempre
  com um mini certo/errado de feedback imediato dentro do box.
- **Componente de quiz (quiz.js):** o feedback é escolhido por `data-for`
  (a explicação escrita para a opção clicada) e colorido por acerto/erro
  dinamicamente. Ao criar um quiz, escreva um `.feedback ... data-for="certo"`
  e um `data-for="errado"`, cada um explicando aquela escolha; NÃO precisa
  casar a classe estática correct/incorrect com a resposta certa (isso
  causava um bug antigo, já corrigido no componente em 2026-08-02).
- **Etiquetas de peso:** usar `.tag max|alta|media` para sinalizar o peso do
  tema no edital (aposta do guia DOM), ajudando a priorizar a revisão.
- **Cobertura COMPLETA da LGPD, em lotes (ago/2026):** Henricco quer ver
  TODOS os artigos da LGPD (não só os prioritários do guia), ensinados em
  lotes (~4–6 artigos por lição, agrupados por capítulo/tema). A ORDEM é
  pedagógica (cada lote prepara o próximo), mas nada da lei fica de fora —
  o índice traz o "Mapa completo da LGPD" (Lotes 1–15, arts. 1º–65). As
  etiquetas de peso no índice indicam a prioridade na RETA FINAL de revisão,
  não a ordem de ensino. Manter esse mapa atualizado conforme as lições saem.
