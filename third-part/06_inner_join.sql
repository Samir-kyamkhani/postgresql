-- INNER JOIN -> It's return only matching rows from both tables

SELECT 
    advanced.users.name AS author_name,
    advanced.posts.title AS post_title,
    advanced.posts.status,
    advanced.posts.views
FROM advanced.posts
INNER JOIN advanced.users
    ON advanced.posts.user_id = advanced.users.id
WHERE advanced.posts.status = 'published'
ORDER BY advanced.posts.views ASC;