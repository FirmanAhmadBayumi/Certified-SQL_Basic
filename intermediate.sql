--soal 1 business expansion

SELECT ua.id, ua.first_name, ua.last_name, c.id, c.customer_name, COUNT(*)
FROM contact con
INNER JOIN customer c ON c.id=con.customer_id
INNER JOIN user_account ua ON ua.id=con.user_account_id
GROUP BY ua.id, ua.first_name, ua.last_name, c.id, c.customer_name
HAVING COUNT(*)>1
ORDER BY ua.id

--soal 2 product sales per city

select ci.city_name, pr.product_name, ROUND(sum(ii.line_total_price), 2) as tot
from city ci, customer cu, invoice i, invoice_item ii, product pr
where ci.id = cu.city_id and cu.id = i.customer_id and i.id = ii.invoice_id and ii.product_id = pr.id
group by ci.city_name, pr.product_name
order by tot desc, ci.city_name, pr.product_name
