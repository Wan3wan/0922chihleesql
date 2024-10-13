select *
from payment;

select customer_id,sum(amount) as 總合
from payment
group by customer_id
having sum(amount) > 200;

SELECT store_id ,COUNT(customer_id) AS 數量
FROM customer
GROUP BY store_id;

/*subquery*/
SELECT *
FROM country;

SELECT country_id
FROM country
WHERE country='Taiwan';

SELECT city
FROM city
WHERE country_id = 92;

SELECT city
FROM city
WHERE country_id = (
	SELECT country_id
	FROM country
	WHERE country='Taiwan'
);

SELECT city
FROM city JOIN country ON city.country_id = country.country_id
WHERE country = 'Taiwan';