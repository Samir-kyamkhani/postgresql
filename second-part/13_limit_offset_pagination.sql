-- LIMIT -> HOW MANY ROWS YOU WANT TO RETURN;
-- OFFSET -> HOW MANY ROWS YOU WANT TO SKIP;

SELECT name, price FROM basics.products ORDER BY name ASC LIMIT 5;

SELECT name, price
FROM basics.products
ORDER BY name ASC
LIMIT 5
OFFSET
    0;

SELECT name, price
FROM basics.products
ORDER BY name ASC
LIMIT 5
OFFSET
    5;
-- skip 5 product

SELECT name, price
FROM basics.products
ORDER BY name ASC
LIMIT 5
OFFSET
    10;