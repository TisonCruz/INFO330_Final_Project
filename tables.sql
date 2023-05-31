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

--creating temp table for games
CREATE TABLE IF NOT EXISTS games_table (
    games_played,
    games_started, 
    UniqueID INTEGER,
    FOREIGN KEY(UniqueID) REFERENCES player_table(UniqueID)
);

--Inserting into games table (games played and games gtarted)
INSERT INTO games_table (games_played, games_started,UniqueID)
SELECT 
    playoff_stat.g,
    playoff_stat.gs,
    player_table.UniqueID
FROM playoff_stat, player_table
WHERE playoff_stat.player = player_table.player


-- --creating temp table for composite table
CREATE TABLE IF NOT EXISTS composite_table (
    season_id INTEGER,
    UniqueID INTEGER,
    FOREIGN KEY(season_id) REFERENCES season_table(season_id),
    FOREIGN KEY(UniqueID) REFERENCES player_table(UniqueID),
    PRIMARY KEY (season_id, UniqueID)

);

--Insert into composite table





