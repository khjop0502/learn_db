-- Create a new table called 'department' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.department', 'U') IS NOT NULL
DROP TABLE dbo.department
GO
-- Create the table in the specified schema
CREATE TABLE dbo.department
(
    deptno int not null PRIMARY KEY,
    -- primary key column
    deptname char(10),
    floor int,
    -- specify more columns here
);
GO
-- Insert rows into table 'department'
INSERT INTO department
    ( -- columns to insert data into
    [deptno], [deptname], [floor]
    )
VALUES
    (1, '????', 8),
    (2, '??ȹ', 10),
    (3, '????', 9),
    (4, '?ѹ?', 7)
GO
-- Insert rows into table 'department'
INSERT INTO department
    ( -- columns to insert data into
    [deptno], [deptname], [floor]
    )
VALUES
    (5, '????', 0)
-- add more rows here
GO

-- Create a new table called 'employee' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.employee', 'U') IS NOT NULL
DROP TABLE dbo.employee
GO
-- Create the table in the specified schema
CREATE TABLE dbo.employee
(
    empno int not null,
    empname char(10) unique,
    title char (10) default '????',
    manager int,
    salary int,
    dno int default 1,
    primary key (empno),
    foreign key (manager) references employee (empno),
    foreign key (dno) references department (deptno) on update cascade
    -- specify more columns here
);
GO
-- Insert rows into table 'employee'
INSERT INTO employee
    ( -- columns to insert data into
    [empno],[empname],[title],[manager],[salary],[dno]
    )
VALUES
    (4377, '?̼???', '????', null, 5000000, 2),

    (3426, '?ڿ???', '????', 4377, 3000000, 1),

    (3011, '?̼???', '????', 4377, 4000000, 3),

    (3427, '????ö', '????', 3011, 1500000, 3),

    (1003, '??????', '????', 4377, 3000000, 2),

    (2106, '??â??', '?븮', 1003, 2500000, 2),

    (1365, '??????', '????', 3426, 1500000, 1)
GO

DELETE FROM department
WHERE deptno = 5
SELECT *
FROM department	
GO
UPDATE employee SET dno = 3,salary = salary*1.05 WHERE empno =2106
GO
SELECT *
FROM employee
WHERE empno = 2106
GO
CREATE TRIGGER RAISE_SALARY
ON employee
FOR INSERT
AS
UPDATE employee
SET salary = salary *1.1
WHERE salary <1500000
GO