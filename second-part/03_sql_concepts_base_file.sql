DROP TABLE IF EXISTS basics.products;

CREATE TABLE basics.products (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
    is_active BOOLEAN NOT NULL DEFAULT true,
    sku TEXT UNIQUE,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO
    basics.products (
        name,
        category,
        price,
        stock,
        sku,
        is_active,
        description
    )
VALUES (
        'Wireless Mouse',
        'Electronics',
        799.00,
        120,
        'ELEC-MOU-001',
        true,
        'Ergonomic wireless mouse with USB receiver'
    ),
    (
        'Mechanical Keyboard',
        'Electronics',
        2499.00,
        45,
        'ELEC-KBD-001',
        true,
        'RGB backlit mechanical keyboard with blue switches'
    ),
    (
        'Office Chair',
        'Furniture',
        6499.00,
        20,
        'FURN-CHR-001',
        true,
        'Adjustable ergonomic office chair'
    ),
    (
        'Water Bottle',
        'Accessories',
        299.00,
        200,
        'ACC-BTL-001',
        true,
        '1-liter stainless steel insulated bottle'
    ),
    (
        'Notebook',
        'Stationery',
        99.00,
        500,
        'STAT-NBK-001',
        true,
        'A5 ruled notebook with 200 pages'
    ),
    (
        'Gaming Headset',
        'Electronics',
        3499.00,
        35,
        'ELEC-HST-001',
        true,
        'Surround sound gaming headset with microphone'
    ),
    (
        'LED Desk Lamp',
        'Home',
        1299.00,
        75,
        'HOME-LMP-001',
        true,
        'Adjustable LED desk lamp with touch controls'
    ),
    (
        'Yoga Mat',
        'Fitness',
        899.00,
        60,
        'FIT-MAT-001',
        true,
        'Non-slip yoga mat for workouts and stretching'
    ),
    (
        'Coffee Mug',
        'Kitchen',
        249.00,
        150,
        'KIT-MUG-001',
        true,
        'Ceramic coffee mug, 350ml capacity'
    ),
    (
        'USB-C Charger',
        'Electronics',
        1499.00,
        90,
        'ELEC-CHR-001',
        true,
        '65W fast charging USB-C power adapter'
    );

SELECT * FROM basics.products;