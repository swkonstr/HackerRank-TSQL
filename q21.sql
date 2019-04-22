SELECT sum(t.population)
FROM (
    select c.name, c.population, co.continent
    from CITY AS c
    inner join COUNTRY AS co ON c.countrycode=co.code
    ) AS t
WHERE t.continent='Asia';