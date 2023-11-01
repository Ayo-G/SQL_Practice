# Meta - Algorithm Performance

Meta is developing a search algorithm that wil allow users to search through their post history. <br>
The goal is to evaluate the performance of this algorithm.

Write a query that assigns ratings to the searches in the following way:
- If the search was not clicked for any term, assign the search with rating = **1** <br>
- If the search was clicked but the top position of clicked terms was outside the top three (3) positions, assign the search a rating = **2** <br>
- If the search was clicked but the top position of a clicked term was in the top three (3) positions, assign the search a rating = **3** <br>

As a `search_id` can contain more than one search term, select the highest rating for that `search_id`. Output the `search_id` and its highest rating.

#### Table Structure

![image](img.png)

#### Solution Explanation

The objective of this task is to evaluate the performance of this algorithm according to the given conditions. These conditions include rating searches according to their position and the number of times they were clicked.

The first thing I did was to create a CTE named "condition", select the `search_id` from "fb_search_event" table then use a `CASE WHEN` statement to apply rankings to the `clicked` column based on the specified conditions.

![image](image.png)

After the CTE has been created, I then select the `search_id` and the maximum rating using the `MAX()` funciton from the earlier created "condition" CTE, <br>
Since there is a presence of an aggregrate function in the query, it is required the non-aggregrated columns be included in the `GROUP BY` statement.

![image](image-1.png)

After all conditions has been met by the query, the query should look like this...

![image](final_query.png)

then the results shold look like this...
![image](result.png)