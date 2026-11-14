# Notas do professor

## Onde fica o quê
- Workspace unificado: `C:\Users\Henricco Santos\Estudos\ANKI_AIMEMORY_ESTUDOS\teach\`, **fora do OneDrive**, versionado no GitHub (repositório **público**).
- O workspace antigo `OneDrive\...\Pessoal\Anpd\teach_teste` foi copiado para cá em 2026-11-14 e não é mais a fonte da verdade.
- `materiais/`: PDFs, planilha e editais. O **Guia DOM ANPD 2026** é material de terceiros e fica fora do Git (`.gitignore`), porque o repositório é público.

## Preferências do aluno
- RESOURCES.md não é lista fechada: usar qualquer fonte boa, registrando as novas.
- Probabilidade e cálculo: sempre exemplo numérico resolvido para cada regra nova (learning-record 0001).
- Explicações aprofundadas, com intuição, exemplos concretos (auditoria, fraude, proteção de dados) e tabelas comparativas.
- Toda explicação vira **cards no Anki** (deck `ANPD::<Trilha>::<Matéria>::<Assunto>`) e tudo vai para o GitHub (`sync.ps1` na raiz do repositório).
- Quer ver **todos os artigos da LGPD**, em lotes de ~4–6 artigos (Lotes 1–14). Manter o mapa no índice atualizado.

- **Siglas bilíngues (nov/2026):** em métricas e regressão, sempre a sigla e a expansão em inglês e em português. Ex.: MAE (Mean Absolute Error · Erro Absoluto Médio, EAM). Em cabeçalho de tabela, a expansão vai num `<small>` embaixo da sigla.

## Padrão das lições
- Uma lição por tópico: kicker → h1 → lede → conceito → diagrama SVG → exemplos resolvidos (≥ 2 por conceito novo) → `.pegadinha` → prática com `.quiz` → fonte principal + citações `[n]` → `.ask-teacher` → `.nav`.
- Começar com `<!doctype html>`, `<meta charset="utf-8">` e viewport. Reusar `assets/` (style.css, quiz.js, metricas.js). Componente novo vai para `assets/`.
- **Quiz só certo/errado (Cebraspe).** `data-key` = gabarito, um `.feedback[data-for]` para cada escolha, explicando aquela escolha. Alternar o gabarito sem padrão. Cuidado com itens absolutos ("depende de", "somente", "nunca"): conferir se a lei tem hipóteses alternativas.
- Lições do núcleo jurídico terminam com o box `.portugues` ("Português na prática"), usando o próprio texto legal.
- Etiquetas de peso: `.tag max|alta|media`. Discursivas: `<details>` com padrão de resposta e quesitos.

## Revisão de conteúdo (2026-11-14)
Lições conferidas contra o texto compilado da LGPD e fontes oficiais. Corrigidos:
- A2: a vedação ao setor privado é o **§2º** do art. 4º (estava §1º), com o §4º acrescentado.
- A3/A4: referências cruzadas para lições e lotes errados; eixo do diagrama de dados.
- A6: **Enunciado CD/ANPD 1/2023** estava invertido. Ele admite as bases dos arts. 7º e 11 para crianças e adolescentes, desde que prevaleça o melhor interesse. O § 3º do art. 14 também tinha perdido a hipótese "para sua proteção".
- A7: citação do §7º, link da próxima lição e nova pegadinha (revisão não precisa ser humana desde a Lei 13.853/2019).
- A8: legítimo interesse no Poder Público é excepcional, não proibido (guias da ANPD). Feedback do item 4 contradizia o item 5. Arts. 27, 28 e 30 adicionados.
- A9: o feedback do item 5 listava critérios inexistentes no art. 34. O gabarito do item 6 estava errado (o art. 33 tem hipóteses alternativas às garantias do inciso II).
- A10: dispensa de encarregado para pequeno porte vem da Res. 2/2022.
- B1: diagrama de Venn (o 6 também está na interseção). D1: legenda da seta.

## Verificação de fontes
- statlearning.com, incompleteideas.net, distill.pub, developers.google.com e deepmind.google responderam em 2026-11-14. Os links de scikit-learn.org e planalto.gov.br não puderam ser testados a partir do sandbox.
