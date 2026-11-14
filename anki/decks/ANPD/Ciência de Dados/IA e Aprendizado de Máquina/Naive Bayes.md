# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::Naive Bayes

4 card(s).

## 1. Qual a suposição "ingênua" do Naive Bayes?

As features são <b>condicionalmente independentes entre si, dada a classe</b>: P(x₁,…,xₙ|classe) ≈ ∏ P(xᵢ|classe).

Tags: `anpd` `ia` `naive-bayes`

## 2. Qual a regra de decisão do Naive Bayes?

Escolher a classe que maximiza <b>P(classe) · ∏ P(xᵢ|classe)</b> (prior × verossimilhanças). Não é preciso dividir por P(evidência), porque ela é igual para todas as classes.

Tags: `anpd` `ia` `naive-bayes`

## 3. O Naive Bayes é inútil quando as features são correlacionadas?

<b>Não.</b> A suposição costuma ser falsa, mas o método funciona bem porque o que importa é qual classe tem o <b>maior score relativo</b>, não as probabilidades exatas.

Tags: `anpd` `ia` `naive-bayes` `pegadinha`

## 4. Por que as implementações do Naive Bayes usam logaritmos?

Multiplicar muitas probabilidades pequenas causa <b>underflow numérico</b>. Somar <b>log-probabilidades</b> dá a mesma decisão sem esse problema.

Tags: `anpd` `ia` `naive-bayes`

