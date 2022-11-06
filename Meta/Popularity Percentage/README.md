# Meta - Popularity Percentage

Find the popularity percentage for each user on Meta/Facebook. The popularity percentage is defined as the total number of friends the user has divided by the total number of users on the platform, then converted into a percentage by multiplying by 100.
Output each user along with their popularity percentage. Order records in ascending order by user id.
The 'user1' and 'user2' column are pairs of friends.

#### Table Structure
![image](https://user-images.githubusercontent.com/110608447/200176721-43b36bae-51a2-45c9-a7e5-a1274222de49.png)

#### Solution Explanation

My solution was to breakdown my code into 2 ctes. <br> 
In the first cte, I try to get the number of friends for each user (user1 and user2) then joining both code with UNION.

![image](https://user-images.githubusercontent.com/110608447/200177598-2c2785eb-3dc1-445e-a6bc-37210f293d52.png) 

 After that, I try to get the popularity of each user in the secont cte by doing a SUM of the count (which is the number of friends), then grouping it by each user. <br>
I also got the total number of users by finding the COUNT of each user and using the OVER()   function to avoid using the GROUP BY.

![image](https://user-images.githubusercontent.com/110608447/200178157-9f4467ce-0443-4927-b2e1-358e8f11fde6.png)

With all that in place, I selected the user alongside the popularity percentage which was gotten by dividing the total number of friends a user has by the total number of users multiplied by 100.

![image](https://user-images.githubusercontent.com/110608447/200178329-d616285c-ea4e-4158-847c-de87f1ebda8c.png)



