-- Its Alway's calculate one result from many rows
-- COUNT() -> Give the total number of rows
-- SUM() -> Give the total Value
-- AVG() -> Give the average Value
-- MIN() -> Give the smallest Value
-- MAx() -> Give the maximum Value

-- Uses

-- ADMIN PANEL, DASHBOARD, REPORTS, ANALYTICS,

SELECT
    COUNT(*) AS total_posts,
    COUNT(*) FILTER (
        WHERE
            status = 'published'
    ) AS published_post,
    SUM(views) AS total_views,
    AVG(views) AS average_views,
    MIN(views) AS min_views,
    MAX(views) AS max_views
FROM advanced.posts;