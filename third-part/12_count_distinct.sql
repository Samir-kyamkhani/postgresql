-- Count unique values
-- Count how many unique posts are contected to each tag

SELECT
    advanced.tags.name AS tag_name,
    COUNT(advanced.posts.id) AS total_unique_posts
FROM advanced.tags
    LEFT JOIN advanced.post_tags ON advanced.tags.id = advanced.post_tags.tag_id
    LEFT JOIN advanced.posts ON advanced.posts.id = advanced.post_tags.post_id
GROUP BY
    advanced.tags.id,
    advanced.tags.name
ORDER BY total_unique_posts DESC;