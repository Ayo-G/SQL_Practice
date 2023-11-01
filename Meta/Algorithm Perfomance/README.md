# Meta - Algorithm Performance

Meta is developing a search algorithm that will allow users to search through their post history. <br>
The goal is to evaluate the performance of this algorithm.

Write a query that assigns ratings to the searches in the following way:
- If the search was not clicked for any term, assign the search with rating = **1** <br>
- If the search was clicked but the top position of clicked terms was outside the top three (3) positions, assign the search a rating = **2** <br>
- If the search was clicked but the top position of a clicked term was in the top three (3) positions, assign the search a rating = **3** <br>

As a `search_id` can contain more than one search term, select the highest rating for that `search_id`—output the `search_id` and its highest rating.

#### Table Structure

![image](https://github.com/Ayo-G/SQL_Practice/assets/110608447/533d39dc-70ea-4970-ab78-6d42ca159f2d)


#### Solution Explanation

The objective of this task is to evaluate the performance of this algorithm according to the given conditions. These conditions include rating searches according to their position and the number of times they were clicked.

The first thing I did was to create a CTE named "condition", select the `search_id` from the "fb_search_event" table then use a `CASE WHEN` statement to apply rankings to the `clicked` column based on the specified conditions.

![image](https://github.com/Ayo-G/SQL_Practice/assets/110608447/e6171ed2-28dc-471f-8d71-ab5efc86bfde)

After the CTE has been created, I then select the `search_id` and the maximum rating using the `MAX()` function from the earlier created "condition" CTE, <br>
Since there is a presence of an aggregate function in the query, it is required the non-aggregated columns be included in the `GROUP BY` statement.

![image](https://github.com/Ayo-G/SQL_Practice/assets/110608447/86b82b29-1d36-428e-9eb3-b38b4fcec6b3)

After all conditions have been met by the query, the query should look like this...

![image](https://github.com/Ayo-G/SQL_Practice/assets/110608447/86ef2dfe-22d9-4d37-819e-8447229cbbfe)

then the results should look like this...
![image](https://github.com/Ayo-G/SQL_Practice/assets/110608447/44f596f3-e7dc-437a-ae7b-15c83a12ea02)
