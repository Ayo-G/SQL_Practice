# Amazon - Highest Cost Orders

Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. If customer had more than one order on a certain day, sum the order costs on daily basis. Output customer's first name, total cost of their items, and the date.<br>
For simplicity, you can assume that every first name in the dataset is unique.

#### Table Structure
**Customers Table**

![image](https://user-images.githubusercontent.com/110608447/201497996-1b973962-55e3-4049-a902-40390635a8d6.png)

**Orders Table**

![image](https://user-images.githubusercontent.com/110608447/201498047-73da80cd-ccd5-448e-9efa-e5561a0b67c7.png)

#### Solution Explanation

The main objective is to find the customer with the highest order cost for each day  between a particular period of time.<br>
My first step is to write a CTE and select the firstname, order date, sum of the total order cost, then rank the the sum of total order cost using the denserank function. All these would be selected from the Customers and Orders table which would be joined together usiing the **id** column.

![image](https://user-images.githubusercontent.com/110608447/201498404-a8300a23-0e7f-4c06-b0bd-f80e9d0adefc.png)

My next step is to select the firstname, total and order date from the justed CTE then use the requirements from the questions as filters to get our correct answer.
The first requirement is to select the customers highest daily total. So to get this I would be selecting the entry where the rank is 1 because that is the highest daily total.<br>
The second requirement is to query the records between a particular date. TO achieve that I would be **and** to add another condition to the where function.<br>
The query should look like this...

![image](https://user-images.githubusercontent.com/110608447/201498714-051d4202-632c-4627-a543-f37c5ae39a08.png)

The result of the overall query is...

![image](https://user-images.githubusercontent.com/110608447/201498758-f6fdd183-f0a7-4772-bd0f-bc8386a17077.png)
