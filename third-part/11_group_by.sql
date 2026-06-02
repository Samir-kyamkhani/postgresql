-- Group By -> Creates Groups of rows
-- WHERE IS FIlters Normal rows befor grouping
-- HAVING Filters Groups after grouping

-- Uses
-- Find the author how have writen at least two post

SELECT
    advanced.users.name AS author_name,
    COUNT(advanced.posts.id) AS total_posts,
    SUM(advanced.posts.views) AS total_views
FROM advanced.users
    LEFT JOIN advanced.posts ON advanced.users.id = advanced.posts.user_id
GROUP BY
    advanced.users.id,
    advanced.users.name
HAVING
    COUNT(advanced.posts.id) >= 2
ORDER BY total_posts DESC