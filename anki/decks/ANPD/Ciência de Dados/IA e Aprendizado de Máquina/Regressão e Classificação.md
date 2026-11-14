# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::Regressão e Classificação

13 card(s).

## 1. Qual a diferença entre <b>regressão</b> e <b>classificação</b>?

<b>Regressão</b>: prevê um <b>número contínuo</b> (preço de um apartamento, tempo de entrega). O ajuste clássico da regressão linear é por <b>OLS</b> (Ordinary Least Squares · Mínimos Quadrados Ordinários, MQO).<br><b>Classificação</b>: prevê uma <b>categoria</b> (spam/não spam, doente/saudável).

Tags: `anpd` `ia` `tarefas`

## 2. Regressão logística é um modelo de regressão?

<b>Não.</b> É um modelo de <b>classificação</b>. Ela calcula uma <b>probabilidade</b> (função sigmoide) e aplica um <b>limiar</b> (ex.: 0,5) para decidir a classe.

Tags: `anpd` `ia` `pegadinha` `tarefas`

## 3. MAE, MSE, RMSE e R² (EAM, EQM, REQM e coeficiente de determinação): o que mede cada um?

<b>MAE</b> (Mean Absolute Error · Erro Absoluto Médio, EAM): média do |erro|. Fica na unidade original e é mais robusto a outliers.<br><b>MSE</b> (Mean Squared Error · Erro Quadrático Médio, EQM): média do erro². Pune muito os erros grandes, e a unidade fica ao quadrado.<br><b>RMSE</b> (Root Mean Squared Error · Raiz do Erro Quadrático Médio, REQM): √MSE, de volta à unidade original.<br><b>R²</b> (Coefficient of Determination · Coeficiente de Determinação): fração da variância explicada. 1 = perfeito, 0 = igual a prever a média, negativo = pior que a média.

Tags: `anpd` `ia` `metricas`

## 4. Precision (precisão) × recall (revocação): o que cada um responde? (teste de COVID)

<b>Precision · Precisão</b> = VP/(VP+FP): <i>dos que deram positivo, quantos estão doentes mesmo?</i> Divide pela <b>coluna</b> (o que o teste disse).<br><b>Recall · Revocação</b> (sensibilidade; TPR, True Positive Rate · Taxa de Verdadeiros Positivos) = VP/(VP+FN): <i>dos que estão doentes, quantos o teste pegou?</i> Divide pela <b>linha</b> (a realidade).

Tags: `anpd` `ia` `metricas` `pegadinha`

## 5. Quando priorizar recall (revocação) e quando priorizar precision (precisão)?

<b>Recall · Revocação</b>: quando <b>deixar passar</b> um positivo é grave, ou seja, quando o FN (False Negative · Falso Negativo) custa caro. Ex.: triagem de câncer.<br><b>Precision · Precisão</b>: quando o <b>alarme falso</b> é grave, ou seja, quando o FP (False Positive · Falso Positivo) custa caro. Ex.: filtro de spam que joga e-mail importante no lixo.<br><br>Subir um costuma baixar o outro (mexendo no limiar).

Tags: `anpd` `ia` `metricas`

## 6. O que é o <b>F1-score</b> (medida F1)?

É a <b>média harmônica</b> entre precision (precisão) e recall (revocação): 2·P·R / (P + R).<br><br>Ele só fica alto se as <b>duas</b> métricas forem altas e pune quando uma delas é baixa.

Tags: `anpd` `ia` `metricas`

## 7. Por que a accuracy (acurácia) engana com classes desbalanceadas?

Com uma doença de 1% de prevalência, um teste que <b>sempre dá negativo</b> tem <b>99% de accuracy (acurácia)</b>, mas <b>recall (revocação) 0</b>: não detecta nenhum doente.<br><br>Nesse caso, use precision (precisão), recall (revocação), F1-score (medida F1) e AUC (área sob a curva).

Tags: `anpd` `ia` `metricas` `pegadinha`

## 8. O que mede a <b>AUC-ROC</b> (Area Under the Curve – Receiver Operating Characteristic · Área sob a Curva ROC – Característica de Operação do Receptor)?

A curva ROC cruza a <b>TPR</b> (True Positive Rate · Taxa de Verdadeiros Positivos, TVP) com a <b>FPR</b> (False Positive Rate · Taxa de Falsos Positivos, TFP) em <b>todos os limiares</b>.<br><br>AUC = área sob a curva = probabilidade de o modelo dar nota maior a um positivo do que a um negativo. <b>0,5 = aleatório</b>, <b>1 = perfeito</b>. Não depende do limiar escolhido.

Tags: `anpd` `ia` `metricas`

## 9. Como ler os nomes VP, FN, FP e VN sem decorar? (ex.: <b>Falso Negativo</b> num teste de COVID)

O nome tem duas palavras. Em <b>Falso Negativo</b>:<br>• <b>1ª palavra (Falso)</b> = o teste <b>acertou ou errou</b>? → errou.<br>• <b>2ª palavra (Negativo)</b> = o que o teste <b>disse</b> → deu negativo.<br>Então: deu negativo e errou → a pessoa <b>está com COVID</b>.<br><br>Na sigla FN: F = 1ª palavra, N = 2ª.<br>Regra: se a 1ª palavra é <b>Falso</b>, a realidade é o <b>contrário</b> da 2ª.<br><br>VP = doente · FP = saudável · FN = doente · VN = saudável.

Tags: `anpd,ia` `matriz-confusao` `metricas` `pegadinha`

## 10. Na matriz de confusão, o que somam as linhas e as colunas?

<b>Linhas = realidade</b>: VP + FN = doentes de verdade; FP + VN = saudáveis de verdade.<br><b>Colunas = o que o teste disse</b>: VP + FP = deram positivo; FN + VN = deram negativo.<br><br>Ex.: 1.000 pessoas: 40 + 10 = 50 doentes; 40 + 60 = 100 testes positivos.

Tags: `anpd,ia` `matriz-confusao` `metricas`

## 11. Qual o denominador da precision (precisão) e qual o do recall (revocação)?

<b>Precision · Precisão</b> = VP / (VP + FP): divide pela <b>coluna</b>, ou seja, por tudo o que <b>deu positivo</b>.<br><b>Recall · Revocação</b> = VP / (VP + FN): divide pela <b>linha</b>, ou seja, por tudo o que <b>realmente é</b> positivo.<br><br>"Total que realmente pertence à classe positiva" é o denominador do <b>recall</b>.

Tags: `anpd,ia` `matriz-confusao` `metricas` `pegadinha`

## 12. Doença com 1% de prevalência (1.000 pessoas, 10 doentes) e um teste que sempre dá negativo: quanto vale cada quadrado e cada métrica?

VP = 0 · FN = 10 · FP = 0 · VN = 990.<br><b>Accuracy · Acurácia</b> = (0 + 990) / 1.000 = <b>99%</b>.<br><b>Recall · Revocação</b> = 0 / (0 + 10) = <b>0</b>.<br><b>Precision · Precisão</b> = 0 / 0: indefinida, porque o teste nunca deu positivo.

Tags: `anpd,ia` `matriz-confusao` `metricas` `pegadinha`

## 13. Por que o R² (Coefficient of Determination · Coeficiente de Determinação) pode ser negativo?

<b>R² = 1 − SQres / SQtot</b>: a soma dos erros² do modelo dividida pela soma dos erros² de prever sempre a média.<br><br>Se o modelo erra <b>mais</b> que a média, SQres &gt; SQtot e o R² fica <b>negativo</b>. Ex.: apartamentos de 10, 20 e 30 (média 20, SQtot = 200); previstos 30, 10, 20 → SQres = 400 + 100 + 100 = 600 → R² = 1 − 3 = <b>−2</b>.

Tags: `anpd,ia` `metricas` `pegadinha` `regressao`

