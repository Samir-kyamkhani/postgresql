DROP TABLE IF EXISTS basics.values_example;

CREATE TABLE basics.values_example (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    nickname TEXT,
    bio TEXT,
    score INT
);

INSERT into
    basics.values_example (nickname, bio, score)
VALUES (
        null,
        'learning purpose psql',
        4
    ),
    (
        '',
        'learning purpose psql',
        4
    ),
    ('sameer', '', 0),
    ('test', null, null);

SELECT * FROM basics.values_example;

SELECT * FROM basics.values_example WHERE nickname IS NULL;

SELECT * FROM basics.values_example WHERE nickname IS NOT NULL;

SELECT * FROM basics.values_example WHERE nickname = '';

SELECT * FROM basics.values_example WHERE score = 0;