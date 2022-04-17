SELECT orderNumber, ROUND(SUM(quantityOrdered * priceEach), 2) sumir
FROM orderdetails
GROUP BY orderNumber

HAVING sumir > (
SELECT AVG(sumir)
FROM (
SELECT ROUND(SUM(quantityOrdered * priceEach), 2) sumir
FROM orderdetails
GROUP BY orderNumber
) query
);

-- ВЫВЕСТИ ВСЕ ЗАКАЗЫ, СТОИМОСТЬ КОТОРОЙ ВЫШЕ СРЕДНЕЙ.