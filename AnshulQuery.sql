SELECT player, MAX(pts_per_g) AS max_points
FROM playoffStats
GROUP BY player
ORDER BY max_points DESC;

SELECT pos, AVG(fg_pct) AS avg_fg_percentage
FROM playoffStats
GROUP BY pos;