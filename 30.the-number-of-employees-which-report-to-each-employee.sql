SELECT e1.employee_id,e1.name,count(e2.reports_to) reports_count,round(avg(e2.age*1.00),0) average_age
FROM employees e1 INNER JOIN employees e2 ON e2.reports_to = e1.employee_id
GROUP BY e1.employee_id,e1.name
order BY e1.employee_id