SELECT city
FROM STATION
WHERE SUBSTRING(city, 1, 1) in ('a', 'e', 'i', 'o', 'u');