(select city, length(city) as name_length
from station
order by name_length, city
limit 1)

union all

(select city, length(city) as name_length
from station
order by name_length desc, city
limit 1)


/*
Enter your query here.
*/
