# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::11 Comparação de modelos

7 card(s).

## 1. Quais as regras para uma comparação justa entre modelos?

Mesmas partições para todos (comparação <b>pareada</b>); sempre contra o <b>baseline</b>; diferença maior que a <b>oscilação</b>; teste intocado até o fim (evita a "maldição do vencedor" de escolher entre muitos na mesma validação).

Tags: `anpd,ia` `comparacao`

## 2. Como funciona o teste de McNemar?

Compara dois classificadores no <b>mesmo teste</b> usando só as <b>discordâncias</b>: b = só A acertou, c = só B acertou. Estatística: (|b − c| − 1)² / (b + c), comparada a uma χ² com 1 grau de liberdade.

Tags: `anpd,ia` `comparacao`

## 3. O teste t pareado simples nos folds do k-fold é rigoroso?

<b>Não.</b> Os treinos dos folds se sobrepõem, então não são independentes. O t simples subestima a variância e acusa diferença demais. Usam-se a versão corrigida (Nadeau e Bengio) ou o 5×2cv (Dietterich).

Tags: `anpd,ia` `comparacao` `pegadinha`

## 4. Qual métrica usar quando a equipe só revisa k casos por mês?

<b>Precision@k</b> (precision at k · precisão nos k primeiros): quantos dos k casos de maior risco são positivos. A AUC-ROC (área sob a curva ROC) avalia o ranking inteiro, inclusive casos que ninguém vai olhar.

Tags: `anpd,ia` `comparacao`

## 5. O limiar de 0,5 é sempre o ideal?

<b>Não.</b> Escolhe-se o limiar que minimiza o custo esperado: c<sub>FP</sub>·FP + c<sub>FN</sub>·FN (False Positive · Falso Positivo; False Negative · Falso Negativo). Com custos diferentes, raramente será 0,5.

Tags: `anpd,ia` `comparacao` `pegadinha`

## 6. O que é calibração e como medi-la?

Um modelo é calibrado quando "risco de 70%" acontece em cerca de 70% dos casos. Mede-se com o <b>Brier score</b> (escore de Brier: média de (p − y)²) e com o diagrama de confiabilidade.

Tags: `anpd,ia` `comparacao`

## 7. Além da métrica, o que define se um modelo é adequado ao uso?

<b>Explicabilidade</b> (LGPD, art. 20: revisão e critérios de decisões unicamente automatizadas); <b>não discriminação</b> (art. 6º, IX); dados disponíveis no momento da previsão; custo, manutenção e auditabilidade (parcimônia).

Tags: `anpd,ia` `comparacao` `lgpd`

