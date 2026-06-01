SELECT
    id,
    name,
    price,
    stock,
    sku,
    is_active,
    category
FROM basics.products
WHERE
    category = 'Electronics';

-- AS creates as alises for the output of that colulmn name
-- makes the colums name easier to read

SELECT
    id AS product_id,
    name AS product_name,
    price AS selling_price,
    stock AS available_quantity,
    sku AS product_sku,
    is_active AS product_active,
    category AS product_category
FROM basics.products
WHERE
    category = 'Stationery';

SELECT
    id AS product_id,
    name AS product_name,
    price AS selling_price,
    stock AS available_quantity,
    sku AS product_sku,
    is_active AS product_active,
    category AS product_category
FROM basics.products
WHERE
    price > 2000;