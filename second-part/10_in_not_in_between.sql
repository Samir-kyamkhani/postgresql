-- IN => value must match one item from the list
-- NOT IN => value not match any time from the list
-- BETWEEN => value must be inside an range

SELECT
    name AS product_name,
    price AS selling_price,
    category AS product_category
FROM basics.products
WHERE
    category IN ('Stationery', 'Electronics');

SELECT
    name AS product_name,
    price AS selling_price,
    category AS product_category
FROM basics.products
WHERE
    category NOT IN ('Stationery', 'Electronics');

SELECT
    name AS product_name,
    price AS selling_price,
    category AS product_category
FROM basics.products
WHERE
    price BETWEEN 100 AND 500;

SELECT
    name AS product_name,
    price AS selling_price,
    category AS product_category
FROM basics.products
WHERE
    category NOT IN ('Stationery', 'Electronics')
    AND (price BETWEEN 100 AND 500);