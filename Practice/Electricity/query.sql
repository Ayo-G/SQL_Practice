DROP TABLE electricity;

CREATE TABLE electricity
(
    cid INT NOT NULL PRIMARY KEY,
    cname varchar(50),
    quantity INT,
    price DECIMAL
);

INSERT INTO electricity
  ("cid", "cname", "quantity", "price")
VALUES
  ('1001', 'C1', '350', '15'),
  ('1002', 'C2', '250', '20'),
  ('1003', 'C3', '200', '22'),
  ('1004', 'C4', '400', '25'),
  ('1005', 'C5', '300', '27');


-- Suppose a software developer argues that the column "cname" should be made primary key of the table. How would you advise the software developer?

/*
I would advise that the "cid" column be used as the primary key over the "cname" column because there can be a possibility of customers having the same name which goes against the idea of the primary key being the unique identifier for each customer.
*/


-- Provide SQL commands to select customers from the above table with "quantity" less than 400 and greater than or equals to 200.

SELECT 
    cid,
    cname
FROM
    electricity
WHERE
    quantity < 400 
    and 
    quantity >= 200;



-- Provide SQL commands to add an additional column to the above table with column name "bill", which represents the electricity bill of each customer (in pounds £). 

ALTER TABLE electricity
ADD bill DECIMAL(5,1);

UPDATE electricity
SET
    bill = ((price / 100)* quantity);


-- Provide SQL commands to show data entries with "bill" greater than 50 pounds (£) and in the descending order according to the column "quantity".

SELECT 
    *
FROM 
    electricity
WHERE
    bill > 50
ORDER BY
    quantity DESC;