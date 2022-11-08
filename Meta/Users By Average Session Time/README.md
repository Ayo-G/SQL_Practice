# Meta - Users By Average Session TIme

Calculate each user's average session time. A session is defined as the time difference between a page_load and page_exit. For simplicity, assume a user has only 1 session per day and if there are multiple of the same events on that day, consider only the latest page_load and earliest page_exit. 
Output the user_id and their average session time.

#### Table Structure

![image](https://user-images.githubusercontent.com/110608447/200199185-31e845c4-b666-4b12-87a4-f4ed89953190.png)

#### Solution Explanation
In this question, I am to find the average session time for each user *(a session is defined as the difference between earliest page exit and the latest page load)*

My approach is to isolate the page_load records using a cte and find the lastest page_load by using the *MAX()* function

![image](https://user-images.githubusercontent.com/110608447/200572646-810fd1eb-e748-4465-ae50-7e8a571467ea.png)

I would also isolate the page_exit records using the same approach and find the earliest page_exit using the *MIN()* function

![image](https://user-images.githubusercontent.com/110608447/200573009-5f2f5db0-c683-4f7a-a30b-4985e5a0e0a8.png)

With both CTEs ready, I would be selecting the user_id from any of the CTEs with the average session which is gotten by finding the difference between the page_exit and the page_load then finding the average of that.
<sub>*(In this case I selected the user_id from the first CTE)*</sub>
The query should look something like this...

![image](https://user-images.githubusercontent.com/110608447/200575014-5a9b31ae-7178-49a3-b2df-4610ab257cb8.png)

The result of the query is...

![image](https://user-images.githubusercontent.com/110608447/200575328-20d32435-97c3-495f-b54d-48eda07b2835.png)
