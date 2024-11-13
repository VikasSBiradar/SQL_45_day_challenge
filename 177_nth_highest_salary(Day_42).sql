CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    DECLARE @result INT = NULL;
        /* Write your T-SQL query statement below. */
        WITH nthHighestSalary AS(
            SELECT 
                   salary,
                   ROW_NUMBER() OVER (ORDER BY salary DESC) as salary_rank
                   FROM Employee
                   GROUP BY Salary
        )
        SELECT @result = salary FROM nthHighestSalary WHERE 
        salary_rank = @N;

        RETURN @result;
END