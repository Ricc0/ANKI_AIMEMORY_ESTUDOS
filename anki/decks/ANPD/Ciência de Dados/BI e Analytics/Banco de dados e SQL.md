# ANPD::Ciência de Dados::BI e Analytics::Banco de dados e SQL

5 card(s).

## 1. Chave primária × chave estrangeira

<b>PK</b>: identifica unicamente cada registro.<br><b>FK</b>: coluna que referencia a PK de outra tabela, criando um relacionamento (ex.: Pedidos.id_cliente → Clientes.id_cliente, 1:N).

Tags: `anpd` `bi` `sql`

## 2. WHERE × HAVING

<b>WHERE</b> filtra <b>linhas antes</b> do agrupamento.<br><b>HAVING</b> filtra <b>grupos depois</b> do GROUP BY (pode até eliminar todos os grupos).

Tags: `anpd` `bi` `pegadinha` `sql`

## 3. WHERE coluna = NULL retorna as linhas nulas?

<b>Não.</b> Nunca retorna linhas: NULL não é igual a nada, nem a si mesmo. O correto é <b>WHERE coluna IS NULL</b>.

Tags: `anpd` `bi` `pegadinha` `sql`

## 4. Para que serve o JOIN?

Combinar tabelas relacionadas casando a FK com a PK (ex.: <code>JOIN Clientes c ON p.id_cliente = c.id_cliente</code>), para trazer o nome do cliente junto com seus pedidos.

Tags: `anpd` `bi` `sql`

## 5. O que significam BI, SQL, PK, FK e NULL?

<b>BI</b>: Business Intelligence (inteligência de negócios).<br><b>SQL</b>: Structured Query Language (linguagem de consulta estruturada).<br><b>PK</b>: Primary Key (chave primária).<br><b>FK</b>: Foreign Key (chave estrangeira).<br><b>NULL</b>: valor ausente (não é zero nem texto vazio).

Tags: `anpd` `bi` `sql` `vocabulario`

