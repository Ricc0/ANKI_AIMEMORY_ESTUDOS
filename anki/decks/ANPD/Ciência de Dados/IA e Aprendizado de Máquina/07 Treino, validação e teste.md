# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::07 Treino, validação e teste

5 card(s).

## 1. Para que serve cada conjunto: treino, validação e teste?

<b>Treino</b>: ajusta os <b>parâmetros</b>.<br><b>Validação</b>: escolhe <b>hiperparâmetros</b> e compara modelos.<br><b>Teste</b>: mede o modelo final <b>uma única vez</b>.<br><br>Analogia: exercícios, simulados e a prova.

Tags: `anpd,ia` `validacao`

## 2. Parâmetro × hiperparâmetro

<b>Parâmetro</b>: aprendido pelo algoritmo no treino (ex.: pesos da regressão logística).<br><b>Hiperparâmetro</b>: definido antes do treino e escolhido na validação (ex.: profundidade da árvore, k do k-NN, λ).

Tags: `anpd,ia` `pegadinha` `validacao`

## 3. O que acontece se você escolhe hiperparâmetros olhando o teste?

O teste vira validação e a estimativa final fica <b>otimista</b>, porque você ficou com a configuração que deu sorte naquele conjunto. Isso se chama <b>data snooping</b>.

Tags: `anpd,ia` `pegadinha` `validacao`

## 4. Quando usar divisão estratificada, por grupo ou temporal?

<b>Estratificada</b>: classes desbalanceadas (mantém, por exemplo, 1% de doentes em cada conjunto).<br><b>Por grupo</b>: vários registros da mesma pessoa (todas as radiografias de um paciente ficam do mesmo lado).<br><b>Temporal</b> (out-of-time): dados com data, com treino no passado e teste no futuro.

Tags: `anpd,ia` `validacao`

## 5. Por que dividir aleatoriamente por registro é um problema quando o mesmo paciente aparece várias vezes?

O modelo reencontra no teste pacientes que já viu no treino e "reconhece" detalhes deles (até do aparelho de raio-X). A nota infla e cai com pacientes novos. A solução é dividir <b>por grupo</b> (GroupKFold).

Tags: `anpd,ia` `pegadinha` `validacao`

