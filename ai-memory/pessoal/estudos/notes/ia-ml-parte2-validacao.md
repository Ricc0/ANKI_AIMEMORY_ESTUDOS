---
tags:
- ia
- validacao
- generalizacao
- progresso
- anpd
tier: semantic
type: Note
generated:
  by: process:ai-memory/2.2.1
  at: 2026-11-14T16:30:32Z
---
# IA e ML, Parte 2: validação e generalização (item 2 do edital-roteiro)

Feito em 2026-11-14: lições C0007–C0011 no workspace `teach` e 27 cards em `ANPD::Ciência de Dados::IA e Aprendizado de Máquina::07..11`. Deck ANPD com 172 cards. Ver [[licoes-html-teach]] e [[ia-ml-fundamentos]].

## Cobertura
- 2.1 Treino/validação/teste; parâmetro × hiperparâmetro; data snooping; divisão estratificada, por grupo e temporal (out-of-time).
- 2.2 k-fold, estratificada, por grupo, LOOCV (k = n), repetida, aninhada; validação temporal com janela expansiva/deslizante e gap.
- 2.3 Vazamento: do alvo, por pré-processamento (incluindo SMOTE), temporal, por grupo/duplicata e pela escolha do modelo. Exemplo de Hastie (seleção de variáveis antes do CV: erro de 3% × 50% real). Prevenção com pipelines.
- 2.4–2.5 Curvas de aprendizado e de validação; estabilidade (média ± desvio, bootstrap, IC de proporção); covariate shift, prior shift, concept drift.
- 2.6 Comparação pareada, McNemar, t corrigido/5×2cv, precision@k, limiar por custo, calibração/Brier, adequação ao uso (LGPD, art. 20 e art. 6º, IX).

## Próximos passos possíveis
Modelos em detalhe (regressão logística, árvores/Random Forest, SVM, k-NN, redes), PLN, deep learning, ou um simulado das Lições 7 a 11.
