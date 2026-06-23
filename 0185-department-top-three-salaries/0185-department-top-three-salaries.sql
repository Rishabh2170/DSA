# Write your MySQL query statement below
select t.dept_name as Department , t.name as Employee , t.salary as Salary
from (
    select d.name as dept_name  ,e.name ,e.salary , 
    dense_rank() over(partition by departmentId  order by salary desc) rnk
    from Employee e
    join department d
    on e.departmentId = d.id
) t
where rnk <= 3;