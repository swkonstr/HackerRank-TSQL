SELECT w.id, p.age, w.coins_needed, w.power
FROM wands AS w, wands_property AS p
WHERE w.code=p.code
    AND p.is_evil!=1
    AND w.coins_needed=(
        SELECT min(Wands.coins_needed) 
        FROM wands
        INNER JOIN wands_property 
        ON wands.code=wands_property.code
        WHERE wands_property.age=p.age AND Wands.power=w.power)
order by w.power desc,p.age desc;