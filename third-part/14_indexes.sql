-- INDEX helps postgres find eows faster

-- CRETE Index

-- idx_posts_status
-- idx = Index
-- posts = table
-- status = colum name

CREATE INDEX IF NOT EXISTS idx_posts_status ON advanced.posts (status)

--
SELECT title, status, views
FROM advanced.posts
WHERE
    status = 'published'
ORDER BY views DESC

-- Composite index
CREATE INDEX IF NOT EXISTS idx_posts_status_views ON advanced.posts (status, views DESC)

-- CREATEING INDEXING ON FOREIGN KEY

SELECT title, status, views
FROM advanced.posts
WHERE
    user_id = (
        SELECT id
        FROM advanced.users
        WHERE
            name = 'Sameer'
    )

CREATE INDEX IF NOT EXISTS idx_posts_user_id ON advanced.posts (user_id)