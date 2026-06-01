SELECT name, price FROM basics.products ORDER BY price ASC;

SELECT name, price FROM basics.products ORDER BY price DESC;

SELECT name, category, price
FROM basics.products
ORDER BY category ASC, price DESC;