-- AND => EVERY CONDITION MUST BE TRUE
-- OR => AT LEAST ONE CONDITION MUST BE TRUE
-- NOT => REVERSE/EXCLUDE A CONDITION

SELECT
    id AS product_id,
    name AS product_name,
    category AS product_category
FROM basics.products
WHERE
    category = 'Electronics'
    AND price > 2000;

SELECT
    id AS product_id,
    name AS product_name,
    category AS product_category
FROM basics.products
WHERE
    category = 'Electronics'
    OR category = 'Furniture';

SELECT
    id AS product_id,
    name AS product_name,
    category AS product_category
FROM basics.products
WHERE
    NOT category = 'Electronics';

SELECT
    id AS product_id,
    name AS product_name,
    stock AS product_stock,
    category AS product_category
FROM basics.products
WHERE (
        category = 'Electronics'
        OR category = 'Furniture'
    )
    AND stock > 0;

SELECT
    id AS product_id,
    stock AS product_stock,
    price AS product_price,
    is_active AS product_active
FROM basics.products
WHERE
    is_active = true
    AND (
        price < 1000
        OR stock >= 100
    );