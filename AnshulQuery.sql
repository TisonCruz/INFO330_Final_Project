SELECT player, MAX(pts_per_g) AS max_points
FROM playoffStats
GROUP BY player
ORDER BY max_points DESC;