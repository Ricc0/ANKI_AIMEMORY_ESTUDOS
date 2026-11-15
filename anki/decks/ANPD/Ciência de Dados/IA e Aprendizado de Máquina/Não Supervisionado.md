# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::Não Supervisionado

18 card(s).

## 1. Quais as limitações do <b>k-means</b>?

• É preciso <b>definir k</b> antes (cotovelo, silhueta).<br>• Assume grupos <b>esféricos</b> e de tamanho parecido.<br>• É sensível a <b>outliers</b>, à <b>escala</b> das variáveis e à <b>inicialização</b>.<br>• Todo ponto cai em algum grupo, sem noção de ruído.

Tags: `agrupamento` `anpd` `ia`

## 2. Como funciona o <b>DBSCAN</b> e qual sua vantagem?

Agrupa por <b>densidade</b> (parâmetros eps e minPts): regiões densas viram grupos e pontos isolados viram <b>ruído</b>.<br><br>Vantagens: <b>não precisa definir k</b> e acha grupos de <b>qualquer formato</b>. Fraqueza: grupos com densidades muito diferentes.

Tags: `agrupamento` `anpd` `ia`

## 3. O que é o agrupamento <b>hierárquico</b>?

Junta (aglomerativo) ou divide (divisivo) grupos passo a passo e gera uma árvore chamada <b>dendrograma</b>.<br><br>Para escolher o número de grupos, <b>corta-se</b> o dendrograma numa altura. Não exige k antes.

Tags: `agrupamento` `anpd` `ia`

## 4. O que faz o <b>PCA</b>?

Redução de dimensionalidade <b>linear</b>: cria <b>componentes principais</b> não correlacionados (ortogonais), ordenados pela <b>variância</b> que preservam.<br><br>Exige <b>padronizar</b> as variáveis antes. Custo: os componentes são difíceis de interpretar.

Tags: `anpd` `ia` `reducao-dimensionalidade`

## 5. Para que servem t-SNE e UMAP, e qual o cuidado?

São técnicas <b>não lineares</b>, usadas principalmente para <b>visualizar</b> dados em 2D/3D.<br><br>Cuidado: as distâncias entre grupos e o tamanho dos grupos no gráfico <b>não têm significado confiável</b>. Não substituem o PCA como pré-processamento geral.

Tags: `anpd` `ia` `pegadinha` `reducao-dimensionalidade`

## 6. Seleção × extração de variáveis

<b>Seleção</b>: escolhe um subconjunto das colunas <b>que já existem</b> (ex.: Lasso). Mantém a interpretação.<br><b>Extração</b>: cria <b>variáveis novas</b> combinando as originais (ex.: PCA).

Tags: `anpd` `ia` `pegadinha` `reducao-dimensionalidade`

## 7. O que é a <b>maldição da dimensionalidade</b>?

Com muitas variáveis, os dados ficam <b>esparsos</b>, as <b>distâncias perdem o significado</b> (tudo fica longe de tudo) e é preciso <b>exponencialmente mais dados</b>. Prejudica principalmente k-NN e agrupamento.

Tags: `anpd` `ia` `reducao-dimensionalidade`

## 8. Quais as técnicas de detecção de anomalias?

• <b>z-score</b>: |z| > 3. <b>IQR</b>: fora de [Q1 − 1,5·IQR ; Q3 + 1,5·IQR].<br>• <b>Isolation Forest</b>: anomalias são isoladas com <b>poucos cortes</b> aleatórios.<br>• <b>One-Class SVM</b>: aprende a fronteira do que é normal.<br>• <b>Autoencoder</b>: anomalia = <b>erro de reconstrução</b> alto.

Tags: `anomalias` `anpd` `ia`

## 9. Por que a detecção de anomalias costuma ser não supervisionada, e anomalia é sinônimo de problema?

Porque há <b>poucos ou nenhum</b> exemplo rotulado do problema (defeito, falha, vazamento).<br><br><b>Anomalia ≠ problema</b>: uma conta de luz 8 vezes acima da média pode ser só um home office com ar-condicionado. O ponto marcado é um <b>indício</b> para alguém verificar.

Tags: `anomalias` `anpd` `ia` `pegadinha`

## 10. Como o k-means funciona, passo a passo?

Você escolhe <b>k</b> (nº de grupos). Depois repete até nada mudar:<br>1. <b>Atribuir</b>: cada ponto vai para o centro mais próximo.<br>2. <b>Atualizar</b>: cada centro vira a média dos pontos do grupo.<br><br>Ex.: idades 18, 20, 22, 60, 62, 64 com k = 2 → centros finais 20 e 62.

Tags: `agrupamento` `anpd,ia`

## 11. DBSCAN: o que são ε, minPts, núcleo, borda e ruído?

<b>DBSCAN</b> (Density-Based Spatial Clustering of Applications with Noise · agrupamento espacial baseado em densidade, com ruído).<br><b>ε</b> = raio da vizinhança; <b>minPts</b> = mínimo de vizinhos no raio.<br><b>Núcleo</b>: tem ≥ minPts vizinhos no raio.<br><b>Borda</b>: está no raio de um núcleo, mas não tem vizinhos suficientes.<br><b>Ruído</b>: isolado, longe de qualquer núcleo.

Tags: `agrupamento` `anpd,ia` `pegadinha`

## 12. Agrupamento hierárquico: como se lê o dendrograma e o corte?

Começa com cada ponto sozinho e junta os 2 grupos mais próximos a cada passo. A <b>altura</b> da junção é a distância.<br><br>Ex.: celulares de R$ 1, 2, 6, 7 e 15 mil → junções a 1, 1, 4 e 8. <b>Corte a 3</b> → 3 grupos {1,2} {6,7} {15}; <b>corte a 6</b> → 2 grupos. Corte mais alto = menos grupos.

Tags: `agrupamento` `anpd,ia`

## 13. O que é uma "dimensão" nos dados?

Cada <b>coluna</b> (característica) é uma dimensão, ou seja, um eixo. Um apartamento descrito por 50 colunas é um ponto num espaço de 50 dimensões.<br><br><b>Reduzir a dimensionalidade</b> = transformar muitas colunas em poucas, perdendo o mínimo de informação.

Tags: `anpd,ia` `reducao-dimensionalidade`

## 14. Por que reduzir a dimensionalidade? (4 motivos)

1. <b>Visualizar</b> (ninguém vê 50 eixos).<br>2. <b>Colunas redundantes</b> (área em m² e em pés²; altura e peso).<br>3. <b>Maldição da dimensionalidade</b>: 10 faixas por eixo → 10 colunas = 10 bilhões de caixinhas; os dados ficam ralos e as distâncias perdem o sentido.<br>4. <b>Custo e ruído</b>: menos colunas, menos sobreajuste.

Tags: `anpd,ia` `reducao-dimensionalidade`

## 15. PCA em linguagem simples (exemplo altura e peso)

<b>PCA</b> (Principal Component Analysis · Análise de Componentes Principais, ACP) acha a <b>direção em que os dados mais variam</b> e a usa como coluna nova.<br><br>Altura e peso andam juntos → <b>PC1 = "tamanho do corpo"</b> (explica ~90%); PC2 = "mais magro ou mais encorpado" (~10%). Fica-se só com a PC1: de 2 colunas para 1.

Tags: `anpd,ia` `pca` `reducao-dimensionalidade`

## 16. Quais as 4 regras do PCA que caem em prova?

1. <b>Padronizar antes</b> (peso em gramas dominaria a altura em metros).<br>2. Componentes <b>não correlacionadas</b> (perpendiculares) e <b>ordenadas pela variância</b>.<br>3. É <b>linear</b>.<br>4. É <b>não supervisionado</b>: não usa a resposta y.

Tags: `anpd,ia` `pca` `pegadinha` `reducao-dimensionalidade`

## 17. O que significam t-SNE e UMAP e para que servem?

<b>t-SNE</b>: t-distributed Stochastic Neighbor Embedding (incorporação estocástica de vizinhos com distribuição t).<br><b>UMAP</b>: Uniform Manifold Approximation and Projection (aproximação e projeção uniforme de variedades).<br><br>Ambos são <b>não lineares</b> e servem para <b>desenhar dados de muitas dimensões em 2D</b>, mantendo vizinhos juntos (ex.: imagens de dígitos com 784 pixels). O UMAP é mais rápido e projeta pontos novos.

Tags: `anpd,ia` `reducao-dimensionalidade` `tsne`

## 18. z-score × IQR: exemplo com conta de luz

<b>z-score</b> = (valor − média) / desvio. Média 200 kWh, desvio 50, casa com 450 → z = 5 (&gt; 3 → anômala).<br><b>IQR</b> (Interquartile Range · amplitude interquartil) = Q3 − Q1. Q1 = 150, Q3 = 250 → IQR = 100; limite superior = 250 + 1,5 × 100 = 400 → 450 é atípico.<br><br>O IQR é mais <b>robusto</b>: os extremos quase não mexem nos quartis.

Tags: `anomalias` `anpd,ia`

