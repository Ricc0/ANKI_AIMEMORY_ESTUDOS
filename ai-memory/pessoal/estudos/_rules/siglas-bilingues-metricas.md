---
tags:
- regra
- siglas
- metricas
- regressao
- bilingue
pinned: true
tier: procedural
type: Rule
generated:
  by: process:ai-memory/2.2.1
  at: 2026-11-14T16:06:54Z
---
# Regra: siglas de métricas e regressão sempre em inglês e em português

Pedido do usuário (2026-11-14): nos termos de **métricas e regressão**, sempre escrever a **sigla e a expansão em inglês e também em português**. Vale para explicações no chat, cards no Anki, lições HTML e glossário.

## Formato padrão
**SIGLA** (English Expansion · Expansão em português, SIGLA-PT quando existir). Exemplos canônicos:
- **MAE** (Mean Absolute Error · Erro Absoluto Médio, EAM)
- **MSE** (Mean Squared Error · Erro Quadrático Médio, EQM)
- **RMSE** (Root Mean Squared Error · Raiz do Erro Quadrático Médio, REQM)
- **R²** (Coefficient of Determination · Coeficiente de Determinação)
- **OLS** (Ordinary Least Squares · Mínimos Quadrados Ordinários, MQO)
- **Accuracy** (acurácia), **Precision** (precisão), **Recall** (revocação/sensibilidade), **F1-score** (medida F1)
- **TPR** (True Positive Rate · Taxa de Verdadeiros Positivos, TVP); **FPR** (False Positive Rate · Taxa de Falsos Positivos, TFP)
- **AUC-ROC** (Area Under the Curve – Receiver Operating Characteristic · Área sob a Curva ROC – Característica de Operação do Receptor)
- **TP/VP, FP, FN, TN/VN** (True/False Positive/Negative · Verdadeiro/Falso Positivo/Negativo)
- **L1 · Lasso** (Least Absolute Shrinkage and Selection Operator · Regressão Lasso); **L2 · Ridge** (Ridge Regression · Regressão em crista); **Elastic Net** (rede elástica)

## Onde já foi aplicado (2026-11-14)
Lições C0002, C0004 e C0005, `reference/glossario.html`, `assets/metricas.js` e 8 cards em `ANPD::Ciência de Dados::IA e Aprendizado de Máquina::*` (atualizados com updateNoteFields, preservando o histórico). Ao criar conteúdo novo com outras métricas ou modelos de regressão (MAPE, log-loss, regressão polinomial etc.), seguir o mesmo padrão. Ver [[anki-cards-ao-explicar]] e [[licoes-html-teach]].
