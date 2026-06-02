-- Sub queries -> Queries inside another queries
-- Run Inneer queries first then Outer queries

-- EX
-- Which Post are performing better than average

SELECT advanced.posts.title AS post_title, advanced.posts.status, advanced.posts.views
FROM advanced.posts
WHERE
    advanced.posts.views > (
        SELECT AVG(advanced.posts.views)
        FROM advanced.posts
    )
ORDER BY advanced.posts.views DESC;