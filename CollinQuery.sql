Select d.stl_pct, p.player_name
From Defensive Table as d
Join player_table
Order By stl_pct desc
Limit 10; 