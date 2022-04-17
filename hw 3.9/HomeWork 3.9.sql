SELECT t1.productName, COUNT(t2.orderNumber), ROUND(SUM(t1.buyPrice), 2)

FROM products t1
LEFT JOIN orderdetails t2
ON t1.productCode = t2.productCode

JOIN orders t3
ON t2.orderNumber = t3.orderNumber
WHERE t3.status = "Shipped"

GROUP BY t1.productName;

-- Выведите название товара, количество проданных штук их общую стоимость