


SELECT AVG(cena_pozicania)  FROM blok ;                  /*vypise primernu cenu pozicania*/


SELECT Znacka FROM auta WHERE znacka LIKE "F%" ;            /*Vypise znacku auta zacinajuce na pismeno F */


SELECT meno FROM zakaznik GROUP BY meno ORDER BY meno;      /*Vypise mena podla abecedy*/
 
 SELECT znacka,vykon FROM auta WHERE cena_auta >20000;       /*Vypise znacku a vykon auta ktore maju vačšsiu hodnotu ako 20000*/




SELECT * FROM blok ORDER BY datum_pozicania ;            /*usporiada tabulku podla datumu pozicania*/


SELECT palivo,cena_auta FROM auta  WHERE Pocet_KM BETWEEN 40000 AND 70000 ; /*Vypise typ paliva a cenu aut ktore maju cenu medzi 40000 a 70000*/



SELECT znacka,vykon FROM auta GROUP BY znacka ORDER BY vykon LIMIT 6; 
 




SELECT znacka,Pocet_KM,COUNT(*) AS vyko FROM auta  GROUP BY vykon HAVING vykon > 200;    /*Vypise znacku a pocet km aut ktore maju vykon > 200*/



SELECT znacka,Cena_auta,Pocet_KM FROM auta JOIN blok ON blok.id WHERE Cena_auta > 50000 GROUP BY znacka;    /*Vypise znacku,Cenu auta,Pocet KM  ktore maju cenu  > 50000*/