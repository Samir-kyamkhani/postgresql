-- ALIASES -> Make your queries shorter and easier to read

SELECT
    p.title AS post_title,
    p.status,
    p.views,
    u.name AS author_name,
    c.body AS comment_body
FROM advanced.posts AS p
    INNER JOIN advanced.users AS u ON p.user_id = u.id
    LEFT JOIN advanced.comments AS c ON c.post_id = p.id
ORDER BY p.views DESC;