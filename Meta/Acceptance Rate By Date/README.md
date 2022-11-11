# Meta - Acceptance Rate by Date

What is the overall friend acceptance rate by date? Your output should have the rate of acceptances by the date the request was sent. Order by the earliest date to latest.<br>
Assume that each friend request starts by a user sending (i.e., user_id_sender) a friend request to another user (i.e. user_id_receiver) that's logged in the table with action = 'sent'. If the request is accepted, the table logs action = 'accepted'. If the request is not accepted, no record of action = 'accepted' is logged.

#### Table Structure

![image](https://user-images.githubusercontent.com/110608447/201423368-6d1e9f91-1e52-4256-902a-361ef54c59e8.png)

#### Solution Explanation
                                  
Since we are asked to find the friend acceptance rate by date and that is gotten by dividing the number of received requests by the number of sent requests.<br>
The first step is to use a CTE to isolate the users that sent requests by selecting the date and users then filtering them by the _sent_ action.

![image](https://user-images.githubusercontent.com/110608447/201425121-aee7ecfd-0ec2-49c1-9bb0-75574c048a6b.png)

I'd also do the same for the users that accepted the sent requests by selecting the date alongside users and filtering them by the _accepted_ action.

![image](https://user-images.githubusercontent.com/110608447/201430134-8b127cbe-5fba-4d7e-96d8-222f78da1671.png)

After both CTEs have been formed, we would select the date from one of the CTEs but preferably from the first CTE, then divide the count of the user_id_receiver from the accepted CTE by the count of user_id_sender from the sent CTE to get the acceptance rate. <br>
<sub> The count of the user_id_sender would would be converted to decimal using the cast fucntion </sub> <br>
The acceptance rate would then be grouped by the date.

![image](https://user-images.githubusercontent.com/110608447/201441833-81c6a562-6ca8-4d01-9bf7-085c48512a70.png)

With all the queries ready, our results should look like this...

![image](https://user-images.githubusercontent.com/110608447/201443049-4157a551-dd05-4070-8440-884e275835c1.png)









