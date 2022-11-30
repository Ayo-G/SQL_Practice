``` sql

/* 
Question 1
Select all the clients called Paul in first_name or middle_name and who are more than 25 years old. In the results order them from older to younger
*/
with client_details as
  (select
       client_id,
       first_name,
       middle_name,
       last_name,
       date_of_birth,
       date_diff(current_date(), date_of_birth, year) as age
   from
       client
   where
       (first_name = 'Paul' or middle_name = 'Paul')
   )
  
select
    *
from
    client_details
WHERE 
    age > 25
ORDER BY 
    age DESC
    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Question 2
Add a column to the table from question (1) that contains the number of loans each customer made. If there is no loan, this column should show 0.
*/
WITH client_details as
  (SELECT
       client_id,
       first_name,
       middle_name,
       last_name,
       date_of_birth,
       date_diff(current_date(), date_of_birth, year) as age
   FROM
       client
   WHERE
       (first_name = 'Paul' or middle_name = 'Paul')  
  )
  

SELECT
    c.client_id,
    c.first_name,
    c.middle_name,
    c.last_name,
    c.date_of_birth,
    c.age,
    COUNT(l.loan_id) as no_of_loans
FROM
    client_details c
LEFT JOIN 
    loan l
ON
    c.client_id = l.client_id
WHERE 
    age > 25
GROUP BY 
    1,2,3,4,5,6
ORDER BY 
    age DESC
    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Question 3
Select the 100cc, 125cc and 150cc bikes from the vehicle table. Add an engine_size column to the output (that contains the engine size).
*/
SELECT
    v.*,
    CASE WHEN model_name LIKE '%100%' THEN 100
         WHEN model_name LIKE '%125%' THEN 125
         WHEN model_name LIKE '%150%' THEN 150
    END as engine_size
FROM 
    vehicle v
WHERE 
    model_name LIKE '%150%' 
OR 
    model_name LIKE '%125%' 
OR 
    model_name LIKE '%100%'

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Question 4
Calculate the total principal_amount per client full name (one column that includes all the names for each client) and per vehicle make.
*/
SELECT 
     ARRAY_TO_STRING([first_name, middle_name, last_name], ' ') as fullname,
     make,
     sum(principal_amount) as total_principal_amount
FROM
     client c
LEFT JOIN
     loan l
ON
     c.client_id = l.client_id
LEFT JOIN 
     vehicle v
ON
     l.vehicle_id = v.vehicle_id
GROUP BY
     1,2
     
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Question 5
Select the loan table and add an extra column that shows the chronological loan order for each client based on the submitted_on_date column: 1 if it's the client's first sale, 2 if it's the client's second sale etc. <br>
Call it loan_order.
*/
SELECT
     l.*,
     rank() over (partition by client_id order by submitted_on_date) as loan_order
FROM
     loan l
ORDER BY
     client_id
```
