Select pt.player_name, dt.stl_pct
From defensive_Table as dt
Join composite_table as ct on ct.unique_season_id = de.unique_season_id
Join player_table as pt on pt.unique_id = mt.unique_id
Order By dt.stl_pct desc
Limit 10; 


