SELECT DISTINCT city
FROM station
WHERE NOT SUBSTRING(city, 1, 1) in ('a','e','i','o','u');