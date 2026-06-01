SELECT name, price, stock, sku
FROM basics.products
WHERE
    sku = 'ELEC-MOU-001';

UPDATE basics.products
SET
    price = 899,
    stock = 130
WHERE
    sku = 'ELEC-MOU-001';

SELECT name, price, stock, sku
FROM basics.products
WHERE
    sku = 'ELEC-MOU-001';