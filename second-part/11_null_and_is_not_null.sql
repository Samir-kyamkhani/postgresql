-- NULL - missing/unknow value
-- IS NULL
-- IS NOT NULL

SELECT name AS product_name, description
FROM basics.products
WHERE
    description IS NOT NULL;

SELECT name AS product_name, description
FROM basics.products
WHERE
    description IS NULL;