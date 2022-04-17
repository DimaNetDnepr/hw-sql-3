SELECT t1.country, COUNT(t2.orderNumber) asCount

FROM customers t1
RIGHT JOIN orders t2
ON t1.customerNumber = t2.customerNumber

GROUP BY t1.country

-- ВЫВЕДИТЕ СПИСОК СТРАН И КОЛИЧЕСТВО ЗАКАЗАВ, СДЕЛАННЫЕ ИХ ЖИТЕЛЯМИ