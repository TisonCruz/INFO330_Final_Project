SELECT pt.player_name, COUNT(DISTINCT pt.team_id)
FROM player_table pt
GROUP BY pt.player_name
HAVING COUNT(DISTINCT pt.team_id) > 1;



