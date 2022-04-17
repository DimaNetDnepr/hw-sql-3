SELECT productName, count(*) countOrders

FROM orderdetails t1
JOIN products t2
ON t1.productCode = t2.productCode

GROUP BY productName
HAVING countOrders > 3;

-- ВЫВЕСТИ ВСЕ ТОВАРЫ, КОТОРЫЕ БЫЛИ ЗАКАЗНЫ МИНИМУМ ТРИЖДЫ.