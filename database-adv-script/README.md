# In this milestone of the project, I have been able to do the following:
### Write a query using an INNER JOIN that retrievs all bookings and the respective users who made those bookings.

### Write a query using aLEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews.

### Write a query using a FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.

### The first query finds properties by checking if their property_id appears in a subquery that groups reviews by property and computes an average rating exceeding 4.0.


### The second query relates each user in the outer query with their bookings in the correlated subquery that counts bookings per user, returning those with more than three bookings.