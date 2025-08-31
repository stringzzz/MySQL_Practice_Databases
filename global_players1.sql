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

/*

mysql> SELECT * FROM players;
+------------------+---------------+------------+----------------+-------+
| real_name        | player_name   | birth_year | country        | score |
+------------------+---------------+------------+----------------+-------+
| Maria Lopez      | SuperMaria    |       1990 | Mexico         |  2850 |
| Marcus Johnson   | OldMaster     |       1955 | United States  |  3210 |
| Sophia Perez     | WiseOne       |       1992 | Mexico         |  2920 |
| Junichi Oda      | Joda          |       1985 | Japan          |  2655 |
| Max Michaels     | MandM         |       1993 | Unted States   |  2235 |
| Kim Soon         | K-Soh         |       1989 | South Korea    |  2785 |
| Yoshi Masuda     | Yosh          |       1987 | Japan          |  3150 |
| Kara Brooks      | K-Bro         |       1995 | United States  |  2675 |
| Dennis Ritchie   | TheMenace     |       1990 | United Kingdom |  2755 |
| Emmie Fuentes    | EmFu          |       1988 | Mexico         |  3145 |
| Mike Smith       | TheBlacksmith |       1992 | United Kingdom |  2320 |
| Hiro Miyamoto    | TheHero       |       1984 | Japan          |  3250 |
| Joe Carpenter    | WoodMan       |       1995 | United States  |  2230 |
| Joan Sung        | JSinger       |       1980 | South Korea    |  3020 |
| Daniella Salazar | Dansa         |       1986 | Brazil         |  2870 |
| Shigeru Niko     | katananik     |       1993 | Japan          |  2365 |
| Robin Banks      | bandit        |       1990 | United Kingdom |  2575 |
| Bob Johnson      | BobTheSlob    |       1991 | United States  |  2235 |
| Rukia Nakamoto   | rook          |       1992 | Japan          |  3345 |
| Tila Nova        | SuperNova     |       1991 | Brazil         |  3125 |
| Carol Smith      | CSmithy       |       1990 | United States  |  2150 |
| Donald Glover    | gloveslap     |       1987 | United Kingdom |  2455 |
| Juan Hayek       | JHA           |       1983 | Mexico         |  2890 |
| Victoria Nabokov | Vika          |       1991 | Ukraine        |  3245 |
| Daniel Emanual   | DanTheMan     |       1996 | Mexico         |  3025 |
| Rodney Do        | rodorobo      |       1987 | United States  |  2455 |
| Jamie Rogers     | JCat          |       1985 | United Kingdom |  2135 |
| Edith Rivera     | TheRiver      |       1989 | Brazil         |  2560 |
| Miku Satoshi     | Neko          |       1988 | Japan          |  2765 |
| Sergei Kuniz     | Sergeant      |       1984 | Ukraine        |  2895 |
+------------------+---------------+------------+----------------+-------+

------------------------------------------------------------------------------

-- Sort by highest score first

mysql> SELECT * FROM players ORDER BY score DESC;
+------------------+---------------+------------+----------------+-------+
| real_name        | player_name   | birth_year | country        | score |
+------------------+---------------+------------+----------------+-------+
| Rukia Nakamoto   | rook          |       1992 | Japan          |  3345 |
| Hiro Miyamoto    | TheHero       |       1984 | Japan          |  3250 |
| Victoria Nabokov | Vika          |       1991 | Ukraine        |  3245 |
| Marcus Johnson   | OldMaster     |       1955 | United States  |  3210 |
| Yoshi Masuda     | Yosh          |       1987 | Japan          |  3150 |
| Emmie Fuentes    | EmFu          |       1988 | Mexico         |  3145 |
| Tila Nova        | SuperNova     |       1991 | Brazil         |  3125 |
| Daniel Emanual   | DanTheMan     |       1996 | Mexico         |  3025 |
| Joan Sung        | JSinger       |       1980 | South Korea    |  3020 |
| Sophia Perez     | WiseOne       |       1992 | Mexico         |  2920 |
| Sergei Kuniz     | Sergeant      |       1984 | Ukraine        |  2895 |
| Juan Hayek       | JHA           |       1983 | Mexico         |  2890 |
| Daniella Salazar | Dansa         |       1986 | Brazil         |  2870 |
| Maria Lopez      | SuperMaria    |       1990 | Mexico         |  2850 |
| Kim Soon         | K-Soh         |       1989 | South Korea    |  2785 |
| Miku Satoshi     | Neko          |       1988 | Japan          |  2765 |
| Dennis Ritchie   | TheMenace     |       1990 | United Kingdom |  2755 |
| Kara Brooks      | K-Bro         |       1995 | United States  |  2675 |
| Junichi Oda      | Joda          |       1985 | Japan          |  2655 |
| Robin Banks      | bandit        |       1990 | United Kingdom |  2575 |
| Edith Rivera     | TheRiver      |       1989 | Brazil         |  2560 |
| Donald Glover    | gloveslap     |       1987 | United Kingdom |  2455 |
| Rodney Do        | rodorobo      |       1987 | United States  |  2455 |
| Shigeru Niko     | katananik     |       1993 | Japan          |  2365 |
| Mike Smith       | TheBlacksmith |       1992 | United Kingdom |  2320 |
| Bob Johnson      | BobTheSlob    |       1991 | United States  |  2235 |
| Max Michaels     | MandM         |       1993 | Unted States   |  2235 |
| Joe Carpenter    | WoodMan       |       1995 | United States  |  2230 |
| Carol Smith      | CSmithy       |       1990 | United States  |  2150 |
| Jamie Rogers     | JCat          |       1985 | United Kingdom |  2135 |
+------------------+---------------+------------+----------------+-------+


--------------------------------------------------------------------------------
-- Fix typo in country name ('Unted States')

mysql> UPDATE players 
SET country = 'United States' 
WHERE country = 'Unted States';

Query OK, 1 row affected (0.16 sec)
Rows matched: 1  Changed: 1  Warnings: 0

---------------------------------------------------------------------------------

-- Count players in each country

mysql> SELECT country, COUNT(real_name) 
FROM players 
GROUP BY country;
+----------------+------------------+
| country        | COUNT(real_name) |
+----------------+------------------+
| Mexico         |                5 |
| United States  |                7 |
| Japan          |                6 |
| South Korea    |                2 |
| United Kingdom |                5 |
| Brazil         |                3 |
| Ukraine        |                2 |
+----------------+------------------+


-----------------------------------------------------------------------------

-- Get highest scoring player of each country, highest scorer first

mysql> SELECT player_name, birth_year, country, score 
FROM players x 
WHERE score >= (SELECT MAX(score) FROM players WHERE country = x.country) 
ORDER BY score DESC;
+-------------+------------+----------------+-------+
| player_name | birth_year | country        | score |
+-------------+------------+----------------+-------+
| rook        |       1992 | Japan          |  3345 |
| Vika        |       1991 | Ukraine        |  3245 |
| OldMaster   |       1955 | United States  |  3210 |
| EmFu        |       1988 | Mexico         |  3145 |
| SuperNova   |       1991 | Brazil         |  3125 |
| JSinger     |       1980 | South Korea    |  3020 |
| TheMenace   |       1990 | United Kingdom |  2755 |
+-------------+------------+----------------+-------+


-------------------------------------------------------------------

-- Get oldest player in each country and sort by oldest first

mysql> SELECT player_name, birth_year, country, score 
FROM players x 
WHERE birth_year <= (SELECT MIN(birth_year) FROM players WHERE country = x.country) 
ORDER BY birth_year;
+-------------+------------+----------------+-------+
| player_name | birth_year | country        | score |
+-------------+------------+----------------+-------+
| OldMaster   |       1955 | United States  |  3210 |
| JSinger     |       1980 | South Korea    |  3020 |
| JHA         |       1983 | Mexico         |  2890 |
| TheHero     |       1984 | Japan          |  3250 |
| Sergeant    |       1984 | Ukraine        |  2895 |
| JCat        |       1985 | United Kingdom |  2135 |
| Dansa       |       1986 | Brazil         |  2870 |
+-------------+------------+----------------+-------+


-----------------------------------------------------------------------------

-- Get average score of each country sorted by highest average first

mysql> SELECT country, AVG(score) 
FROM players 
GROUP BY country 
ORDER BY AVG(score) DESC;
+----------------+------------+
| country        | AVG(score) |
+----------------+------------+
| Ukraine        |  3070.0000 |
| Mexico         |  2966.0000 |
| Japan          |  2921.6667 |
| South Korea    |  2902.5000 |
| Brazil         |  2851.6667 |
| United States  |  2455.7143 |
| United Kingdom |  2448.0000 |
+----------------+------------+


-------------------------------------------------------------------------------


*/