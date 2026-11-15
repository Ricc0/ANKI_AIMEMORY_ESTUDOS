# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::Ensembles

10 card(s).

## 1. O que é um <b>ensemble</b> e por que funciona?

É a combinação de vários modelos num resultado melhor que o de cada um sozinho.<br><br>Funciona porque, se os modelos erram de formas <b>diferentes</b> (erros pouco correlacionados), os erros se <b>compensam</b> na média ou na votação.

Tags: `anpd` `ensembles` `ia`

## 2. Como funciona o <b>bagging</b>?

Treina modelos <b>em paralelo</b>, cada um numa amostra <b>bootstrap</b> (sorteada com reposição), e combina por <b>média</b> (regressão) ou <b>votação</b> (classificação).<br><br>Efeito principal: <b>reduz a variância</b>.

Tags: `anpd` `ensembles` `ia`

## 3. O que o Random Forest acrescenta ao bagging de árvores?

Além do bootstrap, <b>sorteia um subconjunto de variáveis</b> em cada divisão da árvore. Isso deixa as árvores <b>menos correlacionadas</b> entre si, e a média reduz mais a variância.

Tags: `anpd` `ensembles` `ia`

## 4. Como funciona o <b>boosting</b>?

Treina modelos fracos <b>em sequência</b>, e cada um foca nos <b>erros do anterior</b>.<br>• <b>AdaBoost</b>: aumenta o peso dos exemplos errados.<br>• <b>Gradient Boosting</b> (XGBoost, LightGBM): cada árvore ajusta os <b>resíduos</b> (o gradiente do erro).<br><br>Efeito principal: <b>reduz o viés</b>.

Tags: `anpd` `ensembles` `ia`

## 5. O boosting pode sofrer sobreajuste?

<b>Sim.</b> Como insiste nos erros, pode decorar ruído e outliers. Para controlar: <b>taxa de aprendizado</b> baixa, limite de <b>número e profundidade</b> das árvores, <b>early stopping</b> e regularização.

Tags: `anpd` `ensembles` `ia` `pegadinha`

## 6. O que é <b>stacking</b>?

Um <b>meta-modelo</b> aprende a combinar as previsões de modelos <b>diferentes</b> (ex.: árvore + SVM + logística). Ele é treinado com previsões feitas fora da amostra, para não vazar informação.

Tags: `anpd` `ensembles` `ia`

## 7. Bagging × boosting: qual é paralelo e o que cada um reduz?

<b>Bagging</b> = <b>paralelo</b>, reduz <b>variância</b> (ex.: Random Forest).<br><b>Boosting</b> = <b>sequencial</b>, reduz <b>viés</b> (ex.: XGBoost).<br><br>Custo dos dois: perdem <b>interpretabilidade</b> e ficam mais pesados.

Tags: `anpd` `ensembles` `ia` `pegadinha`

## 8. O que é uma árvore de decisão?

Uma sequência de <b>perguntas de sim ou não</b> até uma resposta, como um fluxograma. Ex.: "mais de 3 links?" → "remetente conhecido?" → SPAM.<br><br>Árvore <b>profunda</b> decora (alta variância). Árvore <b>rasa</b> é fraca (alto viés). Bagging usa profundas; boosting usa rasas.

Tags: `anpd,ia` `arvores` `ensembles`

## 9. O que é uma amostra bootstrap? (exemplo)

Sorteio <b>com reposição</b> do mesmo tamanho da base. De {A, B, C, D, E} pode sair {A, A, C, D, E}: o B ficou de fora e o A repetiu.<br><br>Cada árvore do bagging treina numa amostra diferente.

Tags: `anpd,ia` `ensembles`

## 10. Como o Gradient Boosting corrige erros? (exemplo do resíduo)

Apartamento de R$ 500 mil: árvore 1 prevê 400 → <b>resíduo</b> 100. Árvore 2 prevê o resíduo (80) → total 480. Árvore 3 prevê 15 → total 495.<br><br>Cada árvore nova aprende <b>o que sobrou de erro</b>. No AdaBoost, os exemplos errados ganham <b>peso maior</b>.

Tags: `anpd,ia` `boosting` `ensembles`

