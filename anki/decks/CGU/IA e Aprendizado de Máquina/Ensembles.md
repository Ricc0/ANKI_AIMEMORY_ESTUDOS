# CGU::IA e Aprendizado de Máquina::Ensembles

7 card(s).

## 1. O que é um <b>ensemble</b> e por que funciona?

É a combinação de vários modelos num resultado melhor que o de cada um sozinho.<br><br>Funciona porque, se os modelos erram de formas <b>diferentes</b> (erros pouco correlacionados), os erros se <b>compensam</b> na média ou na votação.

Tags: `cgu` `ensembles` `ia`

## 2. Como funciona o <b>bagging</b>?

Treina modelos <b>em paralelo</b>, cada um numa amostra <b>bootstrap</b> (sorteada com reposição), e combina por <b>média</b> (regressão) ou <b>votação</b> (classificação).<br><br>Efeito principal: <b>reduz a variância</b>.

Tags: `cgu` `ensembles` `ia`

## 3. O que o Random Forest acrescenta ao bagging de árvores?

Além do bootstrap, <b>sorteia um subconjunto de variáveis</b> em cada divisão da árvore. Isso deixa as árvores <b>menos correlacionadas</b> entre si, e a média reduz mais a variância.

Tags: `cgu` `ensembles` `ia`

## 4. Como funciona o <b>boosting</b>?

Treina modelos fracos <b>em sequência</b>, e cada um foca nos <b>erros do anterior</b>.<br>• <b>AdaBoost</b>: aumenta o peso dos exemplos errados.<br>• <b>Gradient Boosting</b> (XGBoost, LightGBM): cada árvore ajusta os <b>resíduos</b> (o gradiente do erro).<br><br>Efeito principal: <b>reduz o viés</b>.

Tags: `cgu` `ensembles` `ia`

## 5. O boosting pode sofrer sobreajuste?

<b>Sim.</b> Como insiste nos erros, pode decorar ruído e outliers. Para controlar: <b>taxa de aprendizado</b> baixa, limite de <b>número e profundidade</b> das árvores, <b>early stopping</b> e regularização.

Tags: `cgu` `ensembles` `ia` `pegadinha`

## 6. O que é <b>stacking</b>?

Um <b>meta-modelo</b> aprende a combinar as previsões de modelos <b>diferentes</b> (ex.: árvore + SVM + logística). Ele é treinado com previsões feitas fora da amostra, para não vazar informação.

Tags: `cgu` `ensembles` `ia`

## 7. Bagging × boosting: qual é paralelo e o que cada um reduz?

<b>Bagging</b> = <b>paralelo</b>, reduz <b>variância</b> (ex.: Random Forest).<br><b>Boosting</b> = <b>sequencial</b>, reduz <b>viés</b> (ex.: XGBoost).<br><br>Custo dos dois: perdem <b>interpretabilidade</b> e ficam mais pesados.

Tags: `cgu` `ensembles` `ia` `pegadinha`

