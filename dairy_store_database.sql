/*
--stringzzz, Ghostwarez Co. 09-02-2025
*/

CREATE DATABASE dairy_store_database;
USE dairy_store_database;

CREATE TABLE prices (
	item_id varchar(6) not null primary key CHECK (LENGTH(item_id) = 6),
	item_name varchar(128) not null, 
	price float
);

INSERT INTO prices (item_id, item_name, price) VALUES 
	('122678', 'vanilla yogurt', 4.35),
	('122679', 'peach yogurt', 4.45),
	('122685', 'blueberry yogurt', 4.45),
	('122686', 'milk', 7.86),
	('122687', 'salted butter', 6.74),
	('122689', 'unsalted butter', 6.50),
	('122693', 'provolone cheese', 5.78),
	('122697', 'cheddar cheese', 5.90),
	('122699', 'mozarella cheese', 6.10),
	('122710', 'pepperjack cheese', 6.12),
	('123456', 'chocolate ice cream', 8.90),
	('123457', 'vanilla ice cream', 8.80),
	('123468', 'mint chocolate chip ice cream', 8.95),
	('123472', 'neopolitan ice cream', 8.95),
	('123480', 'rainbow sherbert ice cream', 8.95),
	('123484', 'sour cream', 5.63),
	('123485', 'cream cheese', 6.20),
	('124565', 'cottage cheese', 6.05);

CREATE TABLE stores (
	store_id varchar(4) not null primary key CHECK (LENGTH(store_id) = 4), 
	address_line varchar(128) not null, 
	city varchar(64) not null, 
	us_state varchar(64) not null, 
	zip varchar(5) not null CHECK (LENGTH(zip) = 5)
);

INSERT INTO stores (store_id, address_line, city, us_state, zip) VALUES 
	('1217', '8125 North Circle', 'Toad Town', 'California', '12586'),
	('1218', '376 Green Lake Road', 'Lake Leaf', 'California', '12795'),
	('1258', '1422 Electric Avenue', 'Cascade', 'Arizona', '58602'),
	('1259', '65135 Dodger Lane', 'Funky Town', 'Arizona', '59533'),
	('1325', '416 Oak Drive', 'West Park', 'Nevada', '30126');

CREATE TABLE employees (
	emp_id varchar(5) not null primary key CHECK (LENGTH(emp_id) = 5), 
	store_id varchar(4) not null CHECK (LENGTH(store_id) = 4), 
	foreign key (store_id) references stores(store_id), 
	position varchar(64) not null, 
	first_name varchar(64) not null, 
	last_name varchar(64) not null, 
	birth_year int not null, 
	wage float not null
);

INSERT INTO employees (emp_id, store_id, position, first_name, last_name, birth_year, wage) VALUES 
	('30001', '1217', 'Manager', 'Mario', 'Luigi', 1970, 55.00),
	('30002', '1218', 'Manager', 'John', 'Smith', 1975, 55.00),
	('30003', '1258', 'Manager', 'Leopold', 'Stotch', 1960, 56.50),
	('30004', '1259', 'Manager', 'Stan', 'Marsh', 1978, 56.25),
	('30005', '1325', 'Manager', 'Eric', 'Cartman', 1976, 56.00),
	('30006', '1217', 'Custodian', 'Scruffy', 'Farnsworth', 1995, 17.00),
	('30007', '1218', 'Custodian', 'Michael', 'Mosley', 1990, 17.75),
	('30008', '1258', 'Custodian', 'Janice', 'Wild', 1985, 17.00),
	('30009', '1259', 'Custodian', 'Richard', 'Hedburg', 1987, 16.75),
	('30010', '1325', 'Custodian', 'Jonathan', 'Smith', 1992, 17.10),
	('30011', '1217', 'Stocker', 'Kerry', 'Potter', 1993, 17.25),
	('30012', '1218', 'Stocker', 'Sheila', 'Brown', 1994, 16.50),
	('30013', '1258', 'Stocker', 'Joseph', 'Smith', 1991, 16.75),
	('30014', '1259', 'Stocker', 'Michael', 'Carpenter', 1990, 17.00),
	('30015', '1325', 'Stocker', 'Juan', 'Lopez', 1989, 17.20),
	('30016', '1217', 'Shipping & Receiving', 'Maria', 'Perez', 1990, 19.30),
	('30017', '1218', 'Shipping & Receiving', 'Mike', 'Shields', 1982, 19.30),
	('30018', '1258', 'Shipping & Receiving', 'Dat', 'Phan', 1983, 19.35),
	('30019', '1259', 'Shipping & Receiving', 'Penelope', 'Marley', 1987, 20.00),
	('30020', '1325', 'Shipping & Receiving', 'Leonard', 'Newton', 1988, 20.50),
	('30021', '1217', 'Shipping & Receiving', 'Isaac', 'Fuentes', 1994, 19.00),
	('30022', '1218', 'Shipping & Receiving', 'Harry', 'Armstrong', 1996, 19.25),
	('30023', '1258', 'Shipping & Receiving', 'Colby', 'Lewis', 1993, 19.30),
	('30024', '1259', 'Shipping & Receiving', 'Jeffery', 'Jefferson', 1981, 20.25),
	('30025', '1325', 'Shipping & Receiving', 'Rachel', 'Mathews', 1988, 19.50),
	('30026', '1217', 'Cashier', 'Juan', 'Donalds', 1990, 18.50),
	('30027', '1218', 'Cashier', 'Markus', 'Black', 1991, 18.75),
	('30028', '1258', 'Cashier', 'Jose', 'Lopez', 1994, 18.70),
	('30029', '1259', 'Cashier', 'John', 'White', 1987, 18.90),
	('30030', '1325', 'Cashier', 'Veronica', 'Smith', 1989, 18.50),
	('30031', '1217', 'Cashier', 'Alice', 'Armstrong', 1993, 18.75),
	('30032', '1218', 'Cashier', 'Lewis', 'Nabokov', 1985, 18.70),
	('30033', '1258', 'Cashier', 'Joseph', 'West', 1986, 19.10),
	('30034', '1259', 'Cashier', 'Victoria', 'Johnson', 1972, 22.50),
	('30035', '1325', 'Cashier', 'Ella', 'Carrols', 1978, 19.20),
	('30036', '1217', 'Cashier', 'Ava', 'Liddel', 1995, 19.30),
	('30037', '1218', 'Cashier', 'Zachary', 'Moretz', 1989, 20.95),
	('30038', '1258', 'Cashier', 'Gregory', 'Kuniz', 1990, 20.00),
	('30039', '1259', 'Cashier', 'Selina', 'Sutherland', 1991, 19.25),
	('30040', '1325', 'Cashier', 'Tiffany', 'Carpenter', 1993, 19.75);

CREATE TABLE former_employees (
	emp_id varchar(5) not null primary key CHECK (LENGTH(emp_id) = 5), 
	store_id varchar(4) not null CHECK (LENGTH(store_id) = 4), 
	foreign key (store_id) references stores(store_id), 
	position varchar(64) not null, 
	first_name varchar(64) not null, 
	last_name varchar(64) not null, 
	birth_year int not null, 
	wage float not null
);

INSERT INTO former_employees (emp_id, store_id, position, first_name, last_name, birth_year, wage) VALUES 
	('30120', '1217', 'Cashier', 'Mario', 'Luigi', 1982, 20.00),
	('30121', '1258', 'Cashier', 'Joseph', 'Navarro', 1978, 22.00),
	('30122', '1258', 'Shipping & Receiving', 'Michael', 'Mosley', 1963, 21.50),
	('30123', '1259', 'Custodian', 'Marcus', 'Jackson', 1987, 17.25),
	('30124', '1325', 'Manager', 'Jarod', 'Marklar', 1957, 48.00),
	('30125', '1217', 'Cashier', 'Richard', 'McDonald', 1982, 19.00),
	('30126', '1218', 'Custodian', 'Ava', 'Liddel', 1969, 15.25),
	('30127', '1258', 'Shipping & Receiving', 'Gregory', 'Kuniz', 1988, 20.00),
	('30128', '1259', 'Shipping & Receiving', 'Richard', 'Johnson', 1984, 19.75),
	('30129', '1325', 'Manager', 'Jonathan', 'Smith', 1959, 49.10),
	('30130', '1217', 'Stocker', 'Alice', 'Carrol', 1986, 16.05);

CREATE TABLE inventory (
	inventory_id varchar(5) not null primary key CHECK (LENGTH(inventory_id) = 5), 
	store_id varchar(4) not null CHECK (LENGTH(store_id) = 4),  
	foreign key (store_id) references stores(store_id), 
	item_id varchar(6) not null CHECK (LENGTH(item_id) = 6), 
	foreign key (item_id) references prices(item_id), 
	quantity int not null
 );

INSERT INTO inventory (inventory_id, store_id, item_id, quantity) VALUES 
	('10000', '1217', '122678', 0),
	('10001', '1218', '122678', 12),
	('10002', '1258', '122678', 14),
	('10003', '1259', '122678', 0),
	('10004', '1325', '122678', 12),
	('10005', '1217', '122679', 20),
	('10006', '1218', '122679', 22),
	('10007', '1258', '122679', 21),
	('10008', '1259', '122679', 0),
	('10009', '1325', '122679', 20),
	('10010', '1217', '122685', 16),
	('10011', '1218', '122685', 0),
	('10012', '1258', '122685', 5),
	('10013', '1259', '122685', 9),
	('10014', '1325', '122685', 11),
	('10015', '1217', '122686', 0),
	('10016', '1218', '122686', 16),
	('10017', '1258', '122686', 22),
	('10018', '1259', '122686', 25),
	('10019', '1325', '122686', 0),
	('10020', '1217', '122687', 18),
	('10021', '1218', '122687', 15),
	('10022', '1258', '122687', 0),
	('10023', '1259', '122687', 11),
	('10024', '1325', '122687', 9),
	('10025', '1217', '122689', 14),
	('10026', '1218', '122689', 17),
	('10027', '1258', '122689', 22),
	('10028', '1259', '122689', 25),
	('10029', '1325', '122689', 12),
	('10030', '1217', '122693', 6),
	('10031', '1218', '122693', 22),
	('10032', '1258', '122693', 20),
	('10033', '1259', '122693', 0),
	('10034', '1325', '122693', 16),
	('10035', '1217', '122697', 4),
	('10036', '1218', '122697', 9),
	('10037', '1258', '122697', 11),
	('10038', '1259', '122697', 0),
	('10039', '1325', '122697', 0),
	('10040', '1217', '122699', 23),
	('10041', '1218', '122699', 12),
	('10042', '1258', '122699', 3),
	('10043', '1259', '122699', 18),
	('10044', '1325', '122699', 17),
	('10045', '1217', '122710', 18),
	('10046', '1218', '122710', 18),
	('10047', '1258', '122710', 5),
	('10048', '1259', '122710', 16),
	('10049', '1325', '122710', 23),
	('10050', '1217', '123456', 12),
	('10051', '1218', '123456', 24),
	('10052', '1258', '123456', 5),
	('10053', '1259', '123456', 3),
	('10054', '1325', '123456', 4),
	('10055', '1217', '123457', 3),
	('10056', '1218', '123457', 3),
	('10057', '1258', '123457', 17),
	('10058', '1259', '123457', 24),
	('10059', '1325', '123457', 23),
	('10060', '1217', '123468', 21),
	('10061', '1218', '123468', 18),
	('10062', '1258', '123468', 0),
	('10063', '1259', '123468', 27),
	('10064', '1325', '123468', 0),
	('10065', '1217', '123472', 22),
	('10066', '1218', '123472', 21),
	('10067', '1258', '123472', 21),
	('10068', '1259', '123472', 0),
	('10069', '1325', '123472', 15),
	('10070', '1217', '123480', 8),
	('10071', '1218', '123480', 14),
	('10072', '1258', '123480', 15),
	('10073', '1259', '123480', 0),
	('10074', '1325', '123480', 0),
	('10075', '1217', '123484', 5),
	('10076', '1218', '123484', 23),
	('10077', '1258', '123484', 9),
	('10078', '1259', '123484', 11),
	('10079', '1325', '123484', 0),
	('10080', '1217', '123485', 7),
	('10081', '1218', '123485', 0),
	('10082', '1258', '123485', 18),
	('10083', '1259', '123485', 23),
	('10084', '1325', '123485', 25),
	('10085', '1217', '124565', 3),
	('10086', '1218', '124565', 12),
	('10087', '1258', '124565', 7),
	('10088', '1259', '124565', 18),
	('10089', '1325', '124565', 0);

/*

mysql> show tables;
+--------------------------------+
| Tables_in_dairy_store_database |
+--------------------------------+
| employees                      |
| inventory                      |
| prices                         |
| stores                         |
+--------------------------------+

4 rows in set (0.00 sec)

mysql> describe stores;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| store_id     | varchar(4)   | NO   | PRI | NULL    |       |
| address_line | varchar(128) | NO   |     | NULL    |       |
| city         | varchar(64)  | NO   |     | NULL    |       |
| us_state     | varchar(64)  | NO   |     | NULL    |       |
| zip          | varchar(5)   | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> describe employees;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | varchar(5)  | NO   | PRI | NULL    |       |
| store_id   | varchar(4)  | NO   | MUL | NULL    |       |
| position   | varchar(64) | NO   |     | NULL    |       |
| first_name | varchar(64) | NO   |     | NULL    |       |
| last_name  | varchar(64) | NO   |     | NULL    |       |
| birth_year | int         | NO   |     | NULL    |       |
| wage       | float       | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> describe inventory;
+--------------+------------+------+-----+---------+-------+
| Field        | Type       | Null | Key | Default | Extra |
+--------------+------------+------+-----+---------+-------+
| inventory_id | varchar(5) | NO   | PRI | NULL    |       |
| store_id     | varchar(4) | NO   | MUL | NULL    |       |
| item_id      | varchar(6) | NO   | MUL | NULL    |       |
| quantity     | int        | NO   |     | NULL    |       |
+--------------+------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> describe prices;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| item_id   | varchar(6)   | NO   | PRI | NULL    |       |
| item_name | varchar(128) | NO   |     | NULL    |       |
| price     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+


---------------------------------------------------------------

mysql> SELECT address_line, city, us_state, zip, item_name, CONCAT('$', CAST(price AS DECIMAL(10, 2))) AS price, quantity 
FROM stores AS s 
JOIN inventory AS i ON i.store_id = s.store_id 
JOIN prices AS p ON i.item_id = p.item_id;
+----------------------+------------+------------+-------+-------------------------------+-------+----------+
| address_line         | city       | us_state   | zip   | item_name                     | price | quantity |
+----------------------+------------+------------+-------+-------------------------------+-------+----------+
| 8125 North Circle    | Toad Town  | California | 12586 | vanilla yogurt                | $4.35 |        0 |
| 8125 North Circle    | Toad Town  | California | 12586 | peach yogurt                  | $4.45 |       20 |
| 8125 North Circle    | Toad Town  | California | 12586 | blueberry yogurt              | $4.45 |       16 |
| 8125 North Circle    | Toad Town  | California | 12586 | milk                          | $7.86 |        0 |
| 8125 North Circle    | Toad Town  | California | 12586 | salted butter                 | $6.74 |       18 |
| 8125 North Circle    | Toad Town  | California | 12586 | unsalted butter               | $6.50 |       14 |
| 8125 North Circle    | Toad Town  | California | 12586 | provolone cheese              | $5.78 |        6 |
| 8125 North Circle    | Toad Town  | California | 12586 | cheddar cheese                | $5.90 |        4 |
| 8125 North Circle    | Toad Town  | California | 12586 | mozarella cheese              | $6.10 |       23 |
| 8125 North Circle    | Toad Town  | California | 12586 | pepperjack cheese             | $6.12 |       18 |
| 8125 North Circle    | Toad Town  | California | 12586 | chocolate ice cream           | $8.90 |       12 |
| 8125 North Circle    | Toad Town  | California | 12586 | vanilla ice cream             | $8.80 |        3 |
| 8125 North Circle    | Toad Town  | California | 12586 | mint chocolate chip ice cream | $8.95 |       21 |
| 8125 North Circle    | Toad Town  | California | 12586 | neopolitan ice cream          | $8.95 |       22 |
| 8125 North Circle    | Toad Town  | California | 12586 | rainbow sherbert ice cream    | $8.95 |        8 |
| 8125 North Circle    | Toad Town  | California | 12586 | sour cream                    | $5.63 |        5 |
| 8125 North Circle    | Toad Town  | California | 12586 | cream cheese                  | $6.20 |        7 |
| 8125 North Circle    | Toad Town  | California | 12586 | cottage cheese                | $6.05 |        3 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | vanilla yogurt                | $4.35 |       12 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | peach yogurt                  | $4.45 |       22 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | blueberry yogurt              | $4.45 |        0 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | milk                          | $7.86 |       16 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | salted butter                 | $6.74 |       15 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | unsalted butter               | $6.50 |       17 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | provolone cheese              | $5.78 |       22 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | cheddar cheese                | $5.90 |        9 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | mozarella cheese              | $6.10 |       12 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | pepperjack cheese             | $6.12 |       18 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | chocolate ice cream           | $8.90 |       24 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | vanilla ice cream             | $8.80 |        3 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | mint chocolate chip ice cream | $8.95 |       18 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | neopolitan ice cream          | $8.95 |       21 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | rainbow sherbert ice cream    | $8.95 |       14 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | sour cream                    | $5.63 |       23 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | cream cheese                  | $6.20 |        0 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | cottage cheese                | $6.05 |       12 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | vanilla yogurt                | $4.35 |       14 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | peach yogurt                  | $4.45 |       21 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | blueberry yogurt              | $4.45 |        5 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | milk                          | $7.86 |       22 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | salted butter                 | $6.74 |        0 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | unsalted butter               | $6.50 |       22 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | provolone cheese              | $5.78 |       20 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | cheddar cheese                | $5.90 |       11 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | mozarella cheese              | $6.10 |        3 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | pepperjack cheese             | $6.12 |        5 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | chocolate ice cream           | $8.90 |        5 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | vanilla ice cream             | $8.80 |       17 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | mint chocolate chip ice cream | $8.95 |        0 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | neopolitan ice cream          | $8.95 |       21 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | rainbow sherbert ice cream    | $8.95 |       15 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | sour cream                    | $5.63 |        9 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | cream cheese                  | $6.20 |       18 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | cottage cheese                | $6.05 |        7 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | vanilla yogurt                | $4.35 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | peach yogurt                  | $4.45 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | blueberry yogurt              | $4.45 |        9 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | milk                          | $7.86 |       25 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | salted butter                 | $6.74 |       11 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | unsalted butter               | $6.50 |       25 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | provolone cheese              | $5.78 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | cheddar cheese                | $5.90 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | mozarella cheese              | $6.10 |       18 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | pepperjack cheese             | $6.12 |       16 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | chocolate ice cream           | $8.90 |        3 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | vanilla ice cream             | $8.80 |       24 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | mint chocolate chip ice cream | $8.95 |       27 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | neopolitan ice cream          | $8.95 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | rainbow sherbert ice cream    | $8.95 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | sour cream                    | $5.63 |       11 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | cream cheese                  | $6.20 |       23 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | cottage cheese                | $6.05 |       18 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | vanilla yogurt                | $4.35 |       12 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | peach yogurt                  | $4.45 |       20 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | blueberry yogurt              | $4.45 |       11 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | milk                          | $7.86 |        0 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | salted butter                 | $6.74 |        9 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | unsalted butter               | $6.50 |       12 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | provolone cheese              | $5.78 |       16 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | cheddar cheese                | $5.90 |        0 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | mozarella cheese              | $6.10 |       17 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | pepperjack cheese             | $6.12 |       23 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | chocolate ice cream           | $8.90 |        4 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | vanilla ice cream             | $8.80 |       23 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | mint chocolate chip ice cream | $8.95 |        0 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | neopolitan ice cream          | $8.95 |       15 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | rainbow sherbert ice cream    | $8.95 |        0 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | sour cream                    | $5.63 |        0 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | cream cheese                  | $6.20 |       25 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | cottage cheese                | $6.05 |        0 |
+----------------------+------------+------------+-------+-------------------------------+-------+----------+


-----------------------------------------------------------------------------------------------------------------------------

mysql> SELECT address_line, city, us_state, zip, item_name, CONCAT('$', CAST(price AS DECIMAL(10, 2))) AS display_price, quantity 
FROM stores AS s 
JOIN inventory AS i ON i.store_id = s.store_id 
JOIN prices AS p ON i.item_id = p.item_id WHERE ROUND(price, 2) = 8.80;

+----------------------+------------+------------+-------+-------------------+---------------+----------+
| address_line         | city       | us_state   | zip   | item_name         | display_price | quantity |
+----------------------+------------+------------+-------+-------------------+---------------+----------+
| 8125 North Circle    | Toad Town  | California | 12586 | vanilla ice cream | $8.80         |        3 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | vanilla ice cream | $8.80         |        3 |
| 1422 Electric Avenue | Cascade    | Arizona    | 58602 | vanilla ice cream | $8.80         |       17 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | vanilla ice cream | $8.80         |       24 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | vanilla ice cream | $8.80         |       23 |
+----------------------+------------+------------+-------+-------------------+---------------+----------+

-------------------------------------------------------------------------------------------------------------

-- Which store has the lowest total quantity?

mysql> SELECT s.store_id, address_line, city, us_state, zip, SUM(quantity) 
FROM stores AS s 
JOIN inventory AS i ON i.store_id = s.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
GROUP BY s.store_id, address_line, city, us_state, zip 
ORDER BY SUM(quantity) LIMIT 1;

+----------+---------------+-----------+----------+-------+---------------+
| store_id | address_line  | city      | us_state | zip   | SUM(quantity) |
+----------+---------------+-----------+----------+-------+---------------+
| 1325     | 416 Oak Drive | West Park | Nevada   | 30126 |           187 |
+----------+---------------+-----------+----------+-------+---------------+

------------------------------------------------------------------------------------------------------------

-- Total quantities (all items) in each store?

mysql> SELECT s.store_id, address_line, city, us_state, zip, SUM(quantity) 
FROM stores AS s 
JOIN inventory AS i ON i.store_id = s.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
GROUP BY s.store_id, address_line, city, us_state, zip 
ORDER BY SUM(quantity) LIMIT 5;

+----------+----------------------+------------+------------+-------+---------------+
| store_id | address_line         | city       | us_state   | zip   | SUM(quantity) |
+----------+----------------------+------------+------------+-------+---------------+
| 1325     | 416 Oak Drive        | West Park  | Nevada     | 30126 |           187 |
| 1217     | 8125 North Circle    | Toad Town  | California | 12586 |           200 |
| 1259     | 65135 Dodger Lane    | Funky Town | Arizona    | 59533 |           210 |
| 1258     | 1422 Electric Avenue | Cascade    | Arizona    | 58602 |           215 |
| 1218     | 376 Green Lake Road  | Lake Leaf  | California | 12795 |           258 |
+----------+----------------------+------------+------------+-------+---------------+

------------------------------------------------------------------------------------------------------

-- Which store has the highest total quantity of a specific item?
-- milk

mysql> SELECT s.store_id, address_line, city, us_state, zip, quantity 
FROM stores AS s 
JOIN inventory AS i ON i.store_id = s.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE item_name = 'Milk' 
GROUP BY s.store_id, address_line, city, us_state, zip, quantity 
ORDER BY quantity DESC LIMIT 1;

+----------+-------------------+------------+----------+-------+----------+
| store_id | address_line      | city       | us_state | zip   | quantity |
+----------+-------------------+------------+----------+-------+----------+
| 1259     | 65135 Dodger Lane | Funky Town | Arizona  | 59533 |       25 |
+----------+-------------------+------------+----------+-------+----------+


mysql> SELECT s.store_id, address_line, city, us_state, zip, quantity 
FROM stores AS s 
JOIN inventory AS i ON i.store_id = s.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE item_name = 'Milk' 
GROUP BY s.store_id, address_line, city, us_state, zip, quantity 
ORDER BY quantity DESC LIMIT 5;

+----------+----------------------+------------+------------+-------+----------+
| store_id | address_line         | city       | us_state   | zip   | quantity |
+----------+----------------------+------------+------------+-------+----------+
| 1259     | 65135 Dodger Lane    | Funky Town | Arizona    | 59533 |       25 |
| 1258     | 1422 Electric Avenue | Cascade    | Arizona    | 58602 |       22 |
| 1218     | 376 Green Lake Road  | Lake Leaf  | California | 12795 |       16 |
| 1217     | 8125 North Circle    | Toad Town  | California | 12586 |        0 |
| 1325     | 416 Oak Drive        | West Park  | Nevada     | 30126 |        0 |
+----------+----------------------+------------+------------+-------+----------+


-- vanilla ice cream

mysql> SELECT s.store_id, address_line, city, us_state, zip, quantity 
FROM stores AS s 
JOIN inventory AS i ON i.store_id = s.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE item_name = 'vanilla ice cream' 
GROUP BY s.store_id, address_line, city, us_state, zip, quantity 
ORDER BY quantity DESC LIMIT 1;

+----------+-------------------+------------+----------+-------+----------+
| store_id | address_line      | city       | us_state | zip   | quantity |
+----------+-------------------+------------+----------+-------+----------+
| 1259     | 65135 Dodger Lane | Funky Town | Arizona  | 59533 |       24 |
+----------+-------------------+------------+----------+-------+----------+


mysql> SELECT s.store_id, address_line, city, us_state, zip, quantity 
FROM stores AS s 
JOIN inventory AS i ON i.store_id = s.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE item_name = 'vanilla ice cream' 
GROUP BY s.store_id, address_line, city, us_state, zip, quantity 
ORDER BY quantity DESC LIMIT 5;

+----------+----------------------+------------+------------+-------+----------+
| store_id | address_line         | city       | us_state   | zip   | quantity |
+----------+----------------------+------------+------------+-------+----------+
| 1259     | 65135 Dodger Lane    | Funky Town | Arizona    | 59533 |       24 |
| 1325     | 416 Oak Drive        | West Park  | Nevada     | 30126 |       23 |
| 1258     | 1422 Electric Avenue | Cascade    | Arizona    | 58602 |       17 |
| 1217     | 8125 North Circle    | Toad Town  | California | 12586 |        3 |
| 1218     | 376 Green Lake Road  | Lake Leaf  | California | 12795 |        3 |
+----------+----------------------+------------+------------+-------+----------+


-------------------------------------------------------------------------------------------------------------------------

-- Which store has the most out of stock items? (There is a actually tie for the top spot)

mysql> SELECT s.store_id, address_line, city, us_state, zip, COUNT(quantity) 
FROM stores AS s 
JOIN inventory AS i ON i.store_id = s.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE quantity = 0 
GROUP BY s.store_id, address_line, city, us_state, zip 
ORDER BY COUNT(quantity) DESC LIMIT 1;

+----------+---------------+-----------+----------+-------+-----------------+
| store_id | address_line  | city      | us_state | zip   | COUNT(quantity) |
+----------+---------------+-----------+----------+-------+-----------------+
| 1325     | 416 Oak Drive | West Park | Nevada   | 30126 |               6 |
+----------+---------------+-----------+----------+-------+-----------------+


mysql> SELECT s.store_id, address_line, city, us_state, zip, COUNT(quantity) 
FROM stores AS s 
JOIN inventory AS i ON i.store_id = s.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE quantity = 0 
GROUP BY s.store_id, address_line, city, us_state, zip 
ORDER BY COUNT(quantity) DESC LIMIT 5;

+----------+----------------------+------------+------------+-------+-----------------+
| store_id | address_line         | city       | us_state   | zip   | COUNT(quantity) |
+----------+----------------------+------------+------------+-------+-----------------+
| 1259     | 65135 Dodger Lane    | Funky Town | Arizona    | 59533 |               6 |
| 1325     | 416 Oak Drive        | West Park  | Nevada     | 30126 |               6 |
| 1217     | 8125 North Circle    | Toad Town  | California | 12586 |               2 |
| 1218     | 376 Green Lake Road  | Lake Leaf  | California | 12795 |               2 |
| 1258     | 1422 Electric Avenue | Cascade    | Arizona    | 58602 |               2 |
+----------+----------------------+------------+------------+-------+-----------------+

---------------------------------------------------------------------------------------

-- What are the 5 oldest employees?

mysql> SELECT position, first_name, last_name, birth_year, CONCAT('$', CAST(wage AS DECIMAL(10, 2))) AS wage, address_line, city, us_state, zip 
FROM employees x 
INNER JOIN stores y ON x.store_id = y.store_id 
ORDER BY birth_year LIMIT 5;

+----------+------------+-----------+------------+--------+----------------------+------------+------------+-------+
| position | first_name | last_name | birth_year | wage   | address_line         | city       | us_state   | zip   |
+----------+------------+-----------+------------+--------+----------------------+------------+------------+-------+
| Manager  | Leopold    | Stotch    |       1960 | $56.50 | 1422 Electric Avenue | Cascade    | Arizona    | 58602 |
| Manager  | Mario      | Luigi     |       1970 | $55.00 | 8125 North Circle    | Toad Town  | California | 12586 |
| Cashier  | Victoria   | Johnson   |       1972 | $22.50 | 65135 Dodger Lane    | Funky Town | Arizona    | 59533 |
| Manager  | John       | Smith     |       1975 | $55.00 | 376 Green Lake Road  | Lake Leaf  | California | 12795 |
| Manager  | Eric       | Cartman   |       1976 | $56.00 | 416 Oak Drive        | West Park  | Nevada     | 30126 |
+----------+------------+-----------+------------+--------+----------------------+------------+------------+-------+


-- What are the 5 youngest employees? (Likely several ties due to no month in table, only birth year)

mysql> SELECT position, first_name, last_name, birth_year, CONCAT('$', CAST(wage AS DECIMAL(10, 2))) AS wage, address_line, city, us_state, zip 
FROM employees x 
INNER JOIN stores y ON x.store_id = y.store_id 
ORDER BY birth_year DESC LIMIT 5;
+----------------------+------------+------------+------------+--------+---------------------+-----------+------------+-------+
| position             | first_name | last_name  | birth_year | wage   | address_line        | city      | us_state   | zip   |
+----------------------+------------+------------+------------+--------+---------------------+-----------+------------+-------+
| Shipping & Receiving | Harry      | Armstrong  |       1996 | $19.25 | 376 Green Lake Road | Lake Leaf | California | 12795 |
| Custodian            | Scruffy    | Farnsworth |       1995 | $17.00 | 8125 North Circle   | Toad Town | California | 12586 |
| Cashier              | Ava        | Liddel     |       1995 | $19.30 | 8125 North Circle   | Toad Town | California | 12586 |
| Shipping & Receiving | Isaac      | Fuentes    |       1994 | $19.00 | 8125 North Circle   | Toad Town | California | 12586 |
| Stocker              | Sheila     | Brown      |       1994 | $16.50 | 376 Green Lake Road | Lake Leaf | California | 12795 |
+----------------------+------------+------------+------------+--------+---------------------+-----------+------------+-------+

--------------------------------------------------------------------------------------

How many employees born after 1990 are in each store?

mysql> SELECT s.store_id, address_line, city, us_state, zip, COUNT(*) AS Born_After_1990 
FROM stores AS s 
INNER JOIN employees AS e 
ON e.store_id = s.store_id 
WHERE birth_year > 1990 
GROUP BY s.store_id;
+----------+----------------------+------------+------------+-------+-----------------+
| store_id | address_line         | city       | us_state   | zip   | Born_After_1990 |
+----------+----------------------+------------+------------+-------+-----------------+
| 1217     | 8125 North Circle    | Toad Town  | California | 12586 |               5 |
| 1218     | 376 Green Lake Road  | Lake Leaf  | California | 12795 |               3 |
| 1258     | 1422 Electric Avenue | Cascade    | Arizona    | 58602 |               3 |
| 1259     | 65135 Dodger Lane    | Funky Town | Arizona    | 59533 |               1 |
| 1325     | 416 Oak Drive        | West Park  | Nevada     | 30126 |               2 |
+----------+----------------------+------------+------------+-------+-----------------+

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
- SET operations on tables 'employees' and 'former_employees'
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

-- Show all current and former employees by first_name, last_name WITHOUT duplicates:

mysql> SELECT first_name, last_name 
FROM employees 
UNION 
SELECT first_name, last_name 
FROM former_employees;
+------------+------------+
| first_name | last_name  |
+------------+------------+
| Mario      | Luigi      |
| John       | Smith      |
| Leopold    | Stotch     |
| Stan       | Marsh      |
| Eric       | Cartman    |
| Scruffy    | Farnsworth |
| Michael    | Mosley     |
| Janice     | Wild       |
| Richard    | Hedburg    |
| Jonathan   | Smith      |
| Kerry      | Potter     |
| Sheila     | Brown      |
| Joseph     | Smith      |
| Michael    | Carpenter  |
| Juan       | Lopez      |
| Maria      | Perez      |
| Mike       | Shields    |
| Dat        | Phan       |
| Penelope   | Marley     |
| Leonard    | Newton     |
| Isaac      | Fuentes    |
| Harry      | Armstrong  |
| Colby      | Lewis      |
| Jeffery    | Jefferson  |
| Rachel     | Mathews    |
| Juan       | Donalds    |
| Markus     | Black      |
| Jose       | Lopez      |
| John       | White      |
| Veronica   | Smith      |
| Alice      | Armstrong  |
| Lewis      | Nabokov    |
| Joseph     | West       |
| Victoria   | Johnson    |
| Ella       | Carrols    |
| Ava        | Liddel     |
| Zachary    | Moretz     |
| Gregory    | Kuniz      |
| Selina     | Sutherland |
| Tiffany    | Carpenter  |
| Joseph     | Navarro    |
| Marcus     | Jackson    |
| Jarod      | Marklar    |
| Richard    | McDonald   |
| Richard    | Johnson    |
| Alice      | Carrol     |
+------------+------------+

------------------------------------------------------------------------------------

-- Show all employees current and former
-- (Show 'current' and 'former' employees as a new column for the following)

mysql> SELECT 'current' AS employee_status, first_name, last_name 
FROM employees 
UNION ALL 
SELECT 'former' AS employee_status, first_name, last_name 
FROM former_employees;
+-----------------+------------+------------+
| employee_status | first_name | last_name  |
+-----------------+------------+------------+
| current         | Mario      | Luigi      |
| current         | John       | Smith      |
| current         | Leopold    | Stotch     |
| current         | Stan       | Marsh      |
| current         | Eric       | Cartman    |
| current         | Scruffy    | Farnsworth |
| current         | Michael    | Mosley     |
| current         | Janice     | Wild       |
| current         | Richard    | Hedburg    |
| current         | Jonathan   | Smith      |
| current         | Kerry      | Potter     |
| current         | Sheila     | Brown      |
| current         | Joseph     | Smith      |
| current         | Michael    | Carpenter  |
| current         | Juan       | Lopez      |
| current         | Maria      | Perez      |
| current         | Mike       | Shields    |
| current         | Dat        | Phan       |
| current         | Penelope   | Marley     |
| current         | Leonard    | Newton     |
| current         | Isaac      | Fuentes    |
| current         | Harry      | Armstrong  |
| current         | Colby      | Lewis      |
| current         | Jeffery    | Jefferson  |
| current         | Rachel     | Mathews    |
| current         | Juan       | Donalds    |
| current         | Markus     | Black      |
| current         | Jose       | Lopez      |
| current         | John       | White      |
| current         | Veronica   | Smith      |
| current         | Alice      | Armstrong  |
| current         | Lewis      | Nabokov    |
| current         | Joseph     | West       |
| current         | Victoria   | Johnson    |
| current         | Ella       | Carrols    |
| current         | Ava        | Liddel     |
| current         | Zachary    | Moretz     |
| current         | Gregory    | Kuniz      |
| current         | Selina     | Sutherland |
| current         | Tiffany    | Carpenter  |
| former          | Mario      | Luigi      |
| former          | Joseph     | Navarro    |
| former          | Michael    | Mosley     |
| former          | Marcus     | Jackson    |
| former          | Jarod      | Marklar    |
| former          | Richard    | McDonald   |
| former          | Ava        | Liddel     |
| former          | Gregory    | Kuniz      |
| former          | Richard    | Johnson    |
| former          | Jonathan   | Smith      |
| former          | Alice      | Carrol     |
+-----------------+------------+------------+


------------------------------------------------------------------------------------

-- Show only duplicate employee names by first_name, last_name

mysql> SELECT first_name, last_name 
FROM employees 
INTERSECT 
SELECT first_name, last_name
FROM former_employees;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Mario      | Luigi     |
| Michael    | Mosley    |
| Jonathan   | Smith     |
| Ava        | Liddel    |
| Gregory    | Kuniz     |
+------------+-----------+

------------------------------------------------------------------------------------


*/
