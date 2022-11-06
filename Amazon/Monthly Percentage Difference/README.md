 # Amazon - Monthly Percentage Difference
 
Given a table of purchases by date, calculate the month-over-month percentage change in revenue. The output should include the year-month date (YYYY-MM) and percentage change, rounded to the 2nd decimal point, and sorted from the beginning of the year to the end of the year. <br>
The percentage change column will be populated from the 2nd month forward and can be calculated as ((this month's revenue - last month's revenue) / last month's revenue)*100.

#### Table Structure
Preview of the first 10 entries...

![image](https://user-images.githubusercontent.com/110608447/200179929-d95061a8-b5e9-4a45-9fd5-b54b2c2e7772.png)

#### Solution Explanation

Since this involves the calculation of the revenue from the current and previous month, my approach is to create two CTEs with each CTE calculating the revenue for the current month and the revious month respectively.
And also, the question states that the year and month should be returned from the date column given **("created_at")**  so I have to use the **TO_CHAR()** function to achieve that.

The first CTE as said earlier, is used to get the current month revenue (sum of the value column) grouped by the date 

![image](https://user-images.githubusercontent.com/110608447/200197422-951793e7-070a-41f1-a7fb-c677f1015c8c.png)

The second CTE on the other hand is similar to the first CTE. The date, current revenue, and previous month revenue (which is achieved using the LAG() function).<br> *An example of the LAG function is as follows **LAG(revenue, 1)**, with the "revenue" being the column to be delayed and "1" being the interval to be delayed by.*  The code looks like this...

![image](https://user-images.githubusercontent.com/110608447/200198069-63e23031-d994-48d7-8327-f40121274d81.png)

Ater the two CTEs have been settled, I can go ahead and query them by selecting the date and percentage difference rounded to 2 decimal places <br>
<sub> *(this is gotten by subtracting the previous month revenue from the current month revenue <br>
and dividing that by the previous month revenue <br>
then multiplying the answer by 100 to get the percentage <br>
then using the round function to change the answer to 2 decimal places.)* </sub>

The code should look something like this...

![image](https://user-images.githubusercontent.com/110608447/200198515-3bf5508d-47dd-453d-a92d-18b36c19486d.png)

And the final output of the query should look something like this...

![image](https://user-images.githubusercontent.com/110608447/200198626-7545991e-8066-44b1-95c0-93b58fdc3a50.png)
