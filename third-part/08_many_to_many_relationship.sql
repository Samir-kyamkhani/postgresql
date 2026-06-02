-- MANY TO MANY -> ONE POST CAN HAVE MULTIPLE TAGS AND ONE TAG CAN BE ASSOCIATED WITH MULTIPLES POSTS

-- POST ID = post_tags.post_id
-- Tags ID = post_tags.tag_id

SELECT 
    advanced.posts.title AS post_title,
    advanced.tags.name AS post_tag
FROM advanced.posts
INNER JOIN advanced.post_tags
    ON advanced.posts.id = advanced.post_tags.post_id
INNER JOIN advanced.tags
    ON advanced.tags.id = advanced.post_tags.tag_id
ORDER BY advanced.posts.title, advanced.tags.name;