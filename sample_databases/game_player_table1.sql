CREATE DATABASE game_players;
USE game_players;

CREATE TABLE players (
	player_name varchar(128) not null, 
	nickname varchar(128) not null, 
	birth_year int not null, 
	score int not null
);

INSERT INTO players(player_name, nickname, birth_year, score) VALUES 
	('Joe Smith', 'The Blacksmith', 1989, 2435),
	('Bob Smith', 'Smithy', 1990, 2210),
	('Mark Johnson', 'Marklar', 1992, 1275),
	('John Michaels', 'Old Master', 1955, 2925),
	('Sophia Williams', 'Wise One', 1985, 2320),
	('Jane Doe', 'Anonymous Alice', 1988, 1875),
	('Brett Jakobs', 'Brett U Bet', 1993, 1600),
	('Jake Johnson', 'Jake The Snake', 1987, 1765),
	('Victoria Reilly', 'Vika', 1991, 1955),
	('Hope Winston', 'Hoppy', 1990, 2345),
	('Bob Carrol', 'Bob The Slob', 1980, 1945),
	('Lewis Liddel', 'Mad Hatter', 1976, 2245),
	('Mark Michaels', 'MandM', 1995, 1890),
	('Jane Johnson', 'JaneyJ', 1987, 2135),
	('Olivia Marshals', 'OliMari', 1991, 1875);

