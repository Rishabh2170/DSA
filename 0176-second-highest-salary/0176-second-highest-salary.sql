
-- select max(salary) as SecondHighestSalary 
-- from employee
-- where salary < (select max(salary) 
--                 from employee)



select  
case
    when
        count(distinct(salary)) < 2 then null
    else    
        (select max(salary) 
        from(
        select  salary , 
                dense_rank() over(order by salary desc) as rnk_salary
        from employee
        )t
        where rnk_salary = 2
        )
        end as SecondHighestSalary
from employee;