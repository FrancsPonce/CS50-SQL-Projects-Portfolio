# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

IN FAVOR OF THE APPROACH
1- If we perform random partitioning on our data distribution across the three boats, we as researchers can easily execute a join to unify the three different tables and then order them by their timestamp, without facing any issues due to the random partitioning.
2- In addition to the first point, we can also apply an index to our DATETIME column to optimize our queries.

NOT IN FAVOR OF THE APPROACH
1- As noted in the observations, random partitioning can be easily misinterpreted, mainly due to its lack of order. If we attempt to retrieve information from our database using only one of the boats, there's a high likelihood of obtaining incorrect results or encountering missing data issues.
2- The biggest challenge with random partitioning lies with the researcher, as the accuracy of the information obtained depends heavily on their skill in handling the data.

## Partitioning by Hour

IN FAVOR OF THE APPROACH
1- This approach makes it much easier to perform CRUD operations, as it allows you to physically index your dataset just by observing it.
2- This type of partitioning provides clear information on how to distribute our intervals, which can optimize data collection and, subsequently, CRUD operations.

NOT IN FAVOR OF THE APPROACH
1- When partitioning by hour with three boats, we might create a bottleneck in our data collection (especially if we're collecting large amounts of data). Additionally, if data collection is not uniform throughout the 24 hours of the day, it may be unnecessary to have that many boats.
2- While this approach is generally effective, it could pose challenges when trying to retrieve information spanning multiple partitioned hours. For example, if I want to obtain data from between 7 AM and 7 PM, it may be more difficult due to the need for joins. However, as mentioned earlier, it's challenging to find "fundamental" reasons to oppose this approach—or any approach—since with the right skills in handling CRUD operations, you can work with any partitioning method without significant issues.

## Partitioning by Hash Value

IN FAVOR OF THE APPROACH
1- Working with hash value partitioning improves the distribution of data, leading to better optimization of the database.
2- With hash value partitioning, querying the dataset becomes more efficient because knowing the specific hash value of an observation allows for direct searching within the partition where the information is stored.

NOT IN FAVOR OF THE APPROACH
1- Data will be randomly distributed, adding a layer of complexity to queries, as joins will be necessary to connect the three different tables when searching for information.
2- Using hash values introduces an additional layer of complexity in CRUD operations, particularly when adding, deleting, or modifying any information within the tables.
