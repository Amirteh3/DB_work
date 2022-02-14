/* Datenimport - csv mit ID */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Tabelle cats*/
DROP TABLE IF EXISTS boo.cats;

CREATE TABLE IF NOT EXISTS boo.cats
(
    id INT NOT NULL PRIMARY KEY,
    cat_name VARCHAR(20) NOT NULL,
    fur_color VARCHAR(20) NOT NULL,
    age INT NOT NULL
);

DESCRIBE boo.cats;


