-- Run 01-basics/schema.sql first. This file is not repeatable.
USE mysql_learning;

-- optional contact email, empty for existing students
ALTER TABLE students ADD COLUMN email VARCHAR(100);

-- new students are active unless a status is given
ALTER TABLE students ADD COLUMN status VARCHAR(10) NOT NULL DEFAULT 'active';

-- sample rows: Anil uses the default status, Nikhil sets his own
INSERT INTO students (student_name, city, marks)
VALUES ('Anil', 'Delhi', 70);

INSERT INTO students (student_name, city, marks, status)
VALUES ('Nikhil', 'Chennai', 64, 'inactive');

-- no two students can share an email (many NULLs are allowed)
ALTER TABLE students ADD CONSTRAINT uq_student_email UNIQUE (email);

-- ids 9 and 10 are Anil and Nikhil, assuming schema.sql ran first
UPDATE students SET email = 'anil@example.com' WHERE id = 9;
UPDATE students SET email = 'nikhil@example.com' WHERE id = 10;

-- marks must be between 0 and 100 (NULL is still allowed)
ALTER TABLE students ADD CONSTRAINT chk_students_marks CHECK (marks BETWEEN 0 AND 100);