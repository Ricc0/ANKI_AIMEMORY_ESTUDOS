---
tags:
- cgu
- ia
- aprendizado-de-maquina
- progresso
tier: semantic
type: Note
generated:
  by: process:ai-memory/2.2.1
  at: 2026-11-14T15:16:50Z
---
# IA e ML: fundamentos estudados (tópicos 1.1 e 1.2)

Estudado em 2026-11-14, com explicação aprofundada e cards no Anki em `CGU::IA e Aprendizado de Máquina::*`.

## Cobertura
- **Paradigmas**: supervisionado, não supervisionado, semissupervisionado (self-training, propagação de rótulos, suposições de suavidade/cluster/variedade) e reforço (estado/ação/recompensa/política, exploração × explotação, reward hacking).
- **Regressão e classificação**: MAE/MSE/RMSE/R²; precisão, recall, F1, AUC-ROC; acurácia enganosa com classes desbalanceadas; regressão logística é classificação.
- **Não supervisionado**: k-means, hierárquico, DBSCAN; PCA × t-SNE/UMAP; seleção × extração; maldição da dimensionalidade; anomalias (z-score, IQR, Isolation Forest, One-Class SVM, autoencoder). Anomalia ≠ fraude.
- **Sobreajuste e regularização**: viés-variância, holdout × k-fold, L1 × L2 × Elastic Net, λ, dropout, early stopping, data leakage.
- **Ensembles**: bagging (paralelo, variância, Random Forest), boosting (sequencial, viés, AdaBoost/XGBoost), stacking.
- **Baseline**: referências triviais por tarefa, sinal de vazamento, parcimônia na administração pública.

## Pegadinhas recorrentes da banca
Clustering e reforço não são supervisionados. Regressão logística é classificação. Bagging reduz variância e boosting reduz viés. L1 zera coeficientes e L2 não. Acurácia não serve com desbalanceamento. Desempenho bom demais sugere vazamento. t-SNE é para visualizar, não para medir distâncias.

## Cards
51 cards no total nesses decks (7 da primeira explicação + 44 desta).
