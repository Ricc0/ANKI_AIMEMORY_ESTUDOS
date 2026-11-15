---
tags:
- regra
pinned: true
tier: semantic
type: Rule
generated:
  by: process:ai-memory/2.2.1
  at: 2026-11-15T03:24:41Z
---
# Regra: registrar tudo no ai-memory estudos

Pedido do usuário (2026-11-15): **tudo** o que for feito ou modificado nos estudos precisa ficar registrado no ai-memory `pessoal/estudos`. Isso vale para lições, cards, revisões, cadernos do TecConcursos, decisões e mudanças de infraestrutura.

**Como aplicar:** ao fim de cada tarefa,
1. acrescentar uma linha datada no topo de [[historico-estudos]];
2. criar ou atualizar a nota do tema (por exemplo, [[tecconcursos]] e [[ia-ml-parte2-validacao]]);
3. rodar o `sync.ps1`, que copia a wiki para o GitHub (ver [[git-sync-estudos]]).
