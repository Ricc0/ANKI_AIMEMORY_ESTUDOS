# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::Baseline

3 card(s).

## 1. O que é um <b>baseline</b> e quais os exemplos por tarefa?

Um ponto de referência <b>trivial</b> para comparar o modelo:<br>• Classificação: prever sempre a <b>classe mais comum</b>.<br>• Regressão: prever sempre a <b>média/mediana</b>.<br>• Série temporal: repetir o <b>último valor</b> (naive).<br>• Também valem regras de negócio simples e regressão linear/logística.

Tags: `anpd` `baseline` `ia`

## 2. Por que comparar o modelo com um baseline?

Um modelo complexo que <b>não supera o baseline com folga</b> não se justifica: custa mais, é mais difícil de explicar e de manter.<br><br>Além disso, se um modelo simples demais já vai <b>muito bem</b>, desconfie de <b>vazamento de dados</b>.

Tags: `anpd` `baseline` `ia`

## 3. Por que, na administração pública, o modelo simples costuma ganhar quando o ganho é pequeno?

Porque <b>interpretabilidade</b>, <b>auditabilidade</b> e a <b>motivação</b> das decisões pesam muito. Pelo princípio da <b>parcimônia</b> (navalha de Occam), com desempenho parecido, fica o modelo mais simples.

Tags: `anpd` `baseline` `ia` `pegadinha`

