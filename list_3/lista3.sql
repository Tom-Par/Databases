1. SELECT SUM(cena*ilosc) FROM produkty;

7. SELECT nazwa, SUM(sztuk)*cena AS suma_wartosci FROM detal_zamow
   LEFT JOIN produkty ON p_id=idp GROUP BY p_id HAVING suma_wartosci > 7000;

9. SELECT DISTINCT nazwa,AVG(sztuk) FROM produkty 
   LEFT JOIN detal_zamow ON idp=p_id
   LEFT JOIN zamow ON idz=z_id WHERE DAYOFWEEK(data)=6;

 SELECT nazwa,AVG(sztuk) AS srednia_ilosc_sztuk FROM detal_zamow
 LEFT JOIN produkty ON idp=p_id
 LEFT JOIN zamow ON idz=z_id GROUP BY p_id;

14. 


