SELECT h.hacker_id, h.name
FROM hackers AS h, submissions AS s, difficulty AS d, challenges AS c
WHERE
    s.score = d.score
    AND s.challenge_id = c.challenge_id
    AND c.difficulty_level = d.difficulty_level
    AND s.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING count(h.hacker_id) > 1
ORDER BY count(h.hacker_id) DESC, h.hacker_id;