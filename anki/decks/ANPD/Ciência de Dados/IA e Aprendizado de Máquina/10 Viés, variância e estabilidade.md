# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::10 Viés, variância e estabilidade

5 card(s).

## 1. O que a curva de aprendizado mostra no alto viés e na alta variância?

<b>Alto viés</b>: as curvas de treino e validação se encontram cedo, num erro alto. Mais dados <b>não</b> ajudam.<br><b>Alta variância</b>: lacuna grande entre as curvas, que diminui com mais dados. Mais dados, regularização ou simplificação ajudam.

Tags: `anpd,ia` `generalizacao` `pegadinha`

## 2. Curva de aprendizado × curva de validação

<b>Curva de aprendizado</b> (learning curve): erro × tamanho do treino.<br><b>Curva de validação</b> (validation curve): erro × um hiperparâmetro (ex.: profundidade), que mostra onde começa o sobreajuste.

Tags: `anpd,ia` `generalizacao`

## 3. O que é um resultado estável e como medir a estabilidade?

Estável é o resultado que pouco muda com pequenas mudanças nos dados ou na semente. Mede-se com <b>média ± desvio-padrão</b> entre folds ou sementes, ou com um <b>intervalo por bootstrap</b>. Diferença menor que a oscilação não é diferença.

Tags: `anpd,ia` `generalizacao`

## 4. Qual o desvio de um recall (revocação) de 0,80 medido em 100 doentes?

√(p(1−p)/n) = √(0,8·0,2/100) = <b>0,04</b>. O IC de 95% fica em cerca de <b>0,72 a 0,88</b>. Um modelo com 0,83 no mesmo teste não é comprovadamente melhor.

Tags: `anpd,ia` `generalizacao`

## 5. Covariate shift × prior shift × concept drift

<b>Covariate shift</b>: muda a distribuição de X (ex.: novo aparelho de raio-X muda o contraste das imagens).<br><b>Prior (label) shift</b>: muda a proporção das classes (ex.: gripe passa de 1% para 10% dos atendimentos no inverno).<br><b>Concept drift</b>: muda a <b>relação</b> entre X e y (ex.: spammers aprendem a burlar o filtro).<br><br>Defesas: teste out-of-time, monitoramento e retreino.

Tags: `anpd,ia` `generalizacao` `pegadinha`

