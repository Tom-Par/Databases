9. SELECT adres FROM klienci
   LEFT JOIN zamow ON idk=k_id
   LEFT JOIN detal_zamow ON z_id = idz WHERE p_id = 1
   ORDER BY REVERSE(nazwa) ASC;

11. SELECT * FROM klienci NATURAL JOIN produkty;

14. SELECT nazwa FROM produkty
    LEFT JOIN detal_zamow ON p_id = idp
    WHERE sztuk IS NULL;

15. SELECT nazwa FROM klienci
    LEFT JOIN zamow ON idk=k_id WHERE k_id IS NULL;

