-- Run 01-basics/schema.sql first. This file is not repeatable.
USE mysql_learning;

ALTER TABLE students ADD COLUMN email VARCHAR(100);

ALTER TABLE students ADD COLUMN status VARCHAR(10) NOT NULL DEFAULT 'active';

INSERT INTO students (student_name, city, marks)
VALUES ('Anil', 'Delhi', 70);

INSERT INTO students (student_name, city, marks, status)
VALUES ('Nikhil', 'Chennai', 64, 'inactive');