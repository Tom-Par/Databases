1. SELECT SUM(cena*ilosc) FROM produkty;

7. SELECT nazwa, SUM(sztuk)*cena AS suma_wartosci FROM detal_zamow
   LEFT JOIN produkty ON p_id=idp GROUP BY p_id HAVING suma_wartosci > 7000;

9. 

14. 


