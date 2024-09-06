SELECT product_id
FROM Products p
WHERE EXISTS (
    SELECT 1
    FROM Products
    WHERE product_id = p.product_id AND low_fats = 'Y' AND recyclable = 'Y'
);
