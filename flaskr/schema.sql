DROP TABLE IF EXISTS menuCategories;

DROP TABLE IF EXISTS menuItems;

DROP TABLE IF EXISTS reviews;

DROP TABLE IF EXISTS customers;

DROP TABLE IF EXISTS images;

DROP TABLE IF EXISTS users;

CREATE TABLE
    menuCategories (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title VARCHAR(50) NOT NULL,
        image VARCHAR(1000) NOT NULL
    );

CREATE TABLE
    menuItems (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title VARCHAR(255) NOT NULL,
        image VARCHAR(1000) NOT NULL,
        description TEXT NOT NULL,
        type VARCHAR(50) NOT NULL,
        price DECIMAL(13, 4) NOT NULL,
        categoryId INTEGER NOT NULL,
        Foreign Key (categoryId) REFERENCES menuCategory (id)
    );

CREATE TABLE
    reviews (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        image VARCHAR(1000),
        post TEXT NOT NULL,
        rating INTEGER NOT NULL DEFAULT 5,
        customerId INTEGER COMMENT 'include if customer has account, but can be null, which would be anonymous'
    );

CREATE TABLE
    customers (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username VARCHAR(255) NOT NULL,
        password TEXT NOT NULL,
        profilePicture VARCHAR(1000) COMMENT 'add a default avatar',
        title VARCHAR(255) NOT NULL DEFAULT 'Local Guide'
    );

CREATE TABLE
    images (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        image VARCHAR(1000) NOT NULL
    );

CREATE TABLE
    users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name VARCHAR(255) NOT NULL,
        password TEXT NOT NULL DEFAULT 'Password123',
        role VARCHAR(50) NOT NULL
    );