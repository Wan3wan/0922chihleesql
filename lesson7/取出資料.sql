/*取出市場資料*/
select country,市場.name,date,adj_close,volume
from 股市 join 市場 on 股市.name = 市場.name
where country = '台灣';

select country,市場.name,date,adj_close,volume
from 股市 join 市場 on 股市.name = 市場.name
where country = '台灣' and date=(
	select max(date)
	from 股市
)

SELECT country,市場.name,date,adj_close,volume
FROM 股市 JOIN 市場 ON 股市.name = 市場.name
WHERE country = '台灣' and (date BETWEEN '2024-01-01' AND '2024-12-31');