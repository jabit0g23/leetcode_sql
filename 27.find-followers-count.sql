SELECT user_id , count(follower_id) AS followers_count
FROM followers
GROUP BY user_id
ORDER BY user_id;