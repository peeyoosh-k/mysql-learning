USE mysql_learning;

SELECT * FROM students WHERE city = 'Delhi';

SELECT student_name, marks FROM students WHERE marks > 80;

SELECT student_name, marks FROM students ORDER BY marks DESC LIMIT 3;

SELECT student_name FROM students WHERE marks IS NULL;

SELECT DISTINCT city FROM students ORDER BY city;