SELECT t1.orderNumber, t4.country
FROM orderdetails t1
JOIN products t2
ON t1.productCode = t2.productCode
JOIN orders t3
ON t1.orderNumber = t3.orderNumber
JOIN customers t4
ON t3.customerNumber = t4.customerNumber

WHERE country = "USA"
GROUP BY t3.customerNumber;

-- ВЫВЕСТИ ВСЕ ТОВАРЫ, КОТОРЫЕ БЫЛИ ЗАКАЗАНЫ КЛИЕНТАМИ ИЗ США.