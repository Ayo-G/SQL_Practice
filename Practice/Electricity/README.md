## Table name
Electricity

## Table columns
cid
cname
quantity
price

## Column properties 
***cid:*** ID
***cname:*** customer name
***quantity:*** the quantity of electricity used by customer (in kwh)
***price:*** unit price of electricity (pence/kwh)

The table "Electricity" above describes the electricity consumption of each customer for the month of April, 2022, served by one energy supplier. The property of each column is also provided.

## Table Preview
image.png

## Questions
- Provide SQL commands that can create the above table successfully in the database and make column "cid" the primary key of the table.
- Suppose a software developer argues that the column "cname" should be made primary key of the table. How would you advise the software developer?
- Provide SQL commands to select customers from the above table with "quantity" less than 400 and greater than or equals to 200.
- Provide SQL commands to add an additional column to the above table with column name "bill", which represents the electricity bill of each customer (in pounds £). 
- Provide SQL commands to show data entries with "bill" greater than 50 pounds (£) and in the descending order according to the column "quantity".