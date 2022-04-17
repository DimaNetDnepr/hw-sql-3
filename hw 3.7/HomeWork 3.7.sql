SELECT productName, COUNT(t1.country) countCountry
FROM customers t1
JOIN orders t2
ON t1.customerNumber = t2.customerNumber

JOIN orderdetails t3
ON t2.orderNumber = t3.orderNumber

JOIN products t4
ON t4.productCode = t3.productCode

GROUP BY productName;

--  Выведите название товара и количество стран, в которых он был заказан