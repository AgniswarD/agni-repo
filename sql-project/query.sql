CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    title VARCHAR(50),
    reports_to INT,
    levels INT,
    birthdate DATE,
    hire_date DATE,
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(20),
    phone VARCHAR(20),
    fax VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    company VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(20),
    phone VARCHAR(20),
    fax VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE invoice (
    invoice_id INT PRIMARY KEY,
    customer_id INT,
    invoice_date DATE,
    billing_address VARCHAR(100),
    billing_city VARCHAR(50),
    billing_state VARCHAR(50),
    billing_country VARCHAR(50),
    billing_postal_code VARCHAR(20),
    total DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE invoice_line (
    invoice_line_id INT PRIMARY KEY,
    invoice_id INT,
    track_id INT,
    unit_price DECIMAL(10, 2),
    quantity INT,
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id)
);

CREATE TABLE playlist (
    playlist_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE playlist_track (
    playlist_id INT,
    track_id INT,
    PRIMARY KEY (playlist_id, track_id),
    FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id),
    FOREIGN KEY (track_id) REFERENCES track(track_id)
);

CREATE TABLE track (
    track_id INT PRIMARY KEY,
    name VARCHAR(50),
    album_id INT,
    media_type_id INT,
    milliseconds INT,
    bytes INT,
    unit_price DECIMAL(10, 2)
);

CREATE TABLE media_type (
    media_type_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE genre (
    genre_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE album (
    album_id INT PRIMARY KEY,
    title VARCHAR(50),
    artist_id INT
);

CREATE TABLE artist (
    artist_id INT PRIMARY KEY,
    name VARCHAR(50)
);
