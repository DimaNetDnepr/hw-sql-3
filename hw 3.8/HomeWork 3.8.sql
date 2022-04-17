SELECT t1.productName, t2.quantityOrdered

FROM products t1
JOIN orderdetails t2
ON t1.productCode = t2.productCode

JOIN orders t3
ON t2.orderNumber = t3.orderNumber

JOIN customers t4
ON t3.customerNumber = t4.customerNumber

WHERE t4.country = "USA"
ORDER BY t2.quantityOrdered DESC
LIMIT 1;

-- ВЫВЕСТИ НАЗВАНИЕ ТОВАРА, КОТОРЫЙ ЯВЛЯЕТСЯ ЛИДЕРОМ ПО ПРОДАЖАМ В ПОЛЬШЕ/США.