# Write your MySQL query statement below
with recursive Hierarchy as (
    select employee_id, employee_name, manager_id, salary , 1 as level
    from employees
    where manager_id is null

    union all

    select e.employee_id, e.employee_name, e.manager_id, e.salary, h.level + 1  
    from employees e
    join Hierarchy h
        on e.manager_id = h.employee_id

)
, manager as (
    select  employee_id as manager_id,
            employee_id
    from employees

    union all

    select  m.manager_id,
            e.employee_id
    from manager m
    join employees e
        on m.employee_id = e.manager_id
), 
team_size as(
    select  m.manager_id, count(*) - 1 as team_size, sum(e.salary) as budget 
    from manager m
    join employees e
    on m.employee_id = e.employee_id
    group by manager_id
)

select h.employee_id, h.employee_name, h.level, ts.team_size, ts.budget
from Hierarchy h
left join team_size ts
    on h.employee_id = ts.manager_id
ORDER BY level ASC,
         budget DESC,
         employee_name ASC