SELECT
    name,
    price,
    stock,
    category,
    is_active
FROM basics.products
WHERE
    category = 'Electronics';

UPDATE basics.products
SET
    price = ROUND(price * 1.10, 2),
    stock = 0
WHERE
    category = 'Electronics';

UPDATE basics.products SET is_active = FALSE WHERE stock = 0;

SELECT
    name,
    price,
    stock,
    category,
    is_active
FROM basics.products
WHERE
    category = 'Electronics';