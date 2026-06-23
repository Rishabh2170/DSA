# Write your MySQL query statement below
select id,
        sum(case when month = 'jan' then revenue END) as Jan_Revenue,
        sum(case when month = 'feb' then revenue END) as Feb_Revenue,
        sum(case when month = 'mar' then revenue END) as Mar_Revenue,
        sum(case when month = 'apr' then revenue END) as Apr_Revenue,
        sum(case when month = 'may' then revenue END) as May_Revenue,
        sum(case when month = 'jun' then revenue END) as Jun_Revenue,
        sum(case when month = 'jul' then revenue END) as Jul_Revenue,
        sum(case when month = 'aug' then revenue END) as Aug_Revenue,
        sum(case when month = 'sep' then revenue END) as Sep_Revenue,
        sum(case when month = 'oct' then revenue END) as Oct_Revenue,
        sum(case when month = 'nov' then revenue END) as Nov_Revenue,
        sum(case when month = 'dec' then revenue END) as Dec_Revenue
from department
group by id;
