# Write your MySQL query statement below
select e1.name
from Employee e1
join employee e2
on e1.id = e2.managerID
where e2.managerID = e1.id
group by e2.managerID
having count(*) >=5;