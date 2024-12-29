Q1:
SELECT name, population, area FROM world WHERE area>=3000000 or population>=25000000

Q2:
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT

    RETURN (
        WITH CTE AS(
            SELECT *, DENSE_RANK()OVER(ORDER BY Salary DESC) as rankzz from employee
        )
        SELECT DISTINCT salary from CTE where rankzz=n
    );

Q3:
DELETE p1 from person p1 CROSS JOIN person p2 where p1.email=p2.email and p1.id>p2.id