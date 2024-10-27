SELECT s1.id,
CASE
  WHEN s1.id % 2 <> 0 AND s1.id = (select s2.id from seat s2 ORDER BY id DESC LIMIT 1) THEN s1.student
  WHEN s1.id % 2 <> 0 THEN (select s2.student from seat s2 where s2.id = s1.id + 1)
  WHEN s1.id % 2 = 0 THEN (select s2.student from seat s2 where s2.id = s1.id - 1)
END AS student
FROM SEAT s1
ORDER BY id ASC