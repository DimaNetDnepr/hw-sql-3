SELECT contactFirstName, orderNumber

FROM customers t1
JOIN orders t2
ON t1.customerNumber = t2.customerNumber

WHERE contactFirstName LIKE '%F%'

-- ВЫВЕСТИ ВСЕ ЗАКАЗЫ, СДЕЛАННЫЕ КЛИЕНТОМ, В ИМЕНИ КОТОРОГО ЕСТЬ БУКВА "F"