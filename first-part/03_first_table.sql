DROP TABLE IF EXISTS basics.students;

CREATE TABLE
    basics.students (
        id SERIAL PRIMARY KEY,
        name TEXT NOT NULL,
        email TEXT NOT NULL UNIQUE,
        age INTEGER CHECK (age >= 18),
        created_at TIMESTAMP DEFAULT NOW ()
    );

INSERT INTO
    basics.students (name, email, age)
VALUES
    ('Sameer', 'sameer@gmial.com', 23),
    ('Sohail', 'sohail@gmial.com', 24);

SELECT
    *
FROM
    basics.students;