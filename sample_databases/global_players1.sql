CREATE DATABASE global_players;
USE global_players;

CREATE TABLE players (
	real_name varchar(128) not null, 
	player_name varchar(128) not null, 
	birth_year int not null, 
	country varchar(128) not null, 
	score int not null
);

INSERT INTO players(real_name, player_name, birth_year, country, score) VALUES 
	('Maria Lopez', 'SuperMaria', 1990, 'Mexico', 2850),
	('Marcus Johnson', 'OldMaster', 1955, 'United States', 3210),
	('Sophia Perez', 'WiseOne', 1992, 'Mexico', 2920),
	('Junichi Oda', 'Joda', 1985, 'Japan', 2655),
	('Max Michaels', 'MandM', 1993, 'Unted States', 2235),
	('Kim Soon', 'K-Soh', 1989, 'South Korea', 2785),
	('Yoshi Masuda', 'Yosh', 1987, 'Japan', 3150),
	('Kara Brooks', 'K-Bro', 1995, 'United States', 2675),
	('Dennis Ritchie', 'TheMenace', 1990, 'United Kingdom', 2755),
	('Emmie Fuentes', 'EmFu', 1988, 'Mexico', 3145),
	('Mike Smith', 'TheBlacksmith', 1992, 'United Kingdom', 2320),
	('Hiro Miyamoto', 'TheHero', 1984, 'Japan', 3250),
	('Joe Carpenter', 'WoodMan', 1995, 'United States', 2230),
	('Joan Sung', 'JSinger', 1980, 'South Korea', 3020),
	('Daniella Salazar', 'Dansa', 1986, 'Brazil', 2870),
	('Shigeru Niko', 'katananik', 1993, 'Japan', 2365),
	('Robin Banks', 'bandit', 1990, 'United Kingdom', 2575),
	('Bob Johnson', 'BobTheSlob', 1991, 'United States', 2235),
	('Rukia Nakamoto', 'rook', 1992, 'Japan', 3345),
	('Tila Nova', 'SuperNova', 1991, 'Brazil', 3125),
	('Carol Smith', 'CSmithy', 1990, 'United States', 2150),
	('Donald Glover', 'gloveslap', 1987, 'United Kingdom', 2455),
	('Juan Hayek', 'JHA', 1983, 'Mexico', 2890),
	('Victoria Nabokov', 'Vika', 1991, 'Ukraine', 3245),
	('Daniel Emanual', 'DanTheMan', 1996, 'Mexico', 3025),
	('Rodney Do', 'rodorobo', 1987, 'United States', 2455),
	('Jamie Rogers', 'JCat', 1985, 'United Kingdom', 2135),
	('Edith Rivera', 'TheRiver', 1989, 'Brazil', 2560),
	('Miku Satoshi', 'Neko', 1988, 'Japan', 2765),
	('Sergei Kuniz', 'Sergeant', 1984, 'Ukraine', 2895);

