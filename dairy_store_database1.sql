/*
--stringzzz, Ghostwarez Co. 08-27-2025
*/

CREATE DATABASE store_database1;
USE store_database1;

CREATE TABLE prices (item_id varchar(6) not null CHECK (LENGTH(item_id) = 6), item_name varchar(128) not null, price float);
INSERT INTO prices (item_id, item_name, price) VALUES ('122678', 'vanilla yogurt', 4.35);
INSERT INTO prices (item_id, item_name, price) VALUES ('122679', 'peach yogurt', 4.45);
INSERT INTO prices (item_id, item_name, price) VALUES ('122685', 'blueberry yogurt', 4.45);
INSERT INTO prices (item_id, item_name, price) VALUES ('122686', 'milk', 7.86);
INSERT INTO prices (item_id, item_name, price) VALUES ('122687', 'salted butter', 6.74);
INSERT INTO prices (item_id, item_name, price) VALUES ('122689', 'unsalted butter', 6.50);
INSERT INTO prices (item_id, item_name, price) VALUES ('122693', 'provolone cheese', 5.78);
INSERT INTO prices (item_id, item_name, price) VALUES ('122697', 'cheddar cheese', 5.90);
INSERT INTO prices (item_id, item_name, price) VALUES ('122699', 'mozarella cheese', 6.10);
INSERT INTO prices (item_id, item_name, price) VALUES ('122710', 'pepperjack cheese', 6.12);
INSERT INTO prices (item_id, item_name, price) VALUES ('123456', 'chocolate ice cream', 8.90);
INSERT INTO prices (item_id, item_name, price) VALUES ('123457', 'vanilla ice cream', 8.80);
INSERT INTO prices (item_id, item_name, price) VALUES ('123468', 'mint chocolate chip ice cream', 8.95);
INSERT INTO prices (item_id, item_name, price) VALUES ('123472', 'neopolitan ice cream', 8.95);
INSERT INTO prices (item_id, item_name, price) VALUES ('123480', 'rainbow sherbert ice cream', 8.95);
INSERT INTO prices (item_id, item_name, price) VALUES ('123484', 'sour cream', 5.63);
INSERT INTO prices (item_id, item_name, price) VALUES ('123485', 'cream cheese', 6.20);
INSERT INTO prices (item_id, item_name, price) VALUES ('124565', 'cottage cheese', 6.05);

/*
INSERT INTO prices (item_id, item_name, price) VALUES ('', '', );
*/

CREATE TABLE dairy_store_chain (store_id varchar(4) not null CHECK (LENGTH(store_id) = 4), address_line varchar(128) not null, 
city varchar(64) not null, us_state varchar(64) not null, zip varchar(5) not null CHECK (LENGTH(zip) = 5), manager_first_name varchar(64) not null, manager_last_name varchar(64) not null);
INSERT INTO dairy_store_chain (store_id, address_line, city, us_state, zip, manager_first_name, manager_last_name) VALUES ('1217', '8125 North Circle', 'Toad Town', 'California', '12586', 'Mario', 'Luigi');
INSERT INTO dairy_store_chain (store_id, address_line, city, us_state, zip, manager_first_name, manager_last_name) VALUES ('1218', '376 Green Lake Road', 'Lake Leaf', 'California', '12795', 'John', 'Smith');
INSERT INTO dairy_store_chain (store_id, address_line, city, us_state, zip, manager_first_name, manager_last_name) VALUES ('1258', '1422 Electric Avenua', 'Cascade', 'Arizona', '58602', 'Leopold', 'Stotch');
INSERT INTO dairy_store_chain (store_id, address_line, city, us_state, zip, manager_first_name, manager_last_name) VALUES ('1259', '65135 Dodger Lane', 'Funky Town', 'Arizona', '59533', 'Stan', 'Marsh');
INSERT INTO dairy_store_chain (store_id, address_line, city, us_state, zip, manager_first_name, manager_last_name) VALUES ('1325', '416 Oak Drive', 'West Park', 'Nevada', '30126', 'Eric', 'Cartman');

/*
INSERT INTO dairy_store_chain (store_id, address_line, city, us_state, zip, manager_first_name, manager_last_name) VALUES ('', '', '', '', '', '', '');
*/

CREATE TABLE inventory (store_id varchar(4) not null CHECK (LENGTH(store_id) = 4), item_id varchar(6) not null CHECK (LENGTH(item_id) = 6), quantity int not null);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '122678', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '122678', 12);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '122678', 14);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '122678', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '122678', 12);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '122679', 20);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '122679', 22);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '122679', 21);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '122679', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '122679', 20);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '122685', 16);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '122685', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '122685', 5);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '122685', 9);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '122685', 11);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '122686', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '122686', 16);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '122686', 22);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '122686', 25);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '122686', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '122687', 18);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '122687', 15);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '122687', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '122687', 11);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '122687', 9);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '122689', 14);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '122689', 17);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '122689', 22);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '122689', 25);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '122689', 12);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '122693', 6);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '122693', 22);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '122693', 20);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '122693', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '122693', 16);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '122697', 4);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '122697', 9);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '122697', 11);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '122697', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '122697', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '122699', 23);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '122699', 12);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '122699', 3);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '122699', 18);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '122699', 17);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '122710', 18);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '122710', 18);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '122710', 5);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '122710', 16);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '122710', 23);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '123456', 12);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '123456', 24);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '123456', 5);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '123456', 3);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '123456', 4);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '123457', 3);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '123457', 3);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '123457', 17);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '123457', 24);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '123457', 23);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '123468', 21);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '123468', 18);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '123468', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '123468', 27);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '123468', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '123472', 22);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '123472', 21);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '123472', 21);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '123472', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '123472', 15);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '123480', 8);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '123480', 14);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '123480', 15);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '123480', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '123480', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '123484', 5);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '123484', 23);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '123484', 9);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '123484', 11);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '123484', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '123485', 7);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '123485', 0);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '123485', 18);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '123485', 23);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '123485', 25);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1217', '124565', 3);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1218', '124565', 12);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1258', '124565', 7);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1259', '124565', 18);
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('1325', '124565', 0);

/*
INSERT INTO inventory (store_id, item_id, quantity) VALUES ('', '', );
*/

/*

mysql> SELECT * FROM prices;
+---------+-------------------------------+-------+
| item_id | item_name                     | price |
+---------+-------------------------------+-------+
| 122678  | vanilla yogurt                |  4.35 |
| 122679  | peach yogurt                  |  4.45 |
| 122685  | blueberry yogurt              |  4.45 |
| 122686  | milk                          |  7.86 |
| 122687  | salted butter                 |  6.74 |
| 122689  | unsalted butter               |   6.5 |
| 122693  | provolone cheese              |  5.78 |
| 122697  | cheddar cheese                |   5.9 |
| 122699  | mozarella cheese              |   6.1 |
| 122710  | pepperjack cheese             |  6.12 |
| 123456  | chocolate ice cream           |   8.9 |
| 123457  | vanilla ice cream             |   8.8 |
| 123468  | mint chocolate chip ice cream |  8.95 |
| 123472  | neopolitan ice cream          |  8.95 |
| 123480  | rainbow sherbert ice cream    |  8.95 |
| 123484  | sour cream                    |  5.63 |
| 123485  | cream cheese                  |   6.2 |
| 124565  | cottage cheese                |  6.05 |
+---------+-------------------------------+-------+

mysql> SELECT * FROM dairy_store_chain;
+----------+----------------------+------------+------------+-------+--------------------+-------------------+
| store_id | address_line         | city       | us_state   | zip   | manager_first_name | manager_last_name |
+----------+----------------------+------------+------------+-------+--------------------+-------------------+
| 1217     | 8125 North Circle    | Toad Town  | California | 12586 | Mario              | Luigi             |
| 1218     | 376 Green Lake Road  | Lake Leaf  | California | 12795 | John               | Smith             |
| 1258     | 1422 Electric Avenua | Cascade    | Arizona    | 58602 | Leopold            | Stotch            |
| 1259     | 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | Stan               | Marsh             |
| 1325     | 416 Oak Drive        | West Park  | Nevada     | 30126 | Eric               | Cartman           |
+----------+----------------------+------------+------------+-------+--------------------+-------------------+

mysql> SELECT * FROM inventory;
+----------+---------+----------+
| store_id | item_id | quantity |
+----------+---------+----------+
| 1217     | 122678  |        0 |
| 1218     | 122678  |       12 |
| 1258     | 122678  |       14 |
| 1259     | 122678  |        0 |
| 1325     | 122678  |       12 |
| 1217     | 122679  |       20 |
| 1218     | 122679  |       22 |
| 1258     | 122679  |       21 |
| 1259     | 122679  |        0 |
| 1325     | 122679  |       20 |
| 1217     | 122685  |       16 |
| 1218     | 122685  |        0 |
| 1258     | 122685  |        5 |
| 1259     | 122685  |        9 |
| 1325     | 122685  |       11 |
| 1217     | 122686  |        0 |
| 1218     | 122686  |       16 |
| 1258     | 122686  |       22 |
| 1259     | 122686  |       25 |
| 1325     | 122686  |        0 |
| 1217     | 122687  |       18 |
| 1218     | 122687  |       15 |
| 1258     | 122687  |        0 |
| 1259     | 122687  |       11 |
| 1325     | 122687  |        9 |
| 1217     | 122689  |       14 |
| 1218     | 122689  |       17 |
| 1258     | 122689  |       22 |
| 1259     | 122689  |       25 |
| 1325     | 122689  |       12 |
| 1217     | 122693  |        6 |
| 1218     | 122693  |       22 |
| 1258     | 122693  |       20 |
| 1259     | 122693  |        0 |
| 1325     | 122693  |       16 |
| 1217     | 122697  |        4 |
| 1218     | 122697  |        9 |
| 1258     | 122697  |       11 |
| 1259     | 122697  |        0 |
| 1325     | 122697  |        0 |
| 1217     | 122699  |       23 |
| 1218     | 122699  |       12 |
| 1258     | 122699  |        3 |
| 1259     | 122699  |       18 |
| 1325     | 122699  |       17 |
| 1217     | 122710  |       18 |
| 1218     | 122710  |       18 |
| 1258     | 122710  |        5 |
| 1259     | 122710  |       16 |
| 1325     | 122710  |       23 |
| 1217     | 123456  |       12 |
| 1218     | 123456  |       24 |
| 1258     | 123456  |        5 |
| 1259     | 123456  |        3 |
| 1325     | 123456  |        4 |
| 1217     | 123457  |        3 |
| 1218     | 123457  |        3 |
| 1258     | 123457  |       17 |
| 1259     | 123457  |       24 |
| 1325     | 123457  |       23 |
| 1217     | 123468  |       21 |
| 1218     | 123468  |       18 |
| 1258     | 123468  |        0 |
| 1259     | 123468  |       27 |
| 1325     | 123468  |        0 |
| 1217     | 123472  |       22 |
| 1218     | 123472  |       21 |
| 1258     | 123472  |       21 |
| 1259     | 123472  |        0 |
| 1325     | 123472  |       15 |
| 1217     | 123480  |        8 |
| 1218     | 123480  |       14 |
| 1258     | 123480  |       15 |
| 1259     | 123480  |        0 |
| 1325     | 123480  |        0 |
| 1217     | 123484  |        5 |
| 1218     | 123484  |       23 |
| 1258     | 123484  |        9 |
| 1259     | 123484  |       11 |
| 1325     | 123484  |        0 |
| 1217     | 123485  |        7 |
| 1218     | 123485  |        0 |
| 1258     | 123485  |       18 |
| 1259     | 123485  |       23 |
| 1325     | 123485  |       25 |
| 1217     | 124565  |        3 |
| 1218     | 124565  |       12 |
| 1258     | 124565  |        7 |
| 1259     | 124565  |       18 |
| 1325     | 124565  |        0 |
+----------+---------+----------+

---------------------------------------------------------------

mysql> SELECT address_line, city, us_state, zip, item_name, CONCAT('$', CAST(price AS DECIMAL(10, 2))) AS price, quantity 
FROM dairy_store_chain AS dsc 
JOIN inventory AS i ON i.store_id = dsc.store_id 
JOIN prices AS p ON i.item_id = p.item_id;
+----------------------+------------+------------+-------+-------------------------------+-------+----------+
| address_line         | city       | us_state   | zip   | item_name                     | price | quantity |
+----------------------+------------+------------+-------+-------------------------------+-------+----------+
| 416 Oak Drive        | West Park  | Nevada     | 30126 | vanilla yogurt                | $4.35 |       12 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | vanilla yogurt                | $4.35 |        0 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | vanilla yogurt                | $4.35 |       14 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | vanilla yogurt                | $4.35 |       12 |
| 8125 North Circle    | Toad Town  | California | 12586 | vanilla yogurt                | $4.35 |        0 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | peach yogurt                  | $4.45 |       20 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | peach yogurt                  | $4.45 |        0 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | peach yogurt                  | $4.45 |       21 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | peach yogurt                  | $4.45 |       22 |
| 8125 North Circle    | Toad Town  | California | 12586 | peach yogurt                  | $4.45 |       20 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | blueberry yogurt              | $4.45 |       11 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | blueberry yogurt              | $4.45 |        9 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | blueberry yogurt              | $4.45 |        5 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | blueberry yogurt              | $4.45 |        0 |
| 8125 North Circle    | Toad Town  | California | 12586 | blueberry yogurt              | $4.45 |       16 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | milk                          | $7.86 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | milk                          | $7.86 |       25 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | milk                          | $7.86 |       22 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | milk                          | $7.86 |       16 |
| 8125 North Circle    | Toad Town  | California | 12586 | milk                          | $7.86 |        0 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | salted butter                 | $6.74 |        9 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | salted butter                 | $6.74 |       11 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | salted butter                 | $6.74 |        0 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | salted butter                 | $6.74 |       15 |
| 8125 North Circle    | Toad Town  | California | 12586 | salted butter                 | $6.74 |       18 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | unsalted butter               | $6.50 |       12 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | unsalted butter               | $6.50 |       25 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | unsalted butter               | $6.50 |       22 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | unsalted butter               | $6.50 |       17 |
| 8125 North Circle    | Toad Town  | California | 12586 | unsalted butter               | $6.50 |       14 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | provolone cheese              | $5.78 |       16 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | provolone cheese              | $5.78 |        0 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | provolone cheese              | $5.78 |       20 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | provolone cheese              | $5.78 |       22 |
| 8125 North Circle    | Toad Town  | California | 12586 | provolone cheese              | $5.78 |        6 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | cheddar cheese                | $5.90 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | cheddar cheese                | $5.90 |        0 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | cheddar cheese                | $5.90 |       11 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | cheddar cheese                | $5.90 |        9 |
| 8125 North Circle    | Toad Town  | California | 12586 | cheddar cheese                | $5.90 |        4 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | mozarella cheese              | $6.10 |       17 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | mozarella cheese              | $6.10 |       18 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | mozarella cheese              | $6.10 |        3 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | mozarella cheese              | $6.10 |       12 |
| 8125 North Circle    | Toad Town  | California | 12586 | mozarella cheese              | $6.10 |       23 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | pepperjack cheese             | $6.12 |       23 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | pepperjack cheese             | $6.12 |       16 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | pepperjack cheese             | $6.12 |        5 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | pepperjack cheese             | $6.12 |       18 |
| 8125 North Circle    | Toad Town  | California | 12586 | pepperjack cheese             | $6.12 |       18 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | chocolate ice cream           | $8.90 |        4 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | chocolate ice cream           | $8.90 |        3 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | chocolate ice cream           | $8.90 |        5 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | chocolate ice cream           | $8.90 |       24 |
| 8125 North Circle    | Toad Town  | California | 12586 | chocolate ice cream           | $8.90 |       12 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | vanilla ice cream             | $8.80 |       23 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | vanilla ice cream             | $8.80 |       24 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | vanilla ice cream             | $8.80 |       17 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | vanilla ice cream             | $8.80 |        3 |
| 8125 North Circle    | Toad Town  | California | 12586 | vanilla ice cream             | $8.80 |        3 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | mint chocolate chip ice cream | $8.95 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | mint chocolate chip ice cream | $8.95 |       27 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | mint chocolate chip ice cream | $8.95 |        0 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | mint chocolate chip ice cream | $8.95 |       18 |
| 8125 North Circle    | Toad Town  | California | 12586 | mint chocolate chip ice cream | $8.95 |       21 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | neopolitan ice cream          | $8.95 |       15 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | neopolitan ice cream          | $8.95 |        0 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | neopolitan ice cream          | $8.95 |       21 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | neopolitan ice cream          | $8.95 |       21 |
| 8125 North Circle    | Toad Town  | California | 12586 | neopolitan ice cream          | $8.95 |       22 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | rainbow sherbert ice cream    | $8.95 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | rainbow sherbert ice cream    | $8.95 |        0 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | rainbow sherbert ice cream    | $8.95 |       15 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | rainbow sherbert ice cream    | $8.95 |       14 |
| 8125 North Circle    | Toad Town  | California | 12586 | rainbow sherbert ice cream    | $8.95 |        8 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | sour cream                    | $5.63 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | sour cream                    | $5.63 |       11 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | sour cream                    | $5.63 |        9 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | sour cream                    | $5.63 |       23 |
| 8125 North Circle    | Toad Town  | California | 12586 | sour cream                    | $5.63 |        5 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | cream cheese                  | $6.20 |       25 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | cream cheese                  | $6.20 |       23 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | cream cheese                  | $6.20 |       18 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | cream cheese                  | $6.20 |        0 |
| 8125 North Circle    | Toad Town  | California | 12586 | cream cheese                  | $6.20 |        7 |
| 416 Oak Drive        | West Park  | Nevada     | 30126 | cottage cheese                | $6.05 |        0 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | cottage cheese                | $6.05 |       18 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | cottage cheese                | $6.05 |        7 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | cottage cheese                | $6.05 |       12 |
| 8125 North Circle    | Toad Town  | California | 12586 | cottage cheese                | $6.05 |        3 |
+----------------------+------------+------------+-------+-------------------------------+-------+----------+


-----------------------------------------------------------------------------------------------------------------------------

mysql> SELECT address_line, city, us_state, zip, item_name, CONCAT('$', CAST(price AS DECIMAL(10, 2))) AS display_price, quantity 
FROM dairy_store_chain AS dsc 
JOIN inventory AS i ON i.store_id = dsc.store_id 
JOIN prices AS p ON i.item_id = p.item_id WHERE ROUND(price, 2) = 8.80;

+----------------------+------------+------------+-------+-------------------+---------------+----------+
| address_line         | city       | us_state   | zip   | item_name         | display_price | quantity |
+----------------------+------------+------------+-------+-------------------+---------------+----------+
| 416 Oak Drive        | West Park  | Nevada     | 30126 | vanilla ice cream | $8.80         |       23 |
| 65135 Dodger Lane    | Funky Town | Arizona    | 59533 | vanilla ice cream | $8.80         |       24 |
| 1422 Electric Avenua | Cascade    | Arizona    | 58602 | vanilla ice cream | $8.80         |       17 |
| 376 Green Lake Road  | Lake Leaf  | California | 12795 | vanilla ice cream | $8.80         |        3 |
| 8125 North Circle    | Toad Town  | California | 12586 | vanilla ice cream | $8.80         |        3 |
+----------------------+------------+------------+-------+-------------------+---------------+----------+

-------------------------------------------------------------------------------------------------------------

-- Which store has the lowest total quantity?

mysql> SELECT dsc.store_id, address_line, city, us_state, zip, SUM(quantity) 
FROM dairy_store_chain AS dsc 
JOIN inventory AS i ON i.store_id = dsc.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
GROUP BY dsc.store_id, address_line, city, us_state, zip 
ORDER BY SUM(quantity) LIMIT 1;

+----------+---------------+-----------+----------+-------+---------------+
| store_id | address_line  | city      | us_state | zip   | SUM(quantity) |
+----------+---------------+-----------+----------+-------+---------------+
| 1325     | 416 Oak Drive | West Park | Nevada   | 30126 |           187 |
+----------+---------------+-----------+----------+-------+---------------+

------------------------------------------------------------------------------------------------------------

-- Total quantities (all items) in each store?

mysql> SELECT dsc.store_id, address_line, city, us_state, zip, SUM(quantity) 
FROM dairy_store_chain AS dsc 
JOIN inventory AS i ON i.store_id = dsc.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
GROUP BY dsc.store_id, address_line, city, us_state, zip 
ORDER BY SUM(quantity) LIMIT 5;

+----------+----------------------+------------+------------+-------+---------------+
| store_id | address_line         | city       | us_state   | zip   | SUM(quantity) |
+----------+----------------------+------------+------------+-------+---------------+
| 1325     | 416 Oak Drive        | West Park  | Nevada     | 30126 |           187 |
| 1217     | 8125 North Circle    | Toad Town  | California | 12586 |           200 |
| 1259     | 65135 Dodger Lane    | Funky Town | Arizona    | 59533 |           210 |
| 1258     | 1422 Electric Avenua | Cascade    | Arizona    | 58602 |           215 |
| 1218     | 376 Green Lake Road  | Lake Leaf  | California | 12795 |           258 |
+----------+----------------------+------------+------------+-------+---------------+

------------------------------------------------------------------------------------------------------

-- Which store has the highest total quantity of a specific item?
-- milk

mysql> SELECT dsc.store_id, address_line, city, us_state, zip, quantity 
FROM dairy_store_chain AS dsc 
JOIN inventory AS i ON i.store_id = dsc.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE item_name = 'Milk' 
GROUP BY dsc.store_id, address_line, city, us_state, zip, quantity 
ORDER BY quantity DESC LIMIT 1;

+----------+-------------------+------------+----------+-------+----------+
| store_id | address_line      | city       | us_state | zip   | quantity |
+----------+-------------------+------------+----------+-------+----------+
| 1259     | 65135 Dodger Lane | Funky Town | Arizona  | 59533 |       25 |
+----------+-------------------+------------+----------+-------+----------+
1 row in set (0.00 sec)

mysql> SELECT dsc.store_id, address_line, city, us_state, zip, quantity 
FROM dairy_store_chain AS dsc 
JOIN inventory AS i ON i.store_id = dsc.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE item_name = 'Milk' 
GROUP BY dsc.store_id, address_line, city, us_state, zip, quantity 
ORDER BY quantity DESC LIMIT 5;

+----------+----------------------+------------+------------+-------+----------+
| store_id | address_line         | city       | us_state   | zip   | quantity |
+----------+----------------------+------------+------------+-------+----------+
| 1259     | 65135 Dodger Lane    | Funky Town | Arizona    | 59533 |       25 |
| 1258     | 1422 Electric Avenua | Cascade    | Arizona    | 58602 |       22 |
| 1218     | 376 Green Lake Road  | Lake Leaf  | California | 12795 |       16 |
| 1217     | 8125 North Circle    | Toad Town  | California | 12586 |        0 |
| 1325     | 416 Oak Drive        | West Park  | Nevada     | 30126 |        0 |
+----------+----------------------+------------+------------+-------+----------+

-- vanilla ice cream

mysql> SELECT dsc.store_id, address_line, city, us_state, zip, quantity 
FROM dairy_store_chain AS dsc 
JOIN inventory AS i ON i.store_id = dsc.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE item_name = 'vanilla ice cream' 
GROUP BY dsc.store_id, address_line, city, us_state, zip, quantity 
ORDER BY quantity DESC LIMIT 1;

+----------+-------------------+------------+----------+-------+----------+
| store_id | address_line      | city       | us_state | zip   | quantity |
+----------+-------------------+------------+----------+-------+----------+
| 1259     | 65135 Dodger Lane | Funky Town | Arizona  | 59533 |       24 |
+----------+-------------------+------------+----------+-------+----------+
1 row in set (0.00 sec)

mysql> SELECT dsc.store_id, address_line, city, us_state, zip, quantity 
FROM dairy_store_chain AS dsc 
JOIN inventory AS i ON i.store_id = dsc.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE item_name = 'vanilla ice cream' 
GROUP BY dsc.store_id, address_line, city, us_state, zip, quantity 
ORDER BY quantity DESC LIMIT 5;

+----------+----------------------+------------+------------+-------+----------+
| store_id | address_line         | city       | us_state   | zip   | quantity |
+----------+----------------------+------------+------------+-------+----------+
| 1259     | 65135 Dodger Lane    | Funky Town | Arizona    | 59533 |       24 |
| 1325     | 416 Oak Drive        | West Park  | Nevada     | 30126 |       23 |
| 1258     | 1422 Electric Avenua | Cascade    | Arizona    | 58602 |       17 |
| 1217     | 8125 North Circle    | Toad Town  | California | 12586 |        3 |
| 1218     | 376 Green Lake Road  | Lake Leaf  | California | 12795 |        3 |
+----------+----------------------+------------+------------+-------+----------+

-------------------------------------------------------------------------------------------------------------------------

-- Which store has the most out of stock items? (There is a actually tie for the top spot)

mysql> SELECT dsc.store_id, address_line, city, us_state, zip, COUNT(quantity) 
FROM dairy_store_chain AS dsc 
JOIN inventory AS i ON i.store_id = dsc.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE quantity = 0 
GROUP BY dsc.store_id, address_line, city, us_state, zip 
ORDER BY COUNT(quantity) DESC LIMIT 1;

+----------+-------------------+------------+----------+-------+-----------------+
| store_id | address_line      | city       | us_state | zip   | COUNT(quantity) |
+----------+-------------------+------------+----------+-------+-----------------+
| 1259     | 65135 Dodger Lane | Funky Town | Arizona  | 59533 |               6 |
+----------+-------------------+------------+----------+-------+-----------------+
1 row in set (0.00 sec)

mysql> SELECT dsc.store_id, address_line, city, us_state, zip, COUNT(quantity) 
FROM dairy_store_chain AS dsc 
JOIN inventory AS i ON i.store_id = dsc.store_id 
JOIN prices AS p ON i.item_id = p.item_id 
WHERE quantity = 0 
GROUP BY dsc.store_id, address_line, city, us_state, zip 
ORDER BY COUNT(quantity) DESC LIMIT 5;

+----------+----------------------+------------+------------+-------+-----------------+
| store_id | address_line         | city       | us_state   | zip   | COUNT(quantity) |
+----------+----------------------+------------+------------+-------+-----------------+
| 1259     | 65135 Dodger Lane    | Funky Town | Arizona    | 59533 |               6 |
| 1325     | 416 Oak Drive        | West Park  | Nevada     | 30126 |               6 |
| 1217     | 8125 North Circle    | Toad Town  | California | 12586 |               2 |
| 1218     | 376 Green Lake Road  | Lake Leaf  | California | 12795 |               2 |
| 1258     | 1422 Electric Avenua | Cascade    | Arizona    | 58602 |               2 |
+----------+----------------------+------------+------------+-------+-----------------+

*/