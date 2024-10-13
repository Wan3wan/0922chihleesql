select *
from payment;

select customer_id,sum(amount) as 總合
from payment
group by customer_id
having sum(amount) > 200;

SELECT store_id ,COUNT(customer_id) AS 數量
FROM customer
GROUP BY store_id;