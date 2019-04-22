SELECT CASE WHEN grade<8 THEN 'NULL' ELSE name END, grade, marks 
FROM grades ,students 
WHERE marks>=min_mark and marks<=max_mark 
ORDER BY grade DESC, name, marks;