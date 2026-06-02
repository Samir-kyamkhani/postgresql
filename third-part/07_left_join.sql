-- LEFT JOIN -> It's keep all rows from the left table
-- IF the Right Table has matching data, postgresql include that
--  IF it's don't have any matching data it's return null

-- Posts Table -> left
-- Comment Table -> Right

-- Because of not every posts is going have comment
-- Some posts have 100 comment and some will have 0

SELECT 
    advanced.posts.title AS post_title,
    advanced.comments.body AS comment_body
FROM advanced.posts
LEFT JOIN advanced.comments
    ON advanced.posts.id = advanced.comments.post_id
ORDER BY advanced.posts.title ASC;

