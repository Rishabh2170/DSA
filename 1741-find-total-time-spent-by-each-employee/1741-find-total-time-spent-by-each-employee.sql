# Write your MySQL query statement below
select event_day as day , emp_id , (out_time1 - in_time1) as total_time 
from (
    select  event_day , emp_id ,
            sum(out_time) out_time1, 
            sum(in_time) in_time1
    from employees
    group by event_day , emp_id
)t
order by total_time