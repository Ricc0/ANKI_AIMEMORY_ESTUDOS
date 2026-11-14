# ANPD::Ciência de Dados::Probabilidade e Estatística::Condicional e Bayes

4 card(s).

## 1. Como se calcula a probabilidade condicional?

<b>P(A|B) = P(A ∩ B) / P(B)</b>, com P(B) > 0. B vira o novo espaço amostral.

Tags: `anpd` `probabilidade`

## 2. Como checar se dois eventos são independentes?

<b>P(A ∩ B) = P(A) · P(B)</b> (equivale a P(A|B) = P(A)).<br><br>Ex.: P(A) = 0,3, P(B) = 0,4, P(A ∩ B) = 0,2 ≠ 0,12, logo não são independentes.

Tags: `anpd` `probabilidade`

## 3. Teorema de Bayes e probabilidade total

<b>P(A|B) = P(B|A) · P(A) / P(B)</b><br><b>P(B) = P(B|A)·P(A) + P(B|Aᶜ)·P(Aᶜ)</b><br><br>Ex. spam: 0,4·0,3 / (0,4·0,3 + 0,05·0,7) ≈ 0,774.

Tags: `anpd` `probabilidade`

## 4. P(positivo|doença) = 0,9 implica P(doença|positivo) = 0,9?

<b>Não.</b> Com prevalência de 1%, sensibilidade de 90% e 5% de falso positivo: P(doença|+) = 0,009 / 0,0585 ≈ <b>15,4%</b>. A taxa base domina o resultado.

Tags: `anpd` `pegadinha` `probabilidade`

