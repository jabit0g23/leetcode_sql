SELECT date_format(trans_date, "%Y-%m") AS month, country, count(*) AS trans_count, sum(if(state='approved',1,0)) AS approved_count, sum(amount) AS trans_total_amount, sum(if(state='approved',amount,0)) AS approved_total_amount
FROM Transactions
GROUP BY date_format(trans_date, "%Y-%m"),country;