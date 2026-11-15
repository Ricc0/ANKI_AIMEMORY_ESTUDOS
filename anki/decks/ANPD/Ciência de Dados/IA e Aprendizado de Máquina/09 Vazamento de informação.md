# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::09 Vazamento de informação

6 card(s).

## 1. O que é vazamento de informação (data leakage)?

Quando o modelo, no treino ou na avaliação, usa informação que <b>não estaria disponível no momento real da previsão</b>. Sintoma: nota boa demais na avaliação e queda em produção.

Tags: `anpd,ia` `vazamento`

## 2. Quais os principais tipos de vazamento?

1. <b>Do alvo</b> (target leakage): variável que só existe depois do evento.<br>2. <b>Pré-processamento</b> na base inteira (padronização, seleção, SMOTE).<br>3. <b>Temporal</b>: usar o futuro.<br>4. <b>Grupo/duplicata</b>: a mesma entidade nos dois lados.<br>5. <b>Escolha do modelo</b> pelo teste.

Tags: `anpd,ia` `vazamento`

## 3. Qual o "jeito errado de fazer validação cruzada" (Hastie et al.)?

Selecionar as variáveis mais correlacionadas com o rótulo usando <b>toda a base</b> e só depois fazer o k-fold. Com 5.000 variáveis aleatórias e 50 amostras, o erro estimado sai perto de <b>3%</b>, quando o real é 50%. A seleção deve ser refeita <b>dentro de cada fold</b>.

Tags: `anpd,ia` `pegadinha` `vazamento`

## 4. Pode-se aplicar SMOTE na base toda antes de dividir?

<b>Não.</b> SMOTE (Synthetic Minority Over-sampling Technique · sobreamostragem sintética da minoria) cria exemplos a partir de vizinhos que podem estar no teste. Reamostragem vai <b>só no treino</b>. A proporção das classes se garante com estratificação.

Tags: `anpd,ia` `pegadinha` `vazamento`

## 5. Como prevenir vazamento?

Dividir <b>primeiro</b>; usar <b>pipelines</b> reajustados em cada fold; perguntar "essa variável existe no momento da previsão?"; respeitar <b>tempo e grupos</b>; desconfiar de nota <b>boa demais</b> e de uma variável dominante na importância.

Tags: `anpd,ia` `vazamento`

## 6. O que são padronizar, imputação e pipeline?

<b>Padronizar</b>: (valor − média) / desvio-padrão; cada coluna fica com média 0 e desvio 1.<br><b>Imputação</b>: preencher valores faltantes (ex.: com a média).<br><b>Pipeline</b>: "esteira" de passos (padronizar → selecionar → treinar), refeita dentro de cada fold para não vazar.

Tags: `anpd,ia` `vazamento`

