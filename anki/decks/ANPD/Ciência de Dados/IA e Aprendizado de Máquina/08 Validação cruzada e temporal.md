# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::08 Validação cruzada e temporal

5 card(s).

## 1. Como funciona a validação cruzada k-fold?

Divide os dados em k partes. Em cada rodada, uma parte valida e as k − 1 restantes treinam. Cada observação valida <b>exatamente uma vez</b>. O resultado é a <b>média</b> (e o desvio) das k rodadas. Valores usuais: k = 5 ou 10.

Tags: `anpd,ia` `validacao`

## 2. O que é a LOOCV?

<b>LOOCV</b> (Leave-One-Out Cross-Validation · validação cruzada deixa-um-fora): k = n, com cada observação validando sozinha. É a variante <b>mais cara</b> (n treinos), tem viés baixo e variância alta na estimativa. <b>Não</b> é k = 2.

Tags: `anpd,ia` `pegadinha` `validacao`

## 3. Para que serve a validação cruzada aninhada?

<b>Nested cross-validation</b> (validação cruzada aninhada): um laço <b>interno</b> escolhe os hiperparâmetros e um laço <b>externo</b> mede o desempenho. Evita o viés otimista de escolher e medir com as mesmas partições.

Tags: `anpd,ia` `validacao`

## 4. Pode-se usar k-fold com embaralhamento em séries temporais?

<b>Não.</b> Embaralhar deixa o modelo usar o futuro para prever o passado. Use a <b>validação temporal</b>, com o treino sempre anterior à validação.

Tags: `anpd,ia` `pegadinha` `validacao`

## 5. Janela expansiva × janela deslizante × gap

<b>Janela expansiva</b> (origem móvel, TimeSeriesSplit): o treino cresce, e a validação é sempre o período seguinte.<br><b>Janela deslizante</b>: o treino tem tamanho fixo e anda junto.<br><b>Gap</b> (embargo): período vazio entre treino e validação, para que variáveis de janela não vazem.

Tags: `anpd,ia` `validacao`

