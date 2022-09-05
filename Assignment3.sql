CREATE TABLE EMP(
EMPNO DECIMAL(4) PRIMARY KEY,
ENAME VARCHAR(20) NOT NULL,
JOB VARCHAR(15),
MGR_ID DECIMAL(4),
HIREDATE DATE,
SALARY DECIMAL(7) CHECK(SALARY>0),
COMM DECIMAL(4),
DEPTNO DECIMAL(2) REFERENCES DEPT(DEPTNO));

INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7369,'SMITH','CLERK',7902,'17-DEC-80',800,NULL,20);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7499,'ALLEN','SALESMAN',7698,'20-FEB-81',1600,3000,30);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7521,'WARD','SALESMAN',7698,'22-FEB-81',1250,500,30);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7566,'JONES','MANAGER',7839,'02-APR-81',2975,NULL,20);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7654,'MARTIN','SALESMAN',7698,'28-SEP-81',1250,1400,30);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7698,'BLAKE','MANAGER',7839,'01-MAY-81',2850,NULL,30);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7782,'CLARK','MANAGER',7839,'09-JUN-81',2450,NULL,10);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7788,'SCOTT','ANALYST',7566,'19-APR-87',3000,NULL,20);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7839,'KING','PRESIDENT',NULL,'17-NOV-81',5000,NULL,10);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7844,'TURNER','SALESMAN',7698,'08-SEP-81',1500,0,30);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7876,'ADAMS','CLERK',7788,'23-MAY-87',1100,NULL,20);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7900,'JAMES','CLERK',7698,'03-DEC-81',950,NULL,30);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7902,'FORD','ANALYST',7566,'03-DEC-81',3000,NULL,20);
INSERT INTO EMP(EMPNO,ENAME,JOB,MGR_ID,HIREDATE,SALARY,COMM,DEPTNO) VALUES(7934,'MILLER','CLERK',7782,'23-JAN-82',1300,NULL,10);


CREATE TABLE DEPT(
DEPTNO DECIMAL(2) PRIMARY KEY,
DNAME VARCHAR(15) NOT NULL,
LOC VARCHAR(20));

INSERT INTO DEPT(DEPTNO,DNAME,LOC) VALUES(10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT(DEPTNO,DNAME,LOC) VALUES(20,'RESEARCH','DALLAS');
INSERT INTO DEPT(DEPTNO,DNAME,LOC) VALUES(30,'SALES','CHICAGO');
INSERT INTO DEPT(DEPTNO,DNAME,LOC) VALUES(40,'OPERATIONS','BOSTON');









select ename from emp where job='MANAGER'

-----2

select ename,SALARY from emp where SALARY>1000

-----3

select ename,salary from emp where ename<>'JAMES'

-----4

select * from emp where ename like 'S%'

-----5

select ename from emp where ename like '%A%'

-----6

select ename from emp where ename like '__L%'

----7

Select ename,salary/30 as daily_salary from emp where ename='JONES'

----8

select ename,salary*12 as total_monthlysalary from emp

-----9

Select avg(salary*12) as avg_salary from emp

-----10

Select ename,job,salary,deptno from emp where job not in('SALESMAN') and deptno=30

-----11

select distinct emp.deptno,dept.dname from emp inner join dept on emp.deptno=dept.deptno 

-----12

select ename as employees,salary as monthly_salary,deptno from emp where salary>1500 and (deptno=10 or deptno=30)


-----13

select ename,job,salary from emp where (job='MANAGER'or job='ANALYST') and (salary not in(1000,3000,5000))


-----14

select ename,salary,comm from emp where comm is not null and comm>(salary*0.1)

-----15

select ename from emp where ename like '%L%L%' and (deptno=30 or mgr_id=7738)

----16

select ename,deptno,datediff(year,hiredate,getdate()) as experience from emp where (datediff(year,hiredate,getdate())>10 ) and (datediff(year,hiredate,getdate())<20)

-----17

select dept.dname,emp.ename from emp inner join dept on emp.deptno=dept.deptno order by dept.dname asc,emp.ename desc

----18

select datediff(year,hiredate,getdate()) as experience from emp where ename='MILLER'