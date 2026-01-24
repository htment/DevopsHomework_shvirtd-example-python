-- init.sql
CREATE DATABASE IF NOT EXISTS example;
USE example;

DROP TABLE IF EXISTS requests;

-- Таблица должна совпадать с той, которую создает код в main.py
CREATE TABLE requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    request_date DATETIME,
    request_ip VARCHAR(255)
);