WITH dates AS (
  SELECT DISTINCT visited_on
  FROM customer
)

SELECT c1.visited_on, sum(c2.amount) as amount, round(sum(c2.amount) / 7, 2) as average_amount
FROM dates c1
JOIN customer c2 ON datediff(c1.visited_on, c2.visited_on) between 0 and 6
WHERE datediff(c1.visited_on, (SELECT min(visited_on) FROM customer)) >= 6
GROUP BY c1.visited_on
ORDER BY c1.visited_on