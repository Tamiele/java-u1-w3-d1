
--esercizio 1
--select * from clienti where clienti.nome='Mario'

--esercizio 2

--select nome, cognome from clienti where clienti.anno_di_nascita=1982;

--esercizio 3
--select numero_fattura from fatture where iva=20;

--esercizio 4
-- select * from prodotto where EXTRACT(YEAR FROM prodotto.data_attivazione)=1900
-- and (prodotto.in_produzione=true or prodotto.in_commercio=true);


--esercizio 5
--select * from fatture join clienti on clienti.numero_cliente = fatture.id_cliente where fatture.importo<1000;

--esercizio 6

--select numero_fattura,importo,iva,data_fattura,fornitori.denominazione from fatture
--join fornitori on fatture.numero_fornitura=fornitori.numero_fornitore

--esercizio 7

--select Extract(YEAR FROM data_fattura), count(*) from fatture where fatture.iva = 20 group by Extract(YEAR FROM data_fattura)

--esercizio 8

-- SELECT
--     EXTRACT(YEAR FROM data_fattura) AS anno_fattura,
--     COUNT(*) AS numero_fatture,
--     SUM(importo) AS totale_importo
-- FROM
--     fatture
-- GROUP BY
--     EXTRACT(YEAR FROM data_fattura)
-- ORDER BY
--     anno_fattura;


--esercizio 9

-- select EXTRACT(YEAR FROM data_fattura) as anno_fattura from fatture where fatture.tipologia='A'
-- GROUP BY EXTRACT(YEAR FROM data_fattura) having count(numero_fattura) >2
-- ORDER BY  anno_fattura;

-- esercizio 10

-- select sum (importo) as importi_regione, clienti.regione_residenza from fatture join clienti on clienti.numero_cliente= fatture.id_cliente
-- group by clienti.regione_residenza

--esercizio 11

-- SELECT
--     COUNT(DISTINCT clienti.numero_cliente) AS numero_clienti
-- FROM
--     clienti
-- JOIN
--     fatture ON clienti.numero_cliente = fatture.id_cliente
-- WHERE
--     clienti.anno_di_nascita = 1980
--     AND fatture.importo > 50;