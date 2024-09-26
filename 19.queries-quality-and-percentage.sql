SELECT DISTINCT query_name , round(avg(rating/position) OVER(PARTITION BY query_name) ,2) AS quality,
round(avg(CASE WHEN rating<3 THEN 1 ELSE 0 end) OVER(PARTITION BY query_name)*100,2) AS poor_query_percentage FROM queries
WHERE query_name IS NOT NULL