# CGU::IA e Aprendizado de Máquina::Regressão e Classificação

8 card(s).

## 1. Qual a diferença entre <b>regressão</b> e <b>classificação</b>?

<b>Regressão</b>: prevê um <b>valor contínuo</b> (valor de contrato, prazo em dias).<br><b>Classificação</b>: prevê uma <b>categoria</b> (fraude/não fraude, tipo de irregularidade).

Tags: `cgu` `ia` `tarefas`

## 2. Regressão logística é um modelo de regressão?

<b>Não.</b> É um modelo de <b>classificação</b>. Ela calcula uma <b>probabilidade</b> (função sigmoide) e aplica um <b>limiar</b> (ex.: 0,5) para decidir a classe.

Tags: `cgu` `ia` `pegadinha` `tarefas`

## 3. MAE, MSE, RMSE e R²: o que mede cada um?

<b>MAE</b>: média do |erro|. Fica na mesma unidade e é mais robusto a outliers.<br><b>MSE</b>: média do erro². Pune muito os erros grandes, e a unidade fica ao quadrado.<br><b>RMSE</b>: raiz do MSE, de volta à unidade original.<br><b>R²</b>: fração da variância explicada. 1 = perfeito, 0 = igual a prever a média, negativo = pior que a média.

Tags: `cgu` `ia` `metricas`

## 4. Precisão × recall: o que cada um responde?

<b>Precisão</b> = VP / (VP + FP): <i>dos casos que o modelo apontou como fraude, quantos eram fraude?</i><br><b>Recall</b> (sensibilidade) = VP / (VP + FN): <i>de todas as fraudes reais, quantas o modelo pegou?</i>

Tags: `cgu` `ia` `metricas` `pegadinha`

## 5. Quando priorizar recall e quando priorizar precisão?

<b>Recall</b>: quando <b>deixar passar</b> um caso é caro (fraude não detectada, doença).<br><b>Precisão</b>: quando o <b>alarme falso</b> é caro (equipe de auditoria limitada, acusar inocente).<br><br>Subir um costuma baixar o outro (mexendo no limiar).

Tags: `cgu` `ia` `metricas`

## 6. O que é o <b>F1-score</b>?

É a <b>média harmônica</b> entre precisão e recall: 2·P·R / (P + R).<br><br>Ele só fica alto se as <b>duas</b> métricas forem altas e pune quando uma delas é baixa.

Tags: `cgu` `ia` `metricas`

## 7. Por que a acurácia engana com classes desbalanceadas?

Com 1% de fraude, um modelo que diz <b>sempre “não é fraude”</b> acerta <b>99%</b>, mas tem <b>recall 0</b>: não pega nenhuma fraude.<br><br>Nesse caso, use precisão, recall, F1 e AUC.

Tags: `cgu` `ia` `metricas` `pegadinha`

## 8. O que mede a <b>AUC-ROC</b>?

A curva ROC mostra a taxa de verdadeiros positivos × a taxa de falsos positivos em <b>todos os limiares</b>.<br><br>AUC = área sob a curva = probabilidade de o modelo dar nota maior a um positivo do que a um negativo. <b>0,5 = aleatório</b>, <b>1 = perfeito</b>. Não depende do limiar escolhido.

Tags: `cgu` `ia` `metricas`

