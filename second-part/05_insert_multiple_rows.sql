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
        'Wireless Mouse 11',
        'Electronics',
        799.00,
        120,
        'ELEC-MOU-00111',
        true,
        'Ergonomic wireless mouse with USB receiver'
    ),
    (
        'USB-C Charger 1',
        'Electronics',
        1499.00,
        90,
        'ELEC-CHR-00111',
        true,
        '65W fast charging USB-C power adapter'
    );

SELECT *
FROM basics.products
WHERE
    sku IN (
        'ELEC-MOU-00111',
        'ELEC-CHR-00111'
    );