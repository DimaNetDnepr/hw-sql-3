SELECT t1.country, ROUND(SUM(t3.priceEach*t3.quantityOrdered), 2)  maxOrderPrice

FROM customers t1
JOIN orders t2
ON t1.customerNumber = t2.customerNumber

JOIN orderdetails t3
ON t2.orderNumber = t3.orderNumber

GROUP BY t1.country, t2.orderNumber
ORDER BY maxOrderPrice DESC;

-- Выведите список стран и самый дорогой заказ, сделанный в каждой из них