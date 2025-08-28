CREATE DATABASE library1;
USE library1;

CREATE TABLE Books (Book_Name varchar(256) not null, Author varchar(128) not null, Genre varchar(128) not null, Year_Published int not null, Book_ID int not null);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Martians On Uranus', 'Johnny Williams', 'Science Fiction', 1995, 1223);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Terraforming Uranus', 'Johnny Williams', 'Science Fiction', 1996, 1225);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Riding The Dragon', 'Michael Marklar', 'Self Help', 1999, 1345);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('1000 Origami Projects', 'Douglas Folder', 'Arts And Crafts', 1993, 2345);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('The Dragon Goblin', 'Joseph Ritwald', 'Fantasy', 1998, 1276);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Sea Of Clams', 'Joseph Ritwald', 'Fantasy', 2000, 1279);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('The Land Of The Rising Moon', 'Sophia Marklar', 'History', 1995, 2380);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('The Blossoming Of The Full Moon', 'Sophia Marklar', 'History', 1997, 2382);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Shrubs And Trees', 'Daniella Newroot', 'Gardening', 2001, 2398);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Astral Presence', 'Jonathan Richards', 'Science Fiction', 2002, 1229);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('The Long Blade Of The Warrior', 'Clara Voyant', 'Fantasy', 1998, 1335);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Dam Those Beavers', 'Mark Rowe', 'Biology', 1985, 1339);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Owning The Box', 'Dennis Harman', 'Ethical Hacking', 2008, 1337);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Safe Words', 'Kathy Richards', 'Romance', 2003, 1214);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Tales From The Relationship', 'Kathy Richards', 'Romance', 2007, 1217);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Venus Colliding', 'Johnny Williams', 'Science Fiction', 1999, 1379);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Running To The Bathroom', 'Willy Maykit', 'Fiction', 1976, 1432);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Toast Whisperer', 'Sally Douglas', 'Cooking', 2002, 1435);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Keeping The Log', 'Dennis Harman', 'Computers', 2005, 1465);
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('Tissues For Issues', 'Michael Marklar', 'Self Help', 2003, 1990);

/*
INSERT INTO Books(Book_Name, Author, Genre, Year_Published, Book_ID) VALUES ('', '', '', , );
*/

CREATE TABLE Checked_Out (First_Name varchar(128) not null, Last_Name varchar(128) not null, Birth_Year int not null, Book_ID int not null);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('Goerge', 'Michaels', 1990, 2345);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('Amanda', 'Card', 1989, 1223);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('Amanda', 'Card', 1989, 1225);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('Amelia', 'Heart', 1991, 1379);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('Jennifer', 'Watson', 1988, 1214);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('William', 'Moretz', 1990, 1217);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('Jakob', 'Michaels', 1986, 1435);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('Christopher', 'Fox', 1994, 1990);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('Christopher', 'Fox', 1994, 1345);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('Leonard', 'Mayes', 1992, 1337);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('David', 'Reacher', 1987, 1335);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('Sara', 'Mieter', 1982, 2380);
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('Robin', 'Jones', 1988, 2382);

/*
INSERT INTO Checked_Out(First_Name, Last_Name, Birth_Year, Book_ID) VALUES ('', '', , );
*/

/*

mysql> SELECT * FROM Books;
+---------------------------------+-------------------+-----------------+----------------+---------+
| Book_Name                       | Author            | Genre           | Year_Published | Book_ID |
+---------------------------------+-------------------+-----------------+----------------+---------+
| Martians On Uranus              | Johnny Williams   | Science Fiction |           1995 |    1223 |
| Terraforming Uranus             | Johnny Williams   | Science Fiction |           1996 |    1225 |
| Riding The Dragon               | Michael Marklar   | Self Help       |           1999 |    1345 |
| 1000 Origami Projects           | Douglas Folder    | Arts And Crafts |           1993 |    2345 |
| The Dragon Goblin               | Joseph Ritwald    | Fantasy         |           1998 |    1276 |
| Sea Of Clams                    | Joseph Ritwald    | Fantasy         |           2000 |    1279 |
| The Land Of The Rising Moon     | Sophia Marklar    | History         |           1995 |    2380 |
| The Blossoming Of The Full Moon | Sophia Marklar    | History         |           1997 |    2382 |
| Shrubs And Trees                | Daniella Newroot  | Gardening       |           2001 |    2398 |
| Astral Presence                 | Jonathan Richards | Science Fiction |           2002 |    1229 |
| The Long Blade Of The Warrior   | Clara Voyant      | Fantasy         |           1998 |    1335 |
| Dam Those Beavers               | Mark Rowe         | Biology         |           1985 |    1339 |
| Owning The Box                  | Dennis Harman     | Ethical Hacking |           2008 |    1337 |
| Safe Words                      | Kathy Richards    | Romance         |           2003 |    1214 |
| Tales From The Relationship     | Kathy Richards    | Romance         |           2007 |    1217 |
| Venus Colliding                 | Johnny Williams   | Science Fiction |           1999 |    1379 |
| Running To The Bathroom         | Willy Maykit      | Fiction         |           1976 |    1432 |
| Toast Whisperer                 | Sally Douglas     | Cooking         |           2002 |    1435 |
| Keeping The Log                 | Dennis Harman     | Computers       |           2005 |    1465 |
| Tissues For Issues              | Michael Marklar   | Self Help       |           2003 |    1990 |
+---------------------------------+-------------------+-----------------+----------------+---------+

mysql> SELECT * FROM Checked_Out;
+-------------+-----------+------------+---------+
| First_Name  | Last_Name | Birth_Year | Book_ID |
+-------------+-----------+------------+---------+
| Goerge      | Michaels  |       1990 |    2345 |
| Amanda      | Card      |       1989 |    1223 |
| Amanda      | Card      |       1989 |    1225 |
| Amelia      | Heart     |       1991 |    1379 |
| Jennifer    | Watson    |       1988 |    1214 |
| William     | Moretz    |       1990 |    1217 |
| Jakob       | Michaels  |       1986 |    1435 |
| Christopher | Fox       |       1994 |    1990 |
| Christopher | Fox       |       1994 |    1345 |
| Leonard     | Mayes     |       1992 |    1337 |
| David       | Reacher   |       1987 |    1335 |
| Sara        | Mieter    |       1982 |    2380 |
| Robin       | Jones     |       1988 |    2382 |
+-------------+-----------+------------+---------+

------------------------------------------------------------------

-- Output first name, last name and birth year for each library user that has checked out a book (With duplicates for different books)

mysql> SELECT First_Name, Last_Name, Birth_Year 
FROM Checked_Out 
INNER JOIN Books ON Books.Book_ID = Checked_Out.Book_ID 
ORDER BY Birth_Year;
+-------------+-----------+------------+
| First_Name  | Last_Name | Birth_Year |
+-------------+-----------+------------+
| Sara        | Mieter    |       1982 |
| Jakob       | Michaels  |       1986 |
| David       | Reacher   |       1987 |
| Robin       | Jones     |       1988 |
| Jennifer    | Watson    |       1988 |
| Amanda      | Card      |       1989 |
| Amanda      | Card      |       1989 |
| Goerge      | Michaels  |       1990 |
| William     | Moretz    |       1990 |
| Amelia      | Heart     |       1991 |
| Leonard     | Mayes     |       1992 |
| Christopher | Fox       |       1994 |
| Christopher | Fox       |       1994 |
+-------------+-----------+------------+

-------------------------------------------------------------------

-- Output all the books that are checked out

mysql> SELECT Book_Name, Author 
FROM Books 
INNER JOIN Checked_Out ON Checked_Out.Book_ID = Books.Book_ID; 
+---------------------------------+-----------------+
| Book_Name                       | Author          |
+---------------------------------+-----------------+
| Martians On Uranus              | Johnny Williams |
| Terraforming Uranus             | Johnny Williams |
| Riding The Dragon               | Michael Marklar |
| 1000 Origami Projects           | Douglas Folder  |
| The Land Of The Rising Moon     | Sophia Marklar  |
| The Blossoming Of The Full Moon | Sophia Marklar  |
| The Long Blade Of The Warrior   | Clara Voyant    |
| Owning The Box                  | Dennis Harman   |
| Safe Words                      | Kathy Richards  |
| Tales From The Relationship     | Kathy Richards  |
| Venus Colliding                 | Johnny Williams |
| Toast Whisperer                 | Sally Douglas   |
| Tissues For Issues              | Michael Marklar |
+---------------------------------+-----------------+

---------------------------------------------------------------------

-- Output all the books that are checked out in the Science fiction genre

mysql> SELECT Book_Name, Author 
FROM Books 
INNER JOIN Checked_Out ON Checked_Out.Book_ID = Books.Book_ID
WHERE Genre = 'Science Fiction';
+---------------------+-----------------+
| Book_Name           | Author          |
+---------------------+-----------------+
| Martians On Uranus  | Johnny Williams |
| Terraforming Uranus | Johnny Williams |
| Venus Colliding     | Johnny Williams |
+---------------------+-----------------+

------------------------------------------------------------------

-- Output everyone who has a book checked out (without duplicates)

mysql> SELECT DISTINCT First_Name, Last_Name, Birth_Year 
FROM Checked_Out 
INNER JOIN Books ON Books.Book_ID = Checked_Out.Book_ID 
ORDER BY Birth_Year;
+-------------+-----------+------------+
| First_Name  | Last_Name | Birth_Year |
+-------------+-----------+------------+
| Sara        | Mieter    |       1982 |
| Jakob       | Michaels  |       1986 |
| David       | Reacher   |       1987 |
| Robin       | Jones     |       1988 |
| Jennifer    | Watson    |       1988 |
| Amanda      | Card      |       1989 |
| Goerge      | Michaels  |       1990 |
| William     | Moretz    |       1990 |
| Amelia      | Heart     |       1991 |
| Leonard     | Mayes     |       1992 |
| Christopher | Fox       |       1994 |
+-------------+-----------+------------+

---------------------------------------------------------------------------

-- Output all the people who have checked out books with the genres Science Fiction, Fantasy, or Fiction sorted by birth year (Oldest first) (No duplicates)

mysql> SELECT DISTINCT First_Name, Last_Name, Birth_Year 
FROM Checked_Out 
INNER JOIN Books ON Books.Book_ID = Checked_Out.Book_ID AND (Books.Genre = 'Science Fiction' OR Books.Genre = 'Fantasy' OR Books.Genre = 'Fiction') 
ORDER BY Birth_Year;
+------------+-----------+------------+
| First_Name | Last_Name | Birth_Year |
+------------+-----------+------------+
| David      | Reacher   |       1987 |
| Amanda     | Card      |       1989 |
| Amelia     | Heart     |       1991 |
+------------+-----------+------------+
3 rows in set (0.00 sec)

-- Output all the people who have checked out books with the genres Science Fiction, Fantasy, or Fiction sorted by birth year (Oldest first) (Duplicates allowed for multiple books)

mysql> SELECT First_Name, Last_Name, Birth_Year 
FROM Checked_Out 
INNER JOIN Books ON Books.Book_ID = Checked_Out.Book_ID AND (Books.Genre = 'Science Fiction' OR Books.Genre = 'Fantasy' OR Books.Genre = 'Fiction') 
ORDER BY Birth_Year;
+------------+-----------+------------+
| First_Name | Last_Name | Birth_Year |
+------------+-----------+------------+
| David      | Reacher   |       1987 |
| Amanda     | Card      |       1989 |
| Amanda     | Card      |       1989 |
| Amelia     | Heart     |       1991 |
+------------+-----------+------------+

-------------------------------------------------------------------------------

-- Output a join of all the info on people who checked out books and all the details of the books they checked out (With duplicate first and last names allowed) 

mysql> SELECT First_Name, Last_Name, Birth_Year, Book_Name, Author, Genre, Year_Published 
FROM Checked_Out 
RIGHT JOIN Books ON Books.Book_ID = Checked_Out.Book_ID 
WHERE Checked_Out.Book_ID IS NOT NULL;

+-------------+-----------+------------+---------------------------------+-----------------+-----------------+----------------+
| First_Name  | Last_Name | Birth_Year | Book_Name                       | Author          | Genre           | Year_Published |
+-------------+-----------+------------+---------------------------------+-----------------+-----------------+----------------+
| Amanda      | Card      |       1989 | Martians On Uranus              | Johnny Williams | Science Fiction |           1995 |
| Amanda      | Card      |       1989 | Terraforming Uranus             | Johnny Williams | Science Fiction |           1996 |
| Christopher | Fox       |       1994 | Riding The Dragon               | Michael Marklar | Self Help       |           1999 |
| Goerge      | Michaels  |       1990 | 1000 Origami Projects           | Douglas Folder  | Arts And Crafts |           1993 |
| Sara        | Mieter    |       1982 | The Land Of The Rising Moon     | Sophia Marklar  | History         |           1995 |
| Robin       | Jones     |       1988 | The Blossoming Of The Full Moon | Sophia Marklar  | History         |           1997 |
| David       | Reacher   |       1987 | The Long Blade Of The Warrior   | Clara Voyant    | Fantasy         |           1998 |
| Leonard     | Mayes     |       1992 | Owning The Box                  | Dennis Harman   | Ethical Hacking |           2008 |
| Jennifer    | Watson    |       1988 | Safe Words                      | Kathy Richards  | Romance         |           2003 |
| William     | Moretz    |       1990 | Tales From The Relationship     | Kathy Richards  | Romance         |           2007 |
| Amelia      | Heart     |       1991 | Venus Colliding                 | Johnny Williams | Science Fiction |           1999 |
| Jakob       | Michaels  |       1986 | Toast Whisperer                 | Sally Douglas   | Cooking         |           2002 |
| Christopher | Fox       |       1994 | Tissues For Issues              | Michael Marklar | Self Help       |           2003 |
+-------------+-----------+------------+---------------------------------+-----------------+-----------------+----------------+

----------------------------------------------------------------------------------------

-- Output a join of all the info on people who checked out books and all the details of the books they checked out (With duplicate first and last names allowed) 
-- (Ordered by oldest person first)

mysql> SELECT First_Name, Last_Name, Birth_Year, Book_Name, Author, Genre, Year_Published 
FROM Checked_Out 
RIGHT JOIN Books ON Books.Book_ID = Checked_Out.Book_ID 
WHERE Checked_Out.Book_ID IS NOT NULL 
ORDER BY Birth_Year;
+-------------+-----------+------------+---------------------------------+-----------------+-----------------+----------------+
| First_Name  | Last_Name | Birth_Year | Book_Name                       | Author          | Genre           | Year_Published |
+-------------+-----------+------------+---------------------------------+-----------------+-----------------+----------------+
| Sara        | Mieter    |       1982 | The Land Of The Rising Moon     | Sophia Marklar  | History         |           1995 |
| Jakob       | Michaels  |       1986 | Toast Whisperer                 | Sally Douglas   | Cooking         |           2002 |
| David       | Reacher   |       1987 | The Long Blade Of The Warrior   | Clara Voyant    | Fantasy         |           1998 |
| Robin       | Jones     |       1988 | The Blossoming Of The Full Moon | Sophia Marklar  | History         |           1997 |
| Jennifer    | Watson    |       1988 | Safe Words                      | Kathy Richards  | Romance         |           2003 |
| Amanda      | Card      |       1989 | Martians On Uranus              | Johnny Williams | Science Fiction |           1995 |
| Amanda      | Card      |       1989 | Terraforming Uranus             | Johnny Williams | Science Fiction |           1996 |
| Goerge      | Michaels  |       1990 | 1000 Origami Projects           | Douglas Folder  | Arts And Crafts |           1993 |
| William     | Moretz    |       1990 | Tales From The Relationship     | Kathy Richards  | Romance         |           2007 |
| Amelia      | Heart     |       1991 | Venus Colliding                 | Johnny Williams | Science Fiction |           1999 |
| Leonard     | Mayes     |       1992 | Owning The Box                  | Dennis Harman   | Ethical Hacking |           2008 |
| Christopher | Fox       |       1994 | Riding The Dragon               | Michael Marklar | Self Help       |           1999 |
| Christopher | Fox       |       1994 | Tissues For Issues              | Michael Marklar | Self Help       |           2003 |
+-------------+-----------+------------+---------------------------------+-----------------+-----------------+----------------+

--------------------------------------------------------------------------------

-- Output a join of all the info on people who checked out books and all the details of the books they checked out (With duplicate first and last names allowed) 
-- if the book checked out was published after 1995 and sort by the year published (Oldest publication first)

mysql> SELECT First_Name, Last_Name, Birth_Year, Book_Name, Author, Genre, Year_Published 
FROM Checked_Out 
RIGHT JOIN Books ON Books.Book_ID = Checked_Out.Book_ID 
WHERE Checked_Out.Book_ID IS NOT NULL AND Year_Published > 1995 
ORDER BY Year_Published;
+-------------+-----------+------------+---------------------------------+-----------------+-----------------+----------------+
| First_Name  | Last_Name | Birth_Year | Book_Name                       | Author          | Genre           | Year_Published |
+-------------+-----------+------------+---------------------------------+-----------------+-----------------+----------------+
| Amanda      | Card      |       1989 | Terraforming Uranus             | Johnny Williams | Science Fiction |           1996 |
| Robin       | Jones     |       1988 | The Blossoming Of The Full Moon | Sophia Marklar  | History         |           1997 |
| David       | Reacher   |       1987 | The Long Blade Of The Warrior   | Clara Voyant    | Fantasy         |           1998 |
| Amelia      | Heart     |       1991 | Venus Colliding                 | Johnny Williams | Science Fiction |           1999 |
| Christopher | Fox       |       1994 | Riding The Dragon               | Michael Marklar | Self Help       |           1999 |
| Jakob       | Michaels  |       1986 | Toast Whisperer                 | Sally Douglas   | Cooking         |           2002 |
| Jennifer    | Watson    |       1988 | Safe Words                      | Kathy Richards  | Romance         |           2003 |
| Christopher | Fox       |       1994 | Tissues For Issues              | Michael Marklar | Self Help       |           2003 |
| William     | Moretz    |       1990 | Tales From The Relationship     | Kathy Richards  | Romance         |           2007 |
| Leonard     | Mayes     |       1992 | Owning The Box                  | Dennis Harman   | Ethical Hacking |           2008 |
+-------------+-----------+------------+---------------------------------+-----------------+-----------------+----------------+

------------------------------------------------------------------------------

-- Books not checked out by anyone:

mysql> SELECT t1.* FROM Books AS t1 
LEFT JOIN Checked_Out AS t2 ON t1.Book_ID = t2.Book_ID 
WHERE t2.Book_ID IS NULL;
+-------------------------+-------------------+-----------------+----------------+---------+
| Book_Name               | Author            | Genre           | Year_Published | Book_ID |
+-------------------------+-------------------+-----------------+----------------+---------+
| The Dragon Goblin       | Joseph Ritwald    | Fantasy         |           1998 |    1276 |
| Sea Of Clams            | Joseph Ritwald    | Fantasy         |           2000 |    1279 |
| Shrubs And Trees        | Daniella Newroot  | Gardening       |           2001 |    2398 |
| Astral Presence         | Jonathan Richards | Science Fiction |           2002 |    1229 |
| Dam Those Beavers       | Mark Rowe         | Biology         |           1985 |    1339 |
| Running To The Bathroom | Willy Maykit      | Fiction         |           1976 |    1432 |
| Keeping The Log         | Dennis Harman     | Computers       |           2005 |    1465 |
+-------------------------+-------------------+-----------------+----------------+---------+

*/