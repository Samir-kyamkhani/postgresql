-- Returning -> is return the rows immediately after performing the creaet, update, delete

INSERT INTO
    basics.products (
        name,
        category,
        price,
        stock,
        sku,
        is_active,
        description
    )
VALUES (
        'test',
        'test',
        1,
        2,
        '11111111',
        TRUE,
        'sssssssssssssss'
    )
RETURNING
    id,
    name,
    price,
    stock,
    created_at;

UPDATE basics.products
SET
    price = ROUND(price * 1.10, 2),
    stock = 1
WHERE
    sku = '11111111'
RETURNING
    *;

DELETE FROM basics.products WHERE sku = '11111111' RETURNING *;

SELECT * FROM basics.products WHERE sku = '11111111';