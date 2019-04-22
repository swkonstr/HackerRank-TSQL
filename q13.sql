SELECT DISTINCT city
FROM station
WHERE SUBSTRING(city, LEN(city), 1) in ('a', 'e', 'i', 'o', 'u') and SUBSTRING(city, 1, 1) in ('a', 'e', 'i', 'o', 'u')
ORDER BY city;