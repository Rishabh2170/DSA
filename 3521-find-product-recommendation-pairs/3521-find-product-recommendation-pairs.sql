# Write your MySQL query statement below
select  p1.product_id product1_id ,
        p2.product_id product2_id ,
        pi1.category product1_category , 
        pi2.category product2_category , 
        count(distinct p1.user_id) customer_count 
from ProductPurchases p1
join ProductPurchases p2
    on p1.user_id =p2.user_id 
join ProductInfo pi1
    on p1.product_id = pi1.product_id
join ProductInfo pi2
    on p2.product_id = pi2.product_id
where p1.product_id < p2.product_id
group by p1.product_id , p2.product_id
having customer_count >=3
order by customer_count desc, 
         product1_id asc, 
         product2_id asc