# Google - Counting Instances in Text

Find the number of times the words 'bull' and 'bear' occur in the contents. We're counting the number of times the words occur so words like 'bullish' should not be included in our count.
Output the word 'bull' and 'bear' along with the corresponding number of occurrences.

#### Table Structure

![image](https://user-images.githubusercontent.com/110608447/200178926-a2d9811c-816f-4927-9e6b-001baf4d82a6.png)

#### Solution Explanation

In my attempt to solve this question, I made use of two CTEs. <br>
The first CTE was used to return the word "bull" alongside the number of times that thw word "bull" in the contents.

![image](https://user-images.githubusercontent.com/110608447/200179393-be48cad1-5dec-41b0-b015-6554b202a2a3.png)

While the second CTE was used to return the word to be checked which is "bear" and the number of times that word appeared in the contents.

![image](https://user-images.githubusercontent.com/110608447/200179408-9bf730b6-1972-4501-8e88-ee2f5df53994.png)

Now that both CTEs are ready, I selected everything from both CTEs and joined them together using UNION since they both have the same number of results.

![image](https://user-images.githubusercontent.com/110608447/200179550-4a1f486a-86fb-40f5-b959-238738d36b09.png)

#### Result

The result of the query is;

![image](https://user-images.githubusercontent.com/110608447/200179631-84ccf147-8662-44f5-a18e-ee1e69b835c8.png)
