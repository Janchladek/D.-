
1

SELECT AVG(cena_pozicania)  FROM blok ;


SELECT Znacka FROM auta WHERE znacka LIKE "F%" ;


SELECT meno FROM zakaznik GROUP BY meno ORDER BY meno;

 SELECT znacka,vykon FROM auta WHERE cena_auta >20000;


2.

SELECT * FROM blok ORDER BY datum_pozicania ;


SELECT palivo,cena_auta FROM auta  WHERE Pocet_KM BETWEEN 40000 AND 70000 ;



3
SELECT znacka,vykon FROM auta GROUP BY znacka ORDER BY vykon LIMIT 1;



3.3




SELECT znacka,Pocet_KM,COUNT(*) AS vyko FROM auta  GROUP BY vykon HAVING vykon > 200;



