# CGU::IA e Aprendizado de Máquina::Não Supervisionado

9 card(s).

## 1. Quais as limitações do <b>k-means</b>?

• É preciso <b>definir k</b> antes (cotovelo, silhueta).<br>• Assume grupos <b>esféricos</b> e de tamanho parecido.<br>• É sensível a <b>outliers</b>, à <b>escala</b> das variáveis e à <b>inicialização</b>.<br>• Todo ponto cai em algum grupo, sem noção de ruído.

Tags: `agrupamento` `cgu` `ia`

## 2. Como funciona o <b>DBSCAN</b> e qual sua vantagem?

Agrupa por <b>densidade</b> (parâmetros eps e minPts): regiões densas viram grupos e pontos isolados viram <b>ruído</b>.<br><br>Vantagens: <b>não precisa definir k</b> e acha grupos de <b>qualquer formato</b>. Fraqueza: grupos com densidades muito diferentes.

Tags: `agrupamento` `cgu` `ia`

## 3. O que é o agrupamento <b>hierárquico</b>?

Junta (aglomerativo) ou divide (divisivo) grupos passo a passo e gera uma árvore chamada <b>dendrograma</b>.<br><br>Para escolher o número de grupos, <b>corta-se</b> o dendrograma numa altura. Não exige k antes.

Tags: `agrupamento` `cgu` `ia`

## 4. O que faz o <b>PCA</b>?

Redução de dimensionalidade <b>linear</b>: cria <b>componentes principais</b> não correlacionados (ortogonais), ordenados pela <b>variância</b> que preservam.<br><br>Exige <b>padronizar</b> as variáveis antes. Custo: os componentes são difíceis de interpretar.

Tags: `cgu` `ia` `reducao-dimensionalidade`

## 5. Para que servem t-SNE e UMAP, e qual o cuidado?

São técnicas <b>não lineares</b>, usadas principalmente para <b>visualizar</b> dados em 2D/3D.<br><br>Cuidado: as distâncias entre grupos e o tamanho dos grupos no gráfico <b>não têm significado confiável</b>. Não substituem o PCA como pré-processamento geral.

Tags: `cgu` `ia` `pegadinha` `reducao-dimensionalidade`

## 6. Seleção × extração de variáveis

<b>Seleção</b>: escolhe um subconjunto das colunas <b>que já existem</b> (ex.: Lasso). Mantém a interpretação.<br><b>Extração</b>: cria <b>variáveis novas</b> combinando as originais (ex.: PCA).

Tags: `cgu` `ia` `pegadinha` `reducao-dimensionalidade`

## 7. O que é a <b>maldição da dimensionalidade</b>?

Com muitas variáveis, os dados ficam <b>esparsos</b>, as <b>distâncias perdem o significado</b> (tudo fica longe de tudo) e é preciso <b>exponencialmente mais dados</b>. Prejudica principalmente k-NN e agrupamento.

Tags: `cgu` `ia` `reducao-dimensionalidade`

## 8. Quais as técnicas de detecção de anomalias?

• <b>z-score</b>: |z| > 3. <b>IQR</b>: fora de [Q1 − 1,5·IQR ; Q3 + 1,5·IQR].<br>• <b>Isolation Forest</b>: anomalias são isoladas com <b>poucos cortes</b> aleatórios.<br>• <b>One-Class SVM</b>: aprende a fronteira do que é normal.<br>• <b>Autoencoder</b>: anomalia = <b>erro de reconstrução</b> alto.

Tags: `anomalias` `cgu` `ia`

## 9. Por que a detecção de anomalias costuma ser não supervisionada, e anomalia é igual a fraude?

Porque há <b>poucos ou nenhum</b> exemplo rotulado de fraude.<br><br><b>Anomalia ≠ fraude</b>: o ponto marcado é só um <b>indício</b> para alguém investigar.

Tags: `anomalias` `cgu` `ia` `pegadinha`

