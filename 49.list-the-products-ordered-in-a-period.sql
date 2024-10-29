SELECT product_name, sum(unit) AS unit FROM products
JOIN orders USING(product_id)
WHERE year(order_date) = 2020 AND month(order_date) = 2
GROUP BY 1
HAVING sum(unit) > 99