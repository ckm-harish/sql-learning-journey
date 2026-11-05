-- 26th SQL Homework - WHERE Conditions and Operators
-- Source: 26TH SQL H.W.docx
-- Original question wording and SQL statements preserved as submitted.
-- Note: This is kept separate from the 25th homework, even though topics overlap.

-- 26TH SQL H.W
-- 1. WAQTD employees working in department 10
SELECT * FROM EMP
 WHERE DEPTNO = 10;
-- 2. WAQTD employees working as MANAGER
SELECT * FROM EMP
 WHERE JOB = 'MANAGER';
-- 3. WAQTD employees who are not working in department 10
SELECT * FROM EMP
 WHERE DEPTNO <> 10;
-- 4. WAQTD employees who are not working as CLERK
SELECT * FROM EMP
 WHERE JOB <> 'CLERK';
-- 5. WAQTD the employee whose employee number is 7839
SELECT * FROM EMP
WHERE EMPNO = 7839;
-- 6. WAQTD employees whose job is not MANAGER
SELECT * FROM EMP
 WHERE JOB <> 'MANAGER';
-- 7. WAQTD employees earning a salary greater than 2000
SELECT * FROM EMP
 WHERE SAL > 2000;
-- 8. WAQTD employees earning a salary less than 1000
SELECT * FROM EMP
 WHERE SAL > 2000;
-- 9. WAQTD employees earning a salary greater than or equal to 3000
SELECT * FROM EMP
WHERE SAL >= 3000;
-- 10. WAQTD employees earning a salary less than or equal to 1250
SELECT * FROM EMP
 WHERE SAL <= 1250;
-- 11. WAQTD employees hired after 1 January 1982.
SELECT * FROM EMP
 WHERE HIREDATE > '01-JAN-1982';
-- 12. WAQTD employees hired before 1 January 1982
SELECT * FROM EMP
 WHERE HIREDATE < '01-JAN-1982';
-- 13. WAQTD employees hired after 1 January 1983
SELECT * FROM EMP
 WHERE HIREDATE > '01-JAN-1983';
-- 14. WAQTD name, deptno along with job for the employee working in dept 10
SELECT ENAME,JOB,DEPTNO
 FROM EMP
 WHERE DEPTNO =10;
-- 15. WAQTD name and deptno along with job for the employee working as manager in dept 10
SELECT ENAME,JOB,DEPTNO
 FROM EMP
 WHERE JOB = 'MANAGER' AND DEPTNO =10;
-- 16. WAQTD name, deptno, salary of the employee working in dep 20 and earning less than 3000 .
SELECT ENAME,DEPTNO,SAL
 FROM EMP
WHERE DEPTNO = 20 AND SAL < 3000;
-- 17. WAQTD name and salary of the employee if emp earns More than 1250 but less than 3000 .
SELECT ENAME,SAL 
FROM EMP
WHERE SAL > 1250 AND SAL < 3000;
-- 18. WAQTD name and deptno of the employees if the EMP works in dept 10 or 20.
SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO = 10 OR DEPTNO = 20;
-- 19. WAQTD name and sal and deptno of the employees If emp gets more than 1250 but less than 4000 and works in dept 20 .
SELECT ENAME,SAL,DEPTNO
 FROM EMP
 WHERE SAL > 1250 AND SAL < 4000 AND DEPTNO = 20;
-- 20. WAQTD name , job , deptno of the employees working as a manager in dept 10 or 30
SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE JOB = 'MANAGER'
AND DEPTNO IN (10, 30);
-- 21. WAQTD name , deptno , job of the employees working in dept 10 or 20 or 30 as a clerk.
SELECT ENAME,JOB,DEPTNO
 FROM EMP
  WHERE JOB= 'CLERK' AND DEPTNO IN(10,20,30);
-- 22. WAQTD name , job and deptno of the employees working as clerk or manager in dept 10 .
SELECT ENAME,JOB,DEPTNO
 FROM EMP
 WHERE DEPTNO = 10 AND (JOB = 'CLERK' OR JOB = 'MANAGER');
-- 23. WAQTD name , job , deptno , sal of the employees working as clerk or salesman in dept 10 or 30 and earning more than 1800 .
SELECT ENAME,JOB,DEPTNO,SAL
FROM EMP
WHERE (JOB = 'CLERK' OR JOB = 'SALESMAN') AND (DEPTNO = 10 OR DEPTNO = 30) AND SAL > 1800;
-- 24. WAQTD ENAME and DEPTNO of the employees by excluding the employees of dept 10, 61, 20.
SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO NOT IN (10, 61, 20);
-- 25. WAQTD name and job of the employee working as clerk or manager, salesman
SELECT ENAME,JOB
 FROM EMP
 WHERE JOB IN ('CLERK','MANAGER','SALESMAN');
-- 26. WAQTD empno, ename and salary of the employees whose empno is 7902 or 7839 and getting more than 2925
SELECT EMPNO,ENAME,SAL 
 FROM EMP
 WHERE EMPNO IN (7902 ,7839) AND SAL > 2925;
-- 27. WAQTD ename and deptno of the employees working in dept 10 or 20.
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO IN(10,20);
-- 28. WAQTD ename and salary of the employees working as clerk or analyst.
SELECT ENAME,JOB 
 FROM EMP
 WHERE JOB IN('CLERK','ANALYST');
-- 29. WAQTD empno, ename and job of the employees working in dept 10 or 30 or 20.
SELECT EMPNO,ENAME,JOB 
FROM EMP
WHERE DEPTNO IN(10,30,20);
-- 30. WAQTD ename and hiredate of the employees hired in the year 1981 or 1982.
SELECT ENAME,HIREDATE FROM EMP
WHERE HIREDATE BETWEEN '01-JAN-1981' AND '01-JAN-1982';
-- 31. WAQTD ename, job and salary of the employees working as manager or analyst and earning more than 2000.
SELECT ENAME,JOB,SAL 
 FROM EMP
 WHERE JOB IN('MANAGER','ANALYST') AND SAL > 2000;
-- 32. WAQTD ename and salary of the employees whose salary is 800 or 950 or 1250 or 1600.
SELECT ENAME,SAL 
FROM EMP
WHERE SAL IN(800,950,1250,1600);
-- 33. WAQTD ename, job and deptno of the employees working as clerk or salesman and belonging to dept 20 or 30.
SELECT ENAME,JOB,DEPTNO
 FROM EMP
 WHERE JOB IN('CLERK','SALESMAN') AND DEPTNO IN(20,30);
-- 34. WAQTD empno, ename and salary of the employees whose empno is 7369 or 7499 or 7521 or 7566.
SELECT EMPNO,ENAME,SAL 
FROM EMP
WHERE EMPNO IN(7369,7499,7521,7566);
-- 35. WAQTD name and deptno of all the employees except the emp Working in dept 10 or 40.
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO IN (10,40);
-- 36. WAQTD name , deptno and job of the employee working in dept 20 but not as a clerk or manager .
SELECT ENAME,DEPTNO,JOB
FROM EMP
WHERE DEPTNO = 20 AND JOB IN ('CLERK','MANAGER');
-- 37. WAQTD ename and job of the employees except those working as clerk or analyst.
SELECT ENAME,JOB
 FROM EMP
 WHERE JOB IN ('CLERK','ANALYST');
-- 38. WAQTD empno, ename and salary of the employees whose empno is not 7369 or 7499 or 7839.
SELECT EMPNO,ENAME,SAL
 FROM EMP
 WHERE EMPNO NOT IN (7369,7499,7839);
-- 39. WAQTD ename and deptno of the employees not working in dept 10 or 20 or 30.
SELECT ENAME,DEPTNO
 FROM EMP 
WHERE DEPTNO NOT IN(10,20,30);
-- 40. WAQTD ename, job and salary of the employees not working as manager or salesman.
SELECT ENAME,JOB,SAL 
FROM EMP
WHERE JOB NOT IN ('MANAGER','SALESMAN');
-- 41. WAQTD ename and salary of the employees whose salary is not 800 or 950 or 1250.
SELECT ENAME,SAL 
 FROM EMP
 WHERE SAL NOT IN (800,950,1250);
-- 42. WAQTD empno, ename and job of the employees except those working as clerk or manager or president.
SELECT EMPNO,ENAME,JOB
 FROM EMP
 WHERE JOB NOT IN ('CLERK','MANAGER','PRESIDENT');
-- 43. WAQTD ename, job and deptno of the employees not working in dept 10 or 30 and not working as salesman.
SELECT ENAME,JOB,DEPTNO
FROM EMP
WHERE JOB <> 'SALESMAN' AND DEPTNO NOT IN (10,30);
-- 44. WAQTD ename and hiredate of the employees who were not hired in the years 1981 or 1982.
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE NOT BETWEEN '01-JAN-1981' AND '31-DEC-1982';
-- 45. WAQTD name and salary of the employees if the emp is earning Salary in the range 1000 to 3000 .
SELECT ENAME,SAL 
 FROM EMP
 WHERE SAL BETWEEN 1000 AND 3000;
-- 46. WAQTD name and deptno of the employees working in dept 10 And hired during 2019.
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO = 10 AND HIREDATE BETWEEN '01-JAN-2019' AND '31-DEC-2019';
-- 47. WAQTD name , sal and hiredate of the employees hired during 2017 into dept 20 with a salary greater than 2000 .
SELECT ENAME,SAL,HIREDATE
 FROM EMP
 WHERE HIREDATE BETWEEN '01-JAN-2017' AND '31-DEC-2017'
 AND DEPTNO = 20 
 AND SAL > 2000;
-- 48. WAQTD ename and salary of the employees earning a salary between 1500 and 5000.
SELECT ENAME,SAL 
 FROM EMP
 WHERE SAL BETWEEN 1500 AND 5000;
-- 49. WAQTD ename and hiredate of the employees hired between 01-JAN-1981 and 31DEC-1982.
SELECT ENAME,HIREDATE 
FROM EMP
WHERE HIREDATE BETWEEN '01-JAN-1981' AND '31-DEC-1982';
-- 50. WAQTD empno, ename and salary of the employees earning a salary between 2000 and 4000.
SELECT EMPNO,ENAME,SAL 
FROM EMP
WHERE SAL BETWEEN 2000 AND 4000;
-- 51. WAQTD ename, job and salary of the employees working as manager and earning a salary between 2000 and 4000.
SELECT ENAME,JOB,SAL 
FROM EMP 
WHERE JOB = 'MANAGER' AND SAL BETWEEN 2000 AND 4000;
-- 52. WAQTD ename and deptno of the employees working in dept 10 or 20 and earning a salary between 1000 and 3000.
SELECT ENAME,DEPTNO 
 FROM EMP
 WHERE DEPTNO IN (10,20) AND SAL BETWEEN 1000 AND 3000;
-- 53. WAQTD ename, hiredate and salary of the employees hired between 01-JAN-1981 and 31-DEC-1981 and earning a salary greater than 1500.
SELECT ENAME,HIREDATE,SAL 
 FROM EMP
 WHERE HIREDATE BETWEEN '01-JAN-1981' AND '31-DEC-1981' AND SAL > 1500;
-- 54. WAQTD ename and salary of the employees whose salary is between 800 and 1600 and whose deptno is 20 or 30.
SELECT ENAME,SAL 
 FROM EMP
 WHERE SAL BETWEEN 800 AND 1600 AND DEPTNO IN (20,30);
-- 55. WAQTD name and salary of the employees if the emp is not earning Salary in the range 1000 to 3000 .
SELECT ENAME,SAL 
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 3000;
-- 56. WAQTD name and deptno of the employees working in dept 10 And not hired during 2019 .
SELECT ENAME,DEPTNO
FROM EMP 
WHERE DEPTNO = 10 AND HIREDATE NOT BETWEEN '01-JAN-2019' AND '31-01-2019';
-- 57. WAQTD name , sal and hiredate of the employees who were not hired during 2017 into dept 20 with a salary greater than 2000 .
SELECT ENAME,SAL,HIREDATE
FROM EMP
WHERE HIREDATE NOT BETWEEN '01-JAN-2017' AND '31-DEC-2017'
AND DEPTNO = 20 AND SAL > 2000;
-- 58. WAQTD ename and salary of the employees whose salary is not between 1500 and 5000.
SELECT ENAME,SAL 
FROM EMP
WHERE SAL NOT BETWEEN 1500 AND 5000;
-- 59. WAQTD ename and hiredate of the employees who were not hired between 01-JAN1981 and 31-DEC-1982.
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE NOT BETWEEN '01-JAN-1981' AND '31-DEC-1982';
-- 60. WAQTD empno, ename and salary of the employees whose salary is not between 2000 and 4000.
SELECT EMPNO,ENAME,SAL 
FROM EMP
WHERE SAL NOT BETWEEN 2000 AND 4000;
-- 61. WAQTD ename, job and salary of the employees who are not earning a salary between 2000 and 4000 and are working as manager.
SELECT ENAME,JOB,SAL 
FROM EMP
WHERE JOB='MANAGER' AND SAL BETWEEN 2000 AND 4000;
-- 62. WAQTD ename and deptno of the employees working in dept 10 or 20 and whose salary is not between 1000 and 3000.
SELECT ENAME,DEPTNO 
FROM EMP
WHERE DEPTNO IN (10,20) AND SAL NOT BETWEEN 1000 AND 3000;
-- 63. WAQTD ename, hiredate and salary of the employees who were not hired between 01-JAN-1981 and 31-DEC-1981 and are earning a salary greater than 1500.
SELECT ENAME,HIREDATE,SAL 
FROM EMP
WHERE SAL > 1500 AND HIREDATE NOT BETWEEN '01-JAN-1981' AND '31-DEC-1981';
-- 64. WAQTD ename and salary of the employees whose salary is not between 800 and 1600 and whose deptno is 20 or 30.
SELECT ENAME,SAL 
FROM EMP
WHERE SAL BETWEEN 800 AND 1600 AND DEPTNO IN (20,30);
