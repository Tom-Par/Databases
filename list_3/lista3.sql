1. SELECT SUM(cena*ilosc) FROM produkty;

7. SELECT nazwa, SUM(sztuk)*cena AS suma_wartosci FROM detal_zamow
   LEFT JOIN produkty ON p_id=idp GROUP BY p_id HAVING suma_wartosci > 7000;

9. SELECT nazwa,AVG(sztuk) AS srednia_ilosc_sztuk FROM detal_zamow
   LEFT JOIN produkty ON idp=p_id
   LEFT JOIN zamow ON idz=z_id WHERE DAYOFWEEK(data)=6 GROUP BY p_id;

14. SELECT DATE(zamow.data) AS DATE, SUM(detal_zamow.sztuk * produkty.cena)
    AS SUM_OF_ORDER FROM zamow
    INNER JOIN detal_zamow ON zamow.idz = detal_zamow.z_id
    INNER JOIN produkty ON detal_zamow.p_id = produkty.idp GROUP BY DATE;


