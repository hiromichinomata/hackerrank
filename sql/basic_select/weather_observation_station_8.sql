select city from station
where right(city, 1) in ('a', 'i', 'u', 'e', 'o')
and left(city, 1) in ('a', 'i', 'u', 'e', 'o');


/*
Enter your query here.
*/
