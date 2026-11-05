-- 28th SQL Homework - NULL Values and Pattern Matching
-- Sources: SQL_Questions_1_to_40_Original_Queries.docx and 28TH H.W.txt
-- Question wording is taken from the DOCX; SQL statements are taken from the TXT.
-- Original SQL statements preserved as submitted; not corrected or validated.

-- Question 1: WAQTD name of the employee who is not getting commission.
SELECT ENAME FROM EMP
WHERE COMM IS NULL;

-- Question 2: WAQTD name, salary and commission of the employees whose commission is NULL.
SELECT ENAME,SAL,COMM
FROM EMP
WHERE COMM IS NULL;

-- Question 3: WAQTD name of the employee who is not getting commission but is getting salary.
SELECT ENAME
FROM EMP 
WHERE SAL <> 0 AND COMM IS NULL;

-- Question 4: WAQTD name and job of the employees whose commission is NULL.
SELECT ENAME,JOB 
 FROM EMP
 WHERE COMM IS NULL;

-- Question 5: WAQTD name and department number of the employees whose commission is NULL.
SELECT ENAME,DEPTNO 
FROM EMP
WHERE COMM IS NULL;

-- Question 6: WAQTD name, salary and job of the employees who are not getting commission.
SELECT ENAME,SAL,JOB 
 FROM EMP
 WHERE COMM IS NULL;

-- Question 7: WAQTD name of the employees who are not getting commission and are working as MANAGER.
SELECT ENAME
FROM EMP
WHERE COMM IS NULL AND JOB = 'MANAGER';

-- Question 8: WAQTD name and salary of the employees who are not getting commission and are working in department 20.
SELECT ENAME,SAL
 FROM EMP
 WHERE COMM IS NULL AND DEPTNO = 20;

-- Question 9: WAQTD name, job and department number of the employees whose commission is NULL and who are working as CLERK.
SELECT ENAME,JOB,DEPTNO 
FROM EMP
WHERE COMM IS NULL AND JOB = 'CLERK';

-- Question 10: WAQTD name, salary and commission of the employees whose commission is NULL and salary is greater than 2000.
SELECT ENAME,SAL,COMM 
FROM EMP
WHERE COMM IS NULL AND SAL > 2000;

-- Question 11: WAQTD name of the employee who gets commission.
SELECT ENAME
FROM EMP
WHERE COMM IS NOT NULL;

-- Question 12: WAQTD name, salary and commission of the employees whose commission is NOT NULL.
SELECT ENAME,SAL,COMM
 FROM EMP
 WHERE COMM IS NOT NULL;

-- Question 13: WAQTD name of the employee who gets commission and is working as SALESMAN.
SELECT ENAME
FROM EMP
WHERE COMM IS NOT NULL AND JOB = 'SALESMAN';

-- Question 14: WAQTD name and job of the employees whose commission is NOT NULL.
SELECT ENAME,JOB
 FROM EMP
 WHERE COMM IS NOT NULL;

-- Question 15: WAQTD name and department number of the employees whose commission is NOT NULL.
SELECT ENAME,DEPTNO
FROM EMP
WHERE COMM IS NOT NULL;

-- Question 16: WAQTD name, salary and job of the employees who get commission.
SELECT ENAME,SAL,JOB FROM EMP
WHERE COMM IS NOT NULL;

-- Question 17: WAQTD name of the employees who get commission and are working in department 30.
SELECT ENAME
FROM EMP
WHERE COMM IS NOT NULL AND DEPTNO = 30;

-- Question 18: WAQTD name and salary of the employees who get commission and whose salary is greater than 1400.
SELECT ENAME,SAL 
FROM EMP
WHERE COMM IS NOT NULL AND SAL > 1400;

-- Question 19: WAQTD name, job and department number of the employees whose commission is NOT NULL and who are working as SALESMAN.
SELECT ENAME,JOB,DEPTNO 
FROM EMP
WHERE COMM IS NOT NULL AND JOB = 'SALESMAN';

-- Question 20: WAQTD name, salary and commission of the employees whose commission is NOT NULL and salary is greater than 1200.
SELECT ENAME,SAL,COMM
FROM EMP
WHERE COMM IS NOT NULL AND SAL > 1200;

-- Question 21: WAQTD names of the employees whose names start with 'A'.
SELECT ENAME
FROM EMP 
WHERE ENAME LIKE 'A%';

-- Question 22: WAQTD names of the employees whose names end with 'N'.
SELECT ENAME
FROM EMP 
WHERE ENAME LIKE '%N';

-- Question 23: WAQTD names of the employees who have character 'R' in their names.
SELECT ENAME
FROM EMP 
WHERE ENAME LIKE '%R%';

-- Question 24: WAQTD names of the employees whose second character is 'A'.
SELECT ENAME
FROM EMP 
WHERE ENAME LIKE '_A%';

-- Question 25: WAQTD names of the employees whose third character is 'I'.
SELECT ENAME
FROM EMP 
WHERE ENAME LIKE '__I%';

-- Question 26: WAQTD names of the employees whose names start with 'S' and end with 'H'.
SELECT ENAME
 FROM EMP 
 WHERE ENAME LIKE 'S%' AND ENAME LIKE '%H';

-- Question 27: WAQTD names of the employees whose names contain character 'L' at least twice.
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%L%L%';

-- Question 28: WAQTD names of the employees whose salary's last two digits are 00.
SELECT ENAME
FROM EMP 
WHERE SAL LIKE '%00';

-- Question 29: WAQTD names of the employees hired in December.
SELECT ENAME
FROM EMP
WHERE HIREDATE LIKE '%DEC%';

-- Question 30: WAQTD names of the employees whose names contain exactly five characters.
SELECT ENAME
 FROM EMP
 WHERE ENAME LIKE '_____';

-- Question 31: WAQTD names of the employees whose names do not start with 'S'.
SELECT ENAME 
 FROM EMP
 WHERE ENAME NOT LIKE 'S%';

-- Question 32: WAQTD names of the employees whose names do not end with 'N'.
SELECT ENAME 
FROM EMP
WHERE ENAME NOT LIKE '%N';

-- Question 33: WAQTD names of the employees who do not have character 'A' in their names.
SELECT ENAME 
FROM EMP
WHERE ENAME NOT LIKE '%A%';

-- Question 34: WAQTD names of the employees whose second character is not 'A'.
SELECT ENAME 
FROM EMP
WHERE ENAME NOT LIKE '_A%';

-- Question 35: WAQTD names of the employees whose third character is not 'I'.
SELECT ENAME 
FROM EMP
WHERE ENAME NOT LIKE '__I%';

-- Question 36: WAQTD names of the employees whose names do not start with 'S' and end with 'H'.
SELECT ENAME 
 FROM EMP
 WHERE ENAME NOT LIKE 'S%H';

-- Question 37: WAQTD names of the employees whose names do not contain character 'L'.
SELECT ENAME 
FROM EMP
WHERE ENAME NOT LIKE '%L%';

-- Question 38: WAQTD names of the employees whose salary's last two digits are not 00.
SELECT ENAME 
 FROM EMP
WHERE SAL NOT LIKE '%00';

-- Question 39: WAQTD names of the employees who were not hired in December.
SELECT ENAME
 FROM EMP
WHERE HIREDATE NOT LIKE '%DEC%';

-- Question 40: WAQTD names of the employees whose names do not contain exactly five characters.
SELECT ENAME
 FROM EMP
 WHERE ENAME NOT LIKE '_____';
