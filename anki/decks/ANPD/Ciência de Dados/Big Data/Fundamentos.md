# ANPD::Ciência de Dados::Big Data::Fundamentos

4 card(s).

## 1. Quais são os Vs do big data?

<b>Volume</b>, <b>Velocidade</b> (taxa de chegada, inclusive streaming) e <b>Variedade</b> (estruturado, semiestruturado, não estruturado). Extensões: <b>Veracidade</b> e <b>Valor</b>.

Tags: `anpd` `big-data`

## 2. Quais as etapas do fluxo de big data?

<b>Ingestão</b> (batch ou streaming) → <b>processamento</b> (limpeza, transformação, agregação) → <b>armazenamento</b> (data lake, data warehouse) → <b>disponibilização</b> (dashboards, APIs, relatórios).

Tags: `anpd` `big-data`

## 3. Data lake × data warehouse

<b>Data lake</b>: dado bruto, qualquer formato, <b>schema-on-read</b>.<br><b>Data warehouse</b>: dado tratado e modelado (fatos/dimensões), <b>schema-on-write</b>, otimizado para consulta. São complementares.

Tags: `anpd` `big-data` `pegadinha`

## 4. ETL × ELT

<b>ETL</b>: transforma <b>antes</b> de carregar no destino.<br><b>ELT</b>: carrega o dado bruto e transforma <b>depois</b>, dentro do destino. Mais flexível para mudar regras, mas guarda mais dado bruto.

Tags: `anpd` `big-data`

