create function getNthHighestSalary(n int) returns
int
begin
    return(
        select distinct salary from(
            select salary, 
                   dense_rank() over(order by salary desc) rnk
        from employee 
        )t
        where rnk = n
        limit 1
    );
end