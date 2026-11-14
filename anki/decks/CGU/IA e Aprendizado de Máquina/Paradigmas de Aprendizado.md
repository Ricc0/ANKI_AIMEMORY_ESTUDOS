# CGU::IA e Aprendizado de Máquina::Paradigmas de Aprendizado

7 card(s).

## 1. O que caracteriza o <b>aprendizado supervisionado</b>?

Cada exemplo de treino vem com a <b>resposta certa (rótulo)</b>. O modelo aprende a relação entrada → rótulo.<br><br>Ex.: e-mails marcados como spam / não spam.<br>Tarefas típicas: <b>classificação</b> e <b>regressão</b>.

Tags: `cgu` `ia` `paradigmas`

## 2. Agrupamento (<i>clustering</i>) é aprendizado supervisionado?

<b>Não.</b> É <b>não supervisionado</b>: os dados não têm rótulo, e o algoritmo descobre sozinho grupos de itens parecidos.<br><br>Ex.: K-means separando clientes por perfil de compra.

Tags: `cgu` `ia` `paradigmas` `pegadinha`

## 3. Qual a diferença entre <b>classificação</b> e <b>agrupamento</b>?

<b>Classificação</b>: as classes <b>já existem</b> e vêm nos dados de treino (supervisionado).<br><b>Agrupamento</b>: os grupos <b>são descobertos</b> pelo algoritmo, sem rótulo (não supervisionado).

Tags: `cgu` `ia` `paradigmas` `pegadinha`

## 4. Aprendizado por reforço é supervisionado?

<b>Não.</b> Não existe um rótulo com a resposta certa por exemplo, só uma <b>recompensa</b> pelas ações. É um <b>terceiro paradigma</b>, separado do supervisionado e do não supervisionado.

Tags: `cgu` `ia` `paradigmas` `pegadinha`

## 5. Como funciona o <b>aprendizado por reforço</b>?

Um <b>agente</b> age num <b>ambiente</b> e recebe <b>recompensas ou punições</b>. Por tentativa e erro, aprende a sequência de ações que maximiza a recompensa total.<br><br>Ex.: robô aprendendo a andar (+1 se avança, −1 se cai), jogos.

Tags: `cgu` `ia` `paradigmas`

## 6. Por que a recompensa do reforço <b>não</b> equivale ao rótulo do supervisionado?

O rótulo diz <b>qual seria a resposta certa</b>. A recompensa só dá uma <b>nota</b> para a ação tomada, sem dizer qual ação seria a correta, e muitas vezes chega <b>atrasada</b> (ex.: no xadrez, só no fim da partida).

Tags: `cgu` `ia` `paradigmas` `pegadinha`

## 7. O que cada paradigma recebe para aprender: supervisionado, não supervisionado e por reforço?

<b>Supervisionado</b>: dados <b>com rótulo</b> (classificação, regressão).<br><b>Não supervisionado</b>: dados <b>sem rótulo</b> (agrupamento, redução de dimensionalidade).<br><b>Reforço</b>: <b>recompensa</b> pelas ações (jogos, robótica).

Tags: `cgu` `ia` `paradigmas`

