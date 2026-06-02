-- ONE TO MANY -> One user can have multiples posts but one post have only one user

SELECT 
    advanced.users.name AS author_name, 
    advanced.posts.title AS post_title, 
    advanced.posts.status
FROM advanced.users
INNER JOIN advanced.posts
    ON advanced.users.id = advanced.posts.user_id
ORDER BY advanced.users.name, advanced.posts.title;