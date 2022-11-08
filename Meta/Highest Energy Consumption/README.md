# Meta - Highest Energy Consumption

Find the date with the highest total energy consumption from the Meta/Facebook data centers. Output the date along with the total energy consumption across all data centers.

#### Table Structure

**fb_eu_energy** 

![image](https://user-images.githubusercontent.com/110608447/200582975-f89c2ec9-de79-44c4-b2ff-17a5f81c52b2.png)

 **fb_asia_energy**

![image](https://user-images.githubusercontent.com/110608447/200583210-029c7005-abdc-413d-876b-71a6e20815f7.png)

**fb_na_energy**

![image](https://user-images.githubusercontent.com/110608447/200583361-631c036f-3e90-4a6b-a231-75777331a54f.png)

#### Solution Explanation

For this question, three datasets were provided and each dataset contains the data generated from three different locations. <br>
So the first step is to join all three datasets in a CTE using the *UNION* function in order to prevent the loss of any data during combination.

![image](https://user-images.githubusercontent.com/110608447/200587987-e439d28f-f36b-496f-b564-a04126c02338.png)

The next step is use another CTE called *ranked* to find the total consumption for each day and make use of the *DENSE_RANK()* function to rank the consumptions based on the size in descending order.
<br> <sub> I'm using DENSE_RANK instead of the regular RANK so that days with the same consumption have the same rank </sub> <br>

![image](https://user-images.githubusercontent.com/110608447/200589685-76cfe7ca-8cca-4118-9607-bb212fc52872.png)

I would be selecting the date and total energy from the ranked CTE then using the _WHERE()_ function to filter the results to show the highest consumption.  

![image](https://user-images.githubusercontent.com/110608447/200592288-519032be-d25e-4f88-bc47-f582d9a0a242.png)

#### Result
The result of the query should be as follows...

![image](https://user-images.githubusercontent.com/110608447/200592582-ad5426d8-42fe-40b7-ac90-dc50fcc3ced2.png)


