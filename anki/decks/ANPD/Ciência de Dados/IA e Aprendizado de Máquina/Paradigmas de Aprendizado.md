# ANPD::Ciência de Dados::IA e Aprendizado de Máquina::Paradigmas de Aprendizado

14 card(s).

## 1. O que caracteriza o <b>aprendizado supervisionado</b>?

Cada exemplo de treino vem com a <b>resposta certa (rótulo)</b>. O modelo aprende a relação entrada → rótulo.<br><br>Ex.: e-mails marcados como spam / não spam.<br>Tarefas típicas: <b>classificação</b> e <b>regressão</b>.

Tags: `anpd` `ia` `paradigmas`

## 2. Agrupamento (<i>clustering</i>) é aprendizado supervisionado?

<b>Não.</b> É <b>não supervisionado</b>: os dados não têm rótulo, e o algoritmo descobre sozinho grupos de itens parecidos.<br><br>Ex.: K-means separando clientes por perfil de compra.

Tags: `anpd` `ia` `paradigmas` `pegadinha`

## 3. Qual a diferença entre <b>classificação</b> e <b>agrupamento</b>?

<b>Classificação</b>: as classes <b>já existem</b> e vêm nos dados de treino (supervisionado).<br><b>Agrupamento</b>: os grupos <b>são descobertos</b> pelo algoritmo, sem rótulo (não supervisionado).

Tags: `anpd` `ia` `paradigmas` `pegadinha`

## 4. Aprendizado por reforço é supervisionado?

<b>Não.</b> Não existe um rótulo com a resposta certa por exemplo, só uma <b>recompensa</b> pelas ações. É um <b>terceiro paradigma</b>, separado do supervisionado e do não supervisionado.

Tags: `anpd` `ia` `paradigmas` `pegadinha`

## 5. Como funciona o <b>aprendizado por reforço</b>?

Um <b>agente</b> age num <b>ambiente</b> e recebe <b>recompensas ou punições</b>. Por tentativa e erro, aprende a sequência de ações que maximiza a recompensa total.<br><br>Ex.: robô aprendendo a andar (+1 se avança, −1 se cai), jogos.

Tags: `anpd` `ia` `paradigmas`

## 6. Por que a recompensa do reforço <b>não</b> equivale ao rótulo do supervisionado?

O rótulo diz <b>qual seria a resposta certa</b>. A recompensa só dá uma <b>nota</b> para a ação tomada, sem dizer qual ação seria a correta, e muitas vezes chega <b>atrasada</b> (ex.: no xadrez, só no fim da partida).

Tags: `anpd` `ia` `paradigmas` `pegadinha`

## 7. O que cada paradigma recebe para aprender: supervisionado, não supervisionado e por reforço?

<b>Supervisionado</b>: dados <b>com rótulo</b> (classificação, regressão).<br><b>Não supervisionado</b>: dados <b>sem rótulo</b> (agrupamento, redução de dimensionalidade).<br><b>Reforço</b>: <b>recompensa</b> pelas ações (jogos, robótica).

Tags: `anpd` `ia` `paradigmas`

## 8. O que é aprendizado <b>semissupervisionado</b> e quando ele é útil?

Combina <b>poucos dados rotulados</b> com <b>muitos sem rótulo</b>.<br><br>É útil quando <b>rotular é caro</b>, como quando cada radiografia precisa ser laudada por um médico.

Tags: `anpd` `ia` `semissupervisionado`

## 9. Como funciona o <b>self-training</b> (autotreinamento)?

1. Treina com os poucos dados rotulados.<br>2. Prevê os não rotulados e aceita como <b>pseudo-rótulo</b> só os de <b>maior confiança</b>.<br>3. Junta esses ao treino e <b>retreina</b>.<br>4. Repete o ciclo.

Tags: `anpd` `ia` `semissupervisionado`

## 10. Quais suposições o semissupervisionado exige e o que acontece se falharem?

Suposições: <b>suavidade</b> (pontos próximos têm o mesmo rótulo), <b>cluster</b> (a fronteira passa por regiões vazias) e <b>variedade</b> (os dados vivem numa estrutura de menor dimensão).<br><br>Se falharem, ou se os primeiros pseudo-rótulos estiverem errados, o <b>erro se propaga</b> e o resultado pode ficar <b>pior do que usar só os rotulados</b>.

Tags: `anpd` `ia` `pegadinha` `semissupervisionado`

## 11. Quais os elementos do aprendizado por reforço?

<b>Agente</b>, <b>ambiente</b>, <b>estado</b> (situação atual), <b>ação</b>, <b>recompensa</b> (retorno imediato) e <b>política</b> (regra estado → ação).<br><br>O objetivo é maximizar a <b>recompensa acumulada</b> (retorno), normalmente com desconto γ para recompensas futuras.

Tags: `anpd` `ia` `reforco`

## 12. O que é o dilema <b>exploração × explotação</b>?

<b>Exploração</b>: testar ações novas para descobrir se são melhores.<br><b>Explotação</b>: repetir a melhor ação já conhecida.<br><br>Só explotar trava o agente numa solução ruim. Só explorar nunca aproveita o que aprendeu. Ex.: ε-greedy, que explora ao acaso com probabilidade ε.

Tags: `anpd` `ia` `reforco`

## 13. O que é <b>reward hacking</b>?

O agente acha um <b>atalho</b> que maximiza a recompensa <b>sem cumprir o objetivo real</b>. Acontece porque a recompensa foi mal especificada.

Tags: `anpd` `ia` `pegadinha` `reforco`

## 14. Quais os limites do aprendizado por reforço?

Precisa de <b>muita interação</b> ou de um <b>simulador</b>. A recompensa pode ser <b>atrasada</b>, o que dificulta saber qual ação foi a responsável (atribuição de crédito). <b>Definir a recompensa</b> é difícil e há risco de reward hacking.<br><br>Raramente é a ferramenta certa para dados tabulares comuns.

Tags: `anpd` `ia` `reforco`

