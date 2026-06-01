DROP TABLE IF EXISTS basics.products_basic;

CREATE TABLE
    basics.products_basic (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        description TEXT,
        stock INT DEFAULT 0,
        total_views BIGINT DEFAULT 0,
        price NUMERIC(10, 2),
        is_active BOOLEAN DEFAULT true
    );

-- QUERYS
INSERT INTO
    basics.products_basic (
        name,
        description,
        stock,
        total_views,
        price,
        is_active
    )
VALUES
    (
        'iphone 1',
        'somthing.........',
        20,
        34,
        234.55,
        false
    ),
    (
        'iphone 2',
        'somthing.........',
        20,
        34,
        234.55,
        true
    );

SELECT
    *
FROM
    basics.products_basic;

SELECT
    id,
    name,
    stock,
    price,
    is_active
FROM
    basics.products_basic
WHERE
    is_active;