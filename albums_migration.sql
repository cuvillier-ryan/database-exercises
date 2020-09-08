USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist VARCHAR(200),
name VARCHAR(150),
release_date INT(4),
sales FLOAT(9),
genre VARCHAR(300),
PRIMARY KEY(id)
);
