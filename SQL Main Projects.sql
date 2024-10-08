# MySQL MAIN_PROJECT

CREATE DATABASE LIBRARY;

USE LIBRARY;

#TABLE 1: BRANCH
CREATE TABLE BRANCH 
(BRANCH_NO INT PRIMARY KEY,
MANAGER_ID INT,
BRANCH_ADDRESS VARCHAR(50),
CONTACT_NO VARCHAR(10));

INSERT INTO BRANCH (BRANCH_NO, MANAGER_ID, BRANCH_ADDRESS,CONTACT_NO) VALUES
(12, 123, '12_ABC', '1112223335'),
(34, 456, '34_DEF', '2223334446'),
(56, 789, '56_GHI', '3334445557'),
(78, 987, '78_JKL', '5556667779'),
(910, 654,'910_MNO', '9998887775');

#TABLE 2: EMPLOYEE
CREATE TABLE EMPLOYEES
(EMP_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(50),
POSITION VARCHAR(30),
SALARY DECIMAL(8, 2),
BRANCH_NO INT, FOREIGN KEY (BRANCH_NO) REFERENCES BRANCH(BRANCH_NO));

INSERT INTO EMPLOYEES (EMP_ID, EMP_NAME, POSITION, SALARY, BRANCH_NO) VALUES
(101, 'AMIT FRANCIS', 'MANAGER', 55000.00, 12),
(201, 'KEERTHANA S', 'MANAGER', 45000.00, 34),
(301, 'ERICK BENNY', 'MANAGER', 52000.00, 56),
(401, 'AHMED D', 'MANAGER', 50000.00, 78),
(501, 'KRISHNARJUN', 'MANAGER', 45000.00, 910),
(105, 'RIYA JOSEPH', 'CLERK', 35000.00, 12),
(205, 'DEEPAK DEV', 'CLERK', 40000.00, 34),
(305, 'DEEPTHI R', 'CLERK', 40000.00, 56),
(405, 'KISHORE VASUDEV', 'CLERK', 37000.00, 78),
(505, 'JEMI ROSE', 'CLERK', 35000.00, 910);

#TABLE 3: CUSTOMER
CREATE TABLE CUSTOMER
(CUSTOMER_ID INT PRIMARY KEY,
CUSTOMER_NAME VARCHAR(50),
CUSTOMER_ADDRESS VARCHAR(50),
REG_DATE DATE);

INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_ADDRESS, REG_DATE) VALUES
(1001, 'JAMES JOHN', 'ABCD_123-11', '2022-10-10'),
(2001, 'SMRITHI M', 'EFGH_456-22', '2022-10-23'),
(999, 'ALFINA ALI', 'IJKL_789-33', '2022-09-12'),
(3001, 'NAMITHA JOSEPH', 'MNOP_987-44', '2022-12-25'),
(4001, 'GOPIKA GOPAN', 'QRST_654-55', '2022-11-09'),
(5001, 'SHERIN VARGHEESE', 'UVWX_321-66', '2023-01-01'),
(4004, 'JOSNA JOSE', 'YZAB_234-77', '2023-11-20'),
(3002, 'ABHINA M RAJAN', 'CDEF_567-88', '2022-12-30'),
(1006, 'ALEENA TOM', 'GHIJ_891-99', '2022-11-10'),
(2009, 'SHEON WILSON', 'KLMN_198-98', '2022-12-08'),
(5007, 'JENY MARET', 'OPQR_765-76', '2023-02-20'),
(1234, 'KARTHIK SANTHOSH', '123-ABC-11', '2024-01-12'),
(2345, 'AARIF MUHAMMED', '456-DEF-22', '2024-01-15'),
(3456, 'SINJU S', '789-GHI-33', '2024-01-31'),
(4567, 'ALEENA JOSEPH', '987-JKL-44', '2024-02-01'),
(5678, 'CATHERIN JACOB', '654-MNO-55', '2024-02-06');

#TABLE 4: BOOKS
CREATE TABLE BOOKS 
(ISBN INT PRIMARY KEY,
BOOK_TITLE VARCHAR(100),
CATEGORY VARCHAR(50),
RENTAL_PRICE DECIMAL(10, 2),
STATUS VARCHAR (5),
AUTHOR VARCHAR(50),
PUBLISHER VARCHAR(70));

INSERT INTO BOOKS (ISBN, BOOK_TITLE, CATEGORY, RENTAL_PRICE, STATUS, AUTHOR, PUBLISHER) VALUES
(123456789, 'UNTIL HER LAST BREADTH', 'ROMANCE', 150.000, 'YES', 'JULEYA THOMAS', 'WRITERS POCKET'),
(234567891, 'THE BEST OF ME', 'CLASSIC', 140.00, 'YES', 'NICHOLAS SPARKS', 'SPHERE'),
(345678912, 'THINGS FALL APART', 'CLASSIC', 130.00, 'YES', 'CHINUA ACHEBE', 'PENGUIN BOOKS'),
(456789123, 'MY SISTERS KEEPER', 'CLASSIC', 130.00, 'YES', 'JODI PICOULT', 'ASTRIA BOOKS'),
(567891234, 'THE WEB OF LIES', 'DRAMA', 135.00, 'YES', 'SOURABH MUKHARJEE', 'SRISHTI PUBLICATIONS'),
(678912345, 'THE RESCUE', 'THRILLER', 140.00, 'NO', 'NICHOLAS SPARKS', 'SPHERE'),
(789123456, 'THE HIGHWAY MURDERS', 'THRILLER', 145.00, 'YES', 'SOURABH MUKHARJEE', 'SRISHTI PUBLICATIONS'),
(891234567, 'PERFECT MATCH', 'ROMANCE', 120.00, 'NO', 'JODI PICOULT', 'ASTRIA BOOKS'),
(912345678, 'THE WINGS OF FIRE', 'AUTOBIOGRAPHY', 145.00, 'NO', 'A.P.J. ABDHUL KALAM', 'PRABHAT PRAKASHAN PVT.LTD');

#TABLE 5: ISSUE STATUS
CREATE TABLE ISSUE_STATUS 
(ISSUE_ID INT PRIMARY KEY,
ISSUED_CUST INT,
ISSUED_BOOK_NAME VARCHAR(100),
ISSUED_DATE DATE,
ISBN_BOOK INT,
FOREIGN KEY (ISSUED_CUST) REFERENCES CUSTOMER(CUSTOMER_ID), FOREIGN KEY (ISBN_BOOK) REFERENCES BOOKS(ISBN));

INSERT INTO ISSUE_STATUS ( ISSUE_ID, ISSUED_CUST, ISSUED_BOOK_NAME, ISSUED_DATE, ISBN_BOOK) VALUES
(12, 1234, 'UNTIL HER LAST BREATH', '2024-01-12', 123456789),
(23, 3002, 'THE BEST OF ME', '2023-11-25', 234567891),
(45, 2009, 'CHINUA ACHEBE- THINGS FALL APART', '2023-12-05', 345678912),
(67, 5678, 'MY SISTERS KEEPER', '2024-01-21', 456789123),
(89, 1234, 'THE WEB OF LIES', '2024-02-01', 567891234);

#TABLE 6: RETURN STATUS
CREATE TABLE RETURN_STATUS
(RETURN_ID INT PRIMARY KEY,
RETURN_CUST INT,
RETURN_BOOK_NAME VARCHAR(100),
RETURN_DATE DATE,
ISBN_BOOK2  INT, FOREIGN KEY (RETURN_CUST) REFERENCES CUSTOMER(CUSTOMER_ID), FOREIGN KEY (ISBN_BOOK2) REFERENCES BOOKS(ISBN));

INSERT INTO RETURN_STATUS (RETURN_ID, RETURN_CUST, RETURN_BOOK_NAME, RETURN_DATE, ISBN_BOOK2) VALUES
(023, 3002, 'THE BEST OF ME', '2024-01-12', 234567891),
(012, 1234, 'UNTIL HER LAST BREATH', '2024-01-01', 123456789),
(067, 5678, 'MY SISTERS KEEPER', '2024-02-06', 456789123);


# Write the queries for the following:
# 1. Retrieve the book title, category, and rental price of all available books.

SELECT BOOK_TITLE, CATEGORY, RENTAL_PRICE FROM BOOKS WHERE STATUS = 'YES';

# 2. List the employee names and their respective salaries in descending order of salary. 

SELECT EMP_NAME, SALARY FROM EMPLOYEES ORDER BY SALARY DESC;

# 3. Retrieve the book titles and the corresponding customers who have issued those books.

SELECT ISSUE_STATUS.ISSUED_BOOK_NAME AS BOOK_TITLE, CUSTOMER.CUSTOMER_NAME 
FROM ISSUE_STATUS JOIN CUSTOMER ON ISSUE_STATUS.ISSUED_CUST = CUSTOMER.CUSTOMER_ID;

# 4. Display the total count of books in each category.

SELECT CATEGORY, COUNT(*) AS TOTAL_COUNT FROM BOOKS GROUP BY CATEGORY;

# 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.

SELECT EMP_NAME, POSITION FROM EMPLOYEES WHERE SALARY > 50000.00;

# 6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 

SELECT CUSTOMER.CUSTOMER_NAME
FROM CUSTOMER
LEFT JOIN ISSUE_STATUS ON CUSTOMER.CUSTOMER_ID = ISSUE_STATUS.ISSUED_CUST
WHERE CUSTOMER.REG_DATE < '2022-01-01' AND ISSUE_STATUS.ISSUED_CUST IS NULL;

# 7. Display the branch numbers and the total count of employees in each branch. 

SELECT BRANCH_NO, COUNT(*) AS TOTAL_EMPLOYEES FROM EMPLOYEES GROUP BY BRANCH_NO;


# 8. Display the names of customers who have issued books in the month of June 2023. 

SELECT DISTINCT CUSTOMER.CUSTOMER_NAME
FROM ISSUE_STATUS
JOIN CUSTOMER ON ISSUE_STATUS.ISSUED_CUST = CUSTOMER.CUSTOMER_ID
WHERE MONTH(ISSUE_STATUS.ISSUED_DATE) = 6 AND YEAR(ISSUE_STATUS.ISSUED_DATE) = 2023;

# 9. Retrieve book_title from a book table containing history. 

SELECT BOOK_TITLE FROM BOOKS WHERE CATEGORY = 'HISTORY';

# 10. Retrieve the branch numbers along with the count of employees for branches having more than 5 employees. 

SELECT BRANCH_NO, COUNT(*) AS EMPLOYEE_COUNT
FROM EMPLOYEES
GROUP BY BRANCH_NO
HAVING COUNT(*) > 5;