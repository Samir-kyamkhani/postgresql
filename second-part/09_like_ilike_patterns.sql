-- like => case senstive  pattern match
-- ilike = case insenstive  pattern match
-- % => any number of chars
-- _ => exactly one char

-- the % after Mechanical means anything can come after it
SELECT name, price
FROM basics.products
WHERE
    name LIKE 'Mechanical%';

SELECT name, price
FROM basics.products
WHERE
    name ILIKE '%mechanical%';