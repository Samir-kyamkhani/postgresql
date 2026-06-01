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
        'Wireless Mouse 1',
        'Electronics',
        799.00,
        120,
        'ELEC-MOU-0011',
        true,
        'Ergonomic wireless mouse with USB receiver'
    );

SELECT * FROM basics.products WHERE sku = 'ELEC-MOU-0011';