USE CSE_3A7_229;
-- ------------------------ L A B - 3 SELECT INTO OPERATION PART A----------------------------------

CREATE TABLE CRICKET(
	NAME VARCHAR(50),
    CITY VARCHAR(50),
    AGE INT
);

INSERT INTO CRICKET(NAME, CITY, AGE) VALUES ('SACHIN TENDULKAR', 'MUMBAI', 30),('RAHUL DRAVID', 'BOMBAY', 35),
('M.S. DHONI', 'JHARKHAND', 31),('SURESH RAINA', 'GUJARAT', 30); 

SELECT * FROM CRICKET;

-- COPY TABLE
-- 1.Create table Worldcup from cricket with all the columns and data. 
CREATE TABLE WORLDCUP AS
SELECT * FROM CRICKET;

SELECT * FROM WORLDCUP;
-- 2. Create table T20 from cricket with first two columns with no data.
CREATE TABLE T20 AS
SELECT NAME, CITY FROM CRICKET
WHERE 1=0;

SELECT * FROM T20;
-- 3. Create table IPL From Cricket with No Data
CREATE TABLE IPL AS
SELECT * FROM CRICKET 
WHERE 1=0;

SELECT * FROM IPL;
-- ------------------------ L A B - 3 SELECT INTO OPERATION PART B----------------------------------

CREATE TABLE EMPLOYEE(
	NAME VARCHAR(50),
    CITY VARCHAR(50),
    AGE INT NOT NULL
);

INSERT INTO EMPLOYEE(NAME, CITY, AGE) VALUES ('JAY PATEL', 'RAJKOT', 30),
('RAHUL DAVE', 'BARODA', 35),('JEET PATEL', 'SURAT', 31),('VIJAY RAVAL', 'RAJKOT', 30);

SELECT * FROM EMPLOYEE;
-- 1. Create table Employee_detail from Employee with all the columns and data.
CREATE TABLE EMPLOYEE_DETAIL AS
SELECT * FROM EMPLOYEE;

SELECT * FROM EMPLOYEE_DETAIL;
-- 2. Create table Employee_data from Employee with first two columns with no data.
CREATE TABLE EMPLOYEE_DATA  AS
SELECT NAME, CITY FROM EMPLOYEE
WHERE 1=0;

SELECT * FROM EMPLOYEE_DATA;
-- 3. Create table Employee_info from Employee with no Data
CREATE TABLE EMPLOYEE_INFO AS
SELECT * FROM EMPLOYEE
WHERE 1=0;

SELECT * FROM EMPLOYEE_INFO;
-- ------------------------ L A B - 3 SELECT INTO OPERATION PART C----------------------------------
-- 1. Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO EMPLOYEE_INFO(NAME, CITY, AGE)
SELECT NAME, CITY, AGE FROM EMPLOYEE
WHERE CITY = 'RAJKOT';
-- 2. Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO EMPLOYEE_INFO(NAME, CITY, AGE)
SELECT NAME, CITY, AGE FROM EMPLOYEE
WHERE AGE>32;
