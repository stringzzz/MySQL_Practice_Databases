CREATE DATABASE library1;
USE library1;

CREATE TABLE Books (
	Book_Name varchar(256) not null, 
	Author varchar(128) not null, 
	Genre varchar(128) not null, 
	Year_Published int not null, 
	Book_ID int not null
);

INSERT INTO Books (Book_Name, Author, Genre, Year_Published, Book_ID) VALUES 
	('Martians On Uranus', 'Johnny Williams', 'Science Fiction', 1995, 1223),
	('Terraforming Uranus', 'Johnny Williams', 'Science Fiction', 1996, 1225),
	('Riding The Dragon', 'Michael Marklar', 'Self Help', 1999, 1345),
	('1000 Origami Projects', 'Douglas Folder', 'Arts And Crafts', 1993, 2345),
	('The Dragon Goblin', 'Joseph Ritwald', 'Fantasy', 1998, 1276),
	('Sea Of Clams', 'Joseph Ritwald', 'Fantasy', 2000, 1279),
	('The Land Of The Rising Moon', 'Sophia Marklar', 'History', 1995, 2380),
	('The Blossoming Of The Full Moon', 'Sophia Marklar', 'History', 1997, 2382),
	('Shrubs And Trees', 'Daniella Newroot', 'Gardening', 2001, 2398),
	('Astral Presence', 'Jonathan Richards', 'Science Fiction', 2002, 1229),
	('The Long Blade Of The Warrior', 'Clara Voyant', 'Fantasy', 1998, 1335),
	('Dam Those Beavers', 'Mark Rowe', 'Biology', 1985, 1339),
	('Owning The Box', 'Dennis Harman', 'Ethical Hacking', 2008, 1337),
	('Safe Words', 'Kathy Richards', 'Romance', 2003, 1214),
	('Tales From The Relationship', 'Kathy Richards', 'Romance', 2007, 1217),
	('Venus Colliding', 'Johnny Williams', 'Science Fiction', 1999, 1379),
	('Running To The Bathroom', 'Willy Maykit', 'Fiction', 1976, 1432),
	('Toast Whisperer', 'Sally Douglas', 'Cooking', 2002, 1435),
	('Keeping The Log', 'Dennis Harman', 'Computers', 2005, 1465),
	('Tissues For Issues', 'Michael Marklar', 'Self Help', 2003, 1990);

CREATE TABLE Checked_Out (
	First_Name varchar(128) not null, 
	Last_Name varchar(128) not null, 
	Birth_Year int not null, 
	Book_ID int not null
);

INSERT INTO Checked_Out (First_Name, Last_Name, Birth_Year, Book_ID) VALUES 
	('Goerge', 'Michaels', 1990, 2345),
	('Amanda', 'Card', 1989, 1223),
	('Amanda', 'Card', 1989, 1225),
	('Amelia', 'Heart', 1991, 1379),
	('Jennifer', 'Watson', 1988, 1214),
	('William', 'Moretz', 1990, 1217),
	('Jakob', 'Michaels', 1986, 1435),
	('Christopher', 'Fox', 1994, 1990),
	('Christopher', 'Fox', 1994, 1345),
	('Leonard', 'Mayes', 1992, 1337),
	('David', 'Reacher', 1987, 1335),
	('Sara', 'Mieter', 1982, 2380),
	('Robin', 'Jones', 1988, 2382);

