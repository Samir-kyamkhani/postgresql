-- NOT NULL, UNIQUE, DEFAULT, CHECK

DROP TABLE IF EXISTS basics.accounts;

CREATE Table basics.accounts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    is_active BOOLEAN DEFAULT true,
    age INTEGER CHECK (age >= 18),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO
    basics.accounts (full_name, email, age)
VALUES (
        'sameer khan',
        'sameer@gmail.com',
        19
    );

-- NULL
INSERT INTO
    basics.accounts (full_name, email, age)
VALUES ('sameerkhan@gmail.com', 19);

-- AGE CHECK
INSERT INTO
    basics.accounts (full_name, email, age)
VALUES ('', 'sameer@gmail.com', 5);

-- -- EMAIL CHECK
INSERT INTO
    basics.accounts (full_name, email, age)
VALUES (
        'sameer',
        'sameer@gmail.com',
        20
    );

SELECT * FROM basics.accounts;