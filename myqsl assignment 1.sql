CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100)
);

CREATE TABLE Location (
    location_id INT,
    location VARCHAR(30)
);

CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(50),
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);
SHOW TABLES;

DESCRIBE Departments;
DESCRIBE Location;
DESCRIBE Employees;

USE employee;

ALTER TABLE Employees
ADD email VARCHAR(100);

ALTER TABLE Employees
MODIFY designation VARCHAR(200);

ALTER TABLE Employees
DROP COLUMN age;

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

DESCRIBE Employees;
USE employee;

-- 1. Rename Departments to Departments_Info
RENAME TABLE Departments TO Departments_Info;

-- 2. Rename Location to Locations
RENAME TABLE Location TO Locations;
show tables;

table truncation
USE employee;

TRUNCATE TABLE Employees;

SELECT * FROM Employees;

USE employee;

DROP TABLE Employees;

DROP DATABASE employee;

----constraints
1


CREATE DATABASE employee;

USE employee;
2
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

DESCRIBE Departments;

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

INSERT INTO Location (location)
VALUES ('Kollam'), ('Kochi'), ('Trivandrum');
select * from location;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);

SHOW TABLES;

DESCRIBE Departments;

DESCRIBE Location;

DESCRIBE Employees;
INSERT INTO Departments (department_id, department_name)
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');

SELECT * FROM Location;
INSERT INTO Employees
(employee_id, employee_name, gender, age, designation, department_id, location_id, salary)
VALUES
(101, 'Anu', 'F', 25, 'HR Executive', 1, 1, 25000),
(102, 'Rahul', 'M', 28, 'Software Developer', 2, 2, 40000),
(103, 'Diya', 'F', 24, 'Accountant', 3, 3, 30000);

select * from employees;

SELECT * FROM Departments;

SELECT * FROM Location;

SELECT * FROM Employees;

INSERT INTO Departments (department_id, department_name)
VALUES (5, 'HR');