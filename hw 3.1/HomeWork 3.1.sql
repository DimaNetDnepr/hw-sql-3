SELECT t2.orderNumber, t1.country, ROUND(SUM(quantityOrdered * priceEach), 2) sumOfOrder 
-- 2 это мы указываем на сколько округляем
FROM customers t1
JOIN orders t2
ON t1.customerNumber = t2.customerNumber

JOIN orderdetails t3
ON t2.orderNumber = t3.orderNumber

WHERE t1.country = "USA"
GROUP BY t2.orderNumber
ORDER BY sumOfOrder DESC
LIMIT 1;

-- ВЫВЕСТИ САМЫЙ ДОРОГОЙ ЗАКАЗ, СДЕЛАННЫЙ КЛИЕНТОМ ИЗ США.