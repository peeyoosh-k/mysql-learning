CREATE DATABASE IF NOT EXISTS mysql_learning;
USE mysql_learning;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50) NOT NULL,
    city VARCHAR(40),
    marks DECIMAL(5,2)
);

INSERT INTO students (student_name, city, marks)
VALUES ('Mukesh', 'Delhi', 25.5),
       ('Sumesh', 'Mumbai', 56.2),
       ('Rahul', 'Patna', 87.3),
       ('Ganesh', 'Delhi', 80.0),
       ('Saurav', 'Chapra', 93.5),
       ('Mukesh', 'Banaras', NULL),
       ('Preeti', 'Patna', 10.5),
       ('Meena', NULL, 96.0);