USE codeup_test_db;


CREATE TABLE users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email    VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title       VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    category    VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE category
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id)
);

CREATE TABLE ad_category
(
    cat_id INTEGER UNSIGNED NOT NULL,
    ad_id  INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (cat_id) REFERENCES category (id),
    FOREIGN KEY (ad_id) REFERENCES ads (id)
);


