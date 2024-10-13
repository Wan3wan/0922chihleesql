select *
from payment;

select customer_id,sum(amount) as 總合
from payment
group by customer_id
having sum(amount) > 200;