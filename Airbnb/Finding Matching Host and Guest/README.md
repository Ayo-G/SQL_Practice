# Airbnb - Finding Matching Hosts and Guest

Find matching hosts and guests pairs in a way that they are both of the same gender and nationality.<br>
Output the host id and the guest id of matched pair.

#### Table(s) Structure
<sub> This is just a preview of the result and not the entire table </sub> <br>
<sub> airbnb_hosts</sub> <br>
![image](https://user-images.githubusercontent.com/110608447/201997273-0e9847ad-7d6f-4af4-b277-5d3c5040a096.png)
<br> <sub> airbnb_guests</sub> <br>
![image](https://user-images.githubusercontent.com/110608447/201997435-988538f9-9718-4ea1-8b68-2d566c350e39.png)

#### Solution Explanation

Since there can be multiple hosts for each guests, my approach would be to select the DISTINCT host alongside the guest from their respective tables.<br>
But to be able to match them to be the same gender and nationality, I would be joining the two tables based on the natonality and gender columns from both tables.

![image](https://user-images.githubusercontent.com/110608447/202840163-403b51f5-f2ba-459a-894d-40152a0264d4.png)

#### Result

![image](https://user-images.githubusercontent.com/110608447/202840203-079f840d-fb6d-48f6-af54-7ccbc5cde727.png)
