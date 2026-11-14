# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::Sobreajuste e Regularização

10 card(s).

## 1. Subajuste × sobreajuste: como ficam os erros de treino e de teste?

<b>Subajuste</b>: erro <b>alto no treino</b> e alto no teste. Modelo simples demais, com <b>alto viés</b>.<br><b>Sobreajuste</b>: erro <b>muito baixo no treino</b> e alto no teste. Modelo que decorou o ruído, com <b>alta variância</b>.

Tags: `anpd` `ia` `overfitting` `pegadinha`

## 2. Qual o sinal típico de sobreajuste?

Uma <b>diferença grande</b> entre o desempenho no <b>treino</b> (ótimo) e no <b>teste</b> (ruim). Por isso, avalie sempre em dados que o modelo <b>não viu</b>.

Tags: `anpd` `ia` `overfitting`

## 3. O que é o trade-off viés-variância?

<b>Viés</b>: erro por suposições simplistas demais (gera subajuste).<br><b>Variância</b>: o quanto o modelo muda se o treino mudar (gera sobreajuste).<br><br>Erro esperado = viés² + variância + <b>ruído irredutível</b>. Aumentar a complexidade baixa o viés e sobe a variância.

Tags: `anpd` `ia` `overfitting`

## 4. Holdout × validação cruzada k-fold

<b>Holdout</b>: separa uma parte fixa para teste. É simples, mas depende da sorte da divisão.<br><b>k-fold</b>: divide em k partes, treina em k−1, testa na que sobrou e repete k vezes fazendo a média. A estimativa fica mais <b>estável</b>.<br><br>Em séries temporais, <b>não embaralhar</b> os dados: treine no passado e teste no futuro.

Tags: `anpd` `ia` `overfitting` `validacao`

## 5. Como corrigir subajuste e como corrigir sobreajuste?

<b>Subajuste</b>: modelo mais complexo, mais variáveis, <b>menos</b> regularização.<br><b>Sobreajuste</b>: mais dados, <b>mais</b> regularização, modelo mais simples, early stopping, poda, dropout e validação cruzada.

Tags: `anpd` `ia` `overfitting`

## 6. L1 · Lasso × L2 · Ridge

<b>L1 · Lasso</b> (Least Absolute Shrinkage and Selection Operator · Regressão Lasso): penaliza |w| e <b>zera</b> coeficientes, então também faz <b>seleção de variáveis</b>.<br><b>L2 · Ridge</b> (Ridge Regression · Regressão em crista): penaliza w² e <b>encolhe sem zerar</b>. Lida bem com variáveis <b>correlacionadas</b>.<br><b>Elastic Net</b> (Rede elástica): combina as duas.

Tags: `anpd` `ia` `pegadinha` `regularizacao`

## 7. O que acontece quando se aumenta o λ da regularização?

A penalidade fica mais forte e o modelo fica <b>mais simples</b> (coeficientes menores). Isso reduz o sobreajuste, mas <b>exagerar leva a subajuste</b>. λ = 0 é o mesmo que não regularizar.

Tags: `anpd` `ia` `regularizacao`

## 8. Por que a L1 zera coeficientes e a L2 não?

A região da L1 é um <b>losango</b>, com cantos sobre os eixos, e a solução ótima tende a cair num canto, onde um coeficiente é 0.<br>A da L2 é um <b>círculo</b>: a força da penalidade diminui junto com w, então w encolhe mas quase nunca chega a 0.

Tags: `anpd` `ia` `regularizacao`

## 9. O que são <b>dropout</b> e <b>early stopping</b>?

<b>Dropout</b> (redes neurais): desliga neurônios ao acaso durante o treino, o que impede a rede de depender de poucos caminhos.<br><b>Early stopping</b>: <b>para o treino</b> quando o erro de validação começa a subir.

Tags: `anpd` `ia` `regularizacao`

## 10. O que é <b>vazamento de dados</b> (data leakage)?

Quando informação que <b>não estaria disponível</b> na hora de prever (do teste ou do futuro) entra no treino.<br><br>Sintoma: desempenho <b>bom demais</b>. Exemplos: padronizar com os dados todos antes de dividir treino e teste, ou usar uma variável criada depois do fato (ex.: "dias de internação" para prever se o paciente vai ser internado).

Tags: `anpd` `ia` `overfitting` `pegadinha`

