/* ------  Strukturen UNIQUE ----- */

/* 	 
	Tabelle mit id als PRIMARY KEY --> KEINE Duplikate moeglich
    AUTO_INCREMENT ++
    DEFAULT-Werte eintragen
*/

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;


/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.test
(
	id INT NOT NULL UNIQUE,
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
	age INT NOT NULL DEFAULT 0
);


/* Struktur der Tabelle anzeigen */
DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test(id,name,age) VALUES (1,"Grizabella",29);
INSERT INTO boo.test(id,name,age) VALUES (2,"Alonzo",35);
INSERT INTO boo.test(id,name,age) VALUES (3,"Alonzo",31);
INSERT INTO boo.test(id,name,age) VALUES (4,"Alonzo",25);



/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.test;

