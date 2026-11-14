# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::Regressão e Classificação

8 card(s).

## 1. Qual a diferença entre <b>regressão</b> e <b>classificação</b>?

<b>Regressão</b>: prevê um <b>valor contínuo</b> (valor de contrato, prazo em dias). O ajuste clássico da regressão linear é por <b>OLS</b> (Ordinary Least Squares · Mínimos Quadrados Ordinários, MQO).<br><b>Classificação</b>: prevê uma <b>categoria</b> (fraude/não fraude, tipo de irregularidade).

Tags: `anpd` `ia` `tarefas`

## 2. Regressão logística é um modelo de regressão?

<b>Não.</b> É um modelo de <b>classificação</b>. Ela calcula uma <b>probabilidade</b> (função sigmoide) e aplica um <b>limiar</b> (ex.: 0,5) para decidir a classe.

Tags: `anpd` `ia` `pegadinha` `tarefas`

## 3. MAE, MSE, RMSE e R² (EAM, EQM, REQM e coeficiente de determinação): o que mede cada um?

<b>MAE</b> (Mean Absolute Error · Erro Absoluto Médio, EAM): média do |erro|. Fica na unidade original e é mais robusto a outliers.<br><b>MSE</b> (Mean Squared Error · Erro Quadrático Médio, EQM): média do erro². Pune muito os erros grandes, e a unidade fica ao quadrado.<br><b>RMSE</b> (Root Mean Squared Error · Raiz do Erro Quadrático Médio, REQM): √MSE, de volta à unidade original.<br><b>R²</b> (Coefficient of Determination · Coeficiente de Determinação): fração da variância explicada. 1 = perfeito, 0 = igual a prever a média, negativo = pior que a média.

Tags: `anpd` `ia` `metricas`

## 4. Precision (precisão) × recall (revocação): o que cada um responde?

<b>Precision · Precisão</b> = TP/(TP+FP) = VP/(VP+FP): <i>dos casos que o modelo apontou como fraude, quantos eram fraude?</i><br><b>Recall · Revocação</b> (sensibilidade; TPR, True Positive Rate · Taxa de Verdadeiros Positivos) = TP/(TP+FN) = VP/(VP+FN): <i>de todas as fraudes reais, quantas o modelo pegou?</i><br><br>TP/VP = True Positive · Verdadeiro Positivo; FP = False Positive · Falso Positivo; FN = False Negative · Falso Negativo.

Tags: `anpd` `ia` `metricas` `pegadinha`

## 5. Quando priorizar recall (revocação) e quando priorizar precision (precisão)?

<b>Recall · Revocação</b>: quando <b>deixar passar</b> um caso é caro (fraude não detectada, doença), ou seja, quando o FN (False Negative · Falso Negativo) custa caro.<br><b>Precision · Precisão</b>: quando o <b>alarme falso</b> é caro (equipe de auditoria limitada, acusar inocente), ou seja, quando o FP (False Positive · Falso Positivo) custa caro.<br><br>Subir um costuma baixar o outro (mexendo no limiar).

Tags: `anpd` `ia` `metricas`

## 6. O que é o <b>F1-score</b> (medida F1)?

É a <b>média harmônica</b> entre precision (precisão) e recall (revocação): 2·P·R / (P + R).<br><br>Ele só fica alto se as <b>duas</b> métricas forem altas e pune quando uma delas é baixa.

Tags: `anpd` `ia` `metricas`

## 7. Por que a accuracy (acurácia) engana com classes desbalanceadas?

Com 1% de fraude, um modelo que diz <b>sempre “não é fraude”</b> tem <b>99% de accuracy (acurácia)</b>, mas <b>recall (revocação) 0</b>: não pega nenhuma fraude.<br><br>Nesse caso, use precision (precisão), recall (revocação), F1-score (medida F1) e AUC (área sob a curva).

Tags: `anpd` `ia` `metricas` `pegadinha`

## 8. O que mede a <b>AUC-ROC</b> (Area Under the Curve – Receiver Operating Characteristic · Área sob a Curva ROC – Característica de Operação do Receptor)?

A curva ROC cruza a <b>TPR</b> (True Positive Rate · Taxa de Verdadeiros Positivos, TVP) com a <b>FPR</b> (False Positive Rate · Taxa de Falsos Positivos, TFP) em <b>todos os limiares</b>.<br><br>AUC = área sob a curva = probabilidade de o modelo dar nota maior a um positivo do que a um negativo. <b>0,5 = aleatório</b>, <b>1 = perfeito</b>. Não depende do limiar escolhido.

Tags: `anpd` `ia` `metricas`

