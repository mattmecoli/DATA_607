SELECT A.movie_name AS "Movie Title", ROUND(AVG(B.rating), 2) AS "Average Rating", SUM(B.has_seen::int) AS "Number of Reviews"
FROM movies AS A
LEFT JOIN ratings as B
ON A.movie_id = B.movie_id
GROUP BY A.movie_name;