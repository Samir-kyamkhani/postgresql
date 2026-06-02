DROP TABLE IF EXISTS advanced.post_tags;

DROP TABLE IF EXISTS advanced.comments;

DROP TABLE IF EXISTS advanced.posts;

DROP TABLE IF EXISTS advanced.tags;

DROP TABLE IF EXISTS advanced.users;

CREATE TABLE advanced.users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    name TEXT NOT NULL
);

CREATE TABLE advanced.posts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    user_id UUID NOT NULL REFERENCES advanced.users (id),
    title TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'draft' CHECK (
        status IN ('draft', 'published')
    ),
    views INTEGER NOT NULL DEFAULT 0 CHECK (views >= 0)
);

CREATE TABLE advanced.comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    post_id UUID NOT NULL REFERENCES advanced.posts (id),
    body TEXT NOT NULL
);

CREATE TABLE advanced.tags (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE advanced.post_tags (
    post_id UUID NOT NULL REFERENCES advanced.posts (id),
    tag_id UUID NOT NULL REFERENCES advanced.tags (id),
    -- COMPOSE PRIMARY KEY
    PRIMARY KEY (post_id, tag_id)
);

INSERT INTO advanced.users (name) VALUES ('Sameer'), ('Ankit');

INSERT INTO
    advanced.posts (user_id, title, status, views)
SELECT id, 'Postgress Joins Explained', 'published', 100
FROM advanced.users
WHERE
    name = 'Sameer';

INSERT INTO
    advanced.posts (user_id, title, status, views)
SELECT id, 'INDEX For Beginers', 'draft', 40
FROM advanced.users
WHERE
    name = 'Sameer';

INSERT INTO
    advanced.posts (user_id, title, status, views)
SELECT id, 'Backend Api With Psql', 'published', 50
FROM advanced.users
WHERE
    name = 'Ankit';

INSERT INTO
    advanced.comments (post_id, body)
SELECT id, 'Very clear explaintion'
FROM advanced.posts
WHERE
    title = 'Postgress Joins Explained';

INSERT INTO
    advanced.comments (post_id, body)
SELECT id, 'Please add more exapmles'
FROM advanced.posts
WHERE
    title = 'Backend Api With Psql';

INSERT INTO advanced.tags (name) VALUES ('sql'), ('backend');

INSERT INTO
    advanced.post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM advanced.posts p, advanced.tags t
WHERE
    p.title = 'Postgress Joins Explained'
    AND t.name = 'sql';

INSERT INTO
    advanced.post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM advanced.posts p, advanced.tags t
WHERE
    p.title = 'INDEX For Beginers'
    AND t.name = 'sql';

INSERT INTO
    advanced.post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM advanced.posts p, advanced.tags t
WHERE
    p.title = 'Backend Api With Psql'
    AND t.name = 'backend';

SELECT 'Third Part reduced database reset and sample data inserted sucessfully' AS message;