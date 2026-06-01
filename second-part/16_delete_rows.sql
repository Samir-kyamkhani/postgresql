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
    );

DELETE FROM basics.products WHERE sku = '11111111';

SELECT * FROM basics.products WHERE sku = '11111111';