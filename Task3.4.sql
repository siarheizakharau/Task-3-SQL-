SELECT DISTINCT F.TITLE AS "Title"
FROM FILM F
LEFT JOIN INVENTORY I ON I.FILM_ID = F.FILM_ID
WHERE I.INVENTORY_ID IS NULL