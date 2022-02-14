/* CRUD Create | Read | Update | Delete */  

-- CREATE: siehe 04_ ...ALTER

SELECT * FROM boo.cats;

/* UPDATE --> Änderung(en) in bestehender Tab. */
UPDATE boo.cats SET cat_name = "Alonzo" WHERE id = 2;
UPDATE boo.cats SET fur_color = "grey" WHERE id = 3;


SELECT * FROM boo.cats;