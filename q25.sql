SELECT a.hacker_id, a.name, count(b.hacker_id)    
FROM Hackers AS a, Challenges AS b
WHERE a.hacker_id = b.hacker_id
GROUP BY a.hacker_id, a.name
HAVING count(b.hacker_id) NOT IN (
    SELECT DISTINCT count(hacker_id) 
    FROM challenges
    WHERE hacker_id <> a.hacker_id
    GROUP BY hacker_id
    HAVING count(hacker_id) < (
        SELECT max(x.challenge_count) 
        FROM (
            SELECT count(b.challenge_id) AS challenge_count
            FROM Challenges AS b 
            GROUP BY b.hacker_id) AS x 
        )
    )
ORDER BY count(b.hacker_id) DESC, a.hacker_id;