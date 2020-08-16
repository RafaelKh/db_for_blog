CREATE DATABASE IF NOT EXISTS blog;

USE blog;

CREATE TABLE IF NOT EXISTS users (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age TINYINT(80) UNSIGNED NOT NULL,
gender ENUM('male', 'female')
);

CREATE TABLE IF NOT EXISTS articles (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(20) NOT NULL,
content text NOT NULL,
categories_id VARCHAR(30) NULL,
likes int NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS comments (
id INT AUTO_INCREMENT PRIMARY KEY,
content VARCHAR(255) NOT NULL,
art_or_comm ENUM('c', 'a')  NOT NULL,
addressee_id int NOT NULL
);

CREATE TABLE IF NOT EXISTS categories (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL
)ENGINE=InnoDB;

INSERT INTO users (name, age, gender)
VALUES ('Mike', 26, 'male');

INSERT INTO users (name, age, gender)
VALUES ('Emilia', 26, 'female');

INSERT INTO articles (title, content, categories_id, likes)
VALUES ('Article title N1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '1 3', 1655);

INSERT INTO articles (title, content, categories_id, likes)
VALUES ('Article title N2', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2', 65125);

INSERT INTO comments (content, art_or_comm, addressee_id)
VALUES ('Long comment', 'a', 2);

INSERT INTO comments (content, art_or_comm, addressee_id)
VALUES ('Long comment', 'c', 1);

INSERT INTO categories (name)
VALUES ('Politics');

INSERT INTO categories (name)
VALUES ('Programming');

INSERT INTO categories (name)
VALUES ('Nature');

