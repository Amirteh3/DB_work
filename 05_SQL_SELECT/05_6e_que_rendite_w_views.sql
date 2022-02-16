-- Zeige die Aktie mit der max. Rendite im jeweiligen Industriesektor
-- Rendite p.a. in % = 
-- Dividendenanteil pro Aktie * Anzahl der Auszahlungen/Jahr / Aktienpreis (Kurs) * 100
-- Variante mit VIEWs


USE stocks;

-- Löschen falls vorhanden
DROP VIEW IF EXISTS renditen;
DROP VIEW IF EXISTS renditen_max;
DROP VIEW IF EXISTS top_werte_im_sektor;

-- Berechnung der jährl. Rendite aller Aktienwerte
CREATE VIEW renditen AS
SELECT
    c_name,
    round(dividend * payouts * 100 / price, 2) AS rendite
FROM stocks.ccc
;

#SELECT * FROM renditen LIMIT 20; -- Referenzierung auf VIEW wie Tab.
#SELECT * FROM stocks.renditen LIMIT 20; 

-- Berechnung der max. Rendite je Sektor
CREATE VIEW renditen_max AS
SELECT
    sector,
    ROUND(max(yield),2) AS rendite
FROM stocks.ccc
GROUP BY sector
;

SELECT * FROM renditen_max;


