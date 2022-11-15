# Airbnb - Number of Units per Nationality

Find the number of apartments per nationality that are owned by people under 30 years old.
Output the nationality along with the number of apartments and sort records by the apartments count in descending order.

#### Table(s) Structure
<sub> This is just a preview of the result and not the entire table </sub> <br>
<sub> airbnb_hosts</sub> <br>
![image](https://user-images.githubusercontent.com/110608447/201986961-ce64b9a6-64fc-48dd-94a8-b3f7fad0e81c.png)
<br> <sub> airbnb_units</sub> <br>
![image](https://user-images.githubusercontent.com/110608447/201987666-52a3445d-b210-460d-99f4-1d4e77c0bd58.png)

#### Solution Explanation

The table given for the for the host details contains duplicate host_id so I would be using a CTE to create a table from the exiating host details table containing the _distinct_ host_id, age and nationality. <br>
![image](https://user-images.githubusercontent.com/110608447/201988775-19cd4336-4abc-459d-9644-f876beec4c71.png)

After the CTE has been created, I would be selecting the nationality from the CTE alongside the count of unit_id from the airbnb table. To achieve this, both tables (_the new table and the unit information table_) would have to be joined using the **host_id**. <br> After joining, I would then filter the result by the unit type and the age of the host which in this case, the unit type should be *"Apartments"* and the age of the host should be less than *"30"*.<br>
I would also be grouping the count of unit_id by the nationality and then order the result by the count of unit_id in descending order.

![image](https://user-images.githubusercontent.com/110608447/201990674-ab1b2630-bdc6-4cc0-9506-4ae4f94fb969.png)

#### Result

![image](https://user-images.githubusercontent.com/110608447/201991063-206af760-a700-47fb-ac9e-68b6b7ec94cb.png)
