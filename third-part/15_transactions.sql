-- Transaction -> multiple sql statment run as one safe unit

-- EX
-- Placing an oreder
-- reduce stock of the product
-- creating payment records
-- transfering money
-- creating user records with relted profile data

BEGIN;

UPDATE advanced.posts
SET
    status = 'published'
WHERE
    title = 'INDEX For Beginers'
    AND status = 'draft';

UPDATE advanced.posts
SET
    views = views + 20
WHERE
    title = 'INDEX For Beginers';

SELECT title, status, views
FROM advanced.posts
WHERE
    title = 'INDEX For Beginers';

COMMIT;