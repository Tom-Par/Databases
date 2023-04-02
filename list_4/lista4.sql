1. CREATE VIEW klienci_all AS 
   SELECT idk,klienci.nazwa,miasto,adres,telefon,idz,idp,produkty.nazwa AS nazwa_produktu,cena,sztuk,data
   FROM klienci 
   LEFT JOIN zamow ON idk=k_id
   LEFT JOIN detal_zamow ON idz=z_id 
   LEFT JOIN produkty ON p_id=idp;
-----------------------------------------------------------------------------
  CREATE VIEW produkty_all AS
  SELECT idk,klienci.nazwa,miasto,adres,telefon,idz,idp,produkty.nazwa AS nazwa_produktu,cena,sztuk,data
  FROM klienci
  RIGHT JOIN zamow ON idk=k_id
  RIGHT JOIN detal_zamow ON idz=z_id
  RIGHT JOIN produkty ON p_id=idp;

4. SELECT DISTINCT k1.nazwa FROM klienci_all k1
   JOIN klienci_all k2 ON k1.cena>k2.cena
   AND LOCATE('laptop', k2.nazwa_produktu)>0;

12. SELECT miasto,MIN(nazwa) AS nazwa, MAX(data) AS ostatnie_zamowienie
    FROM klienci_all GROUP BY miasto;


