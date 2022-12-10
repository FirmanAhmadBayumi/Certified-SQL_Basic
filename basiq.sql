--Soal 1
SELECT 
roll_number, name

FROM 
student_information a

INNER JOIN 
faculty_information b

ON
a.advisor = b.employee_ID

WHERE
(b.gender = 'M' and b.salary > 15000)
OR
(b.gender = 'F' and b.salary > 20000);
 
 
 --soal 2
 /*
Enter your query below.
Please append a semicolon ";" at the end of the query
*/

SELECT 
a.stock_code

FROM 
price_today a

INNER JOIN 
price_tomorrow b

ON 
a.stock_code = b.stock_code

WHERE 
b.price>a.price

ORDER BY stock_code ASC;
