SELECT m.name
FROM employee AS e
JOIN employee AS m
ON e.managerId = m.id
GROUP BY e.managerId 
HAVING count(e.id) >= 5