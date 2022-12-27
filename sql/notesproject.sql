-- one table 'users' with all the information
-- one table 'notes' with all the notes referring to users table

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS notes;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    pictureurl VARCHAR
);

CREATE TABLE notes(
    id SERIAL PRIMARY KEY,
    textnote TEXT,
    users_id INTEGER NOT NULL REFERENCES users(id)
);