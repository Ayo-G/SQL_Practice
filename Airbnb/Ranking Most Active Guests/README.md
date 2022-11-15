# Airbnb - Ranking Most Active Guests

Rank guests based on the number of messages they've exchanged with the hosts. Guests with the same number of messages as other guests should have the same rank. Do not skip rankings if the preceding rankings are identical.
Output the rank, guest id, and number of total messages they've sent. Order by the highest number of total messages first.

#### Table Structure
<br> <sub> This is just a preview of the result and not the entire result </sub> <br>
![image](https://user-images.githubusercontent.com/110608447/201978859-63547930-2b5b-46e2-a7dd-1958b9a92d36.png)

#### Solution Explanation

Since we are asked to rank the guests based on the number of messages they have sent and to also give the same rank to guests with the same numbeer of messages, I would be making use of the DENSE_RANK() function.<br>
I would start by selecting the Dense rank function over the total number of messages in descending order. Then I would also select the id of the guest and the total messages the guest has sent.<br>
After selecting all that, I would be grouping everything in the _select_ query by the id of the guest in order to group all the entries by the id of the guest. <br>
I would then use the order by function to order the results by the rank.

![image](https://user-images.githubusercontent.com/110608447/201981182-ba52809f-1c76-4650-ac53-52b55190fca5.png)

Below is the output of the query above

![image](https://user-images.githubusercontent.com/110608447/201981638-dca749a5-3e1f-4260-ae74-d90b682906bf.png)
<br> <sub> This is just a preview of the result and not the entire result </sub>
