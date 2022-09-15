SELECT C.NAME,
	SUM(P.AMOUNT)
FROM FILM_CATEGORY FC
JOIN INVENTORY I ON FC.FILM_ID = I.FILM_ID
JOIN RENTAL R ON I.INVENTORY_ID = R.INVENTORY_ID
JOIN PAYMENT P ON P.RENTAL_ID = R.RENTAL_ID
JOIN CATEGORY C ON FC.CATEGORY_ID = C.CATEGORY_ID
GROUP BY C.NAME
ORDER BY SUM(P.AMOUNT) DESC
LIMIT 1