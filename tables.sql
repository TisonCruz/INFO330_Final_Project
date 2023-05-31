-- creating table called player_table
CREATE TABLE IF NOT EXISTS player_table (
    UniqueID INTEGER PRIMARY KEY,
    player VARCHAR, 
    position VARCHAR, 
    age INTEGER, 
    teamID INTEGER
); 

-- Inserting information into player_table from playoff_stat

INSERT INTO player_table (player, position, age, teamID)
SELECT
    playoff_stat.player, 
    playoff_stat.pos,
    playoff_stat.age,
    playoff_stat.team_id
FROM playoff_stat;


--creating a season table
CREATE TABLE IF NOT EXISTS season_table (
    season_id INTEGER PRIMARY KEY, 
    season
);

--Inserting into season table
INSERT INTO season_table (season)
SELECT 
    playoff_stat.season
FROM playoff_stat;
