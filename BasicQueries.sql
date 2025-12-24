/* 
   -----------------------------
  |	id	name	age	city        |
  | 1	Ravi	22	Chennai     |
  |	2	Anita	30	Bangalore   |
  |	3	Mohan	25	Chennai     |
  |	4	Sara	35	Mumbai      |
   -----------------------------

    1.  Write a query to get all users who live in Chennai.
	2.	Get users whose city is NOT Bangalore.
	3.	Get users whose age is greater than 25.
	4.	Get users whose age is between 25 and 35 (inclusive).
	5.	Get users who live in either Chennai or Mumbai.
	6.	Get users whose name starts with the letter S.
	7.	Get users whose city is NULL.
	8.	Get users whose city is NOT NULL and age is greater than 25.
	9.	Get users whose name contains the letter a anywhere.
	10.	Get users whose age is NOT between 20 and 30.
	11.	Get users where city is Chennai AND name contains a.
	12.	Get users ordered by age descending, but only the top 2 oldest users.
	13.	Get the 2nd oldest user.
	14.	Get users whose age is greater than the average age of all users.
	15.	Get users where city is Chennai OR city is NULL.

*/

CREATE SCHEMA Assignments;
use Assignments;

CREATE TABLE user(
    id INT,
    name VARCHAR(20),
    age INT,
    city VARCHAR(20)
);
SELECT * FROM user;
INSERT INTO user(id,name,age,city)
VALUES
    (1,'Ravi',22,'Chennai'),
	(2,'Anita',30,'Bangalore'),
	(3,'Mohan',25,'Chennai'),
	(4,'Sara',35,'Mumbai');

 -- 1
SELECT name FROM user WHERE city='Chennai';

 --2
SELECT name FROM user WHERE city NOT IN  ('Bangalore');
SELECT name FROM user WHERE city != 'Bangalore';
SELECT name FROM user WHERE city NOT LIKE "Bangalore";
 --3
SELECT name FROM user WHERE age>25;

--4
SELECT name FROM user WHERE age BETWEEN 25 AND 35;

--5 
SELECT name FROM user WHERE city IN ('Chennai','Mumbai');
SELECT name FROM user WHERE city ='Chennai' OR city = 'Mumbai';

--6
SELECT name FROM user WHERE name LIKE "S%";

--7 
SELECT name FROM user WHERE city is NULL;

--8
SELECT name FROM user WHERE name is NOT NULL AND age>25; 

--9
SELECT name FROM user WHERE city LIKE "%a%";

--10
SELECT name FROM user WHERE age NOT BETWEEN 20 AND 30;

--11
SELECT name FROM user WHERE city="Chennai" AND name LIKE "%a%";

--12
SELECT name FROM user ORDER BY age DESC LIMIT 2;

--13 
SELECT name FROM user Order By age DESC LIMIT 1 OFFSET 1;

--14
SELECT name FROM user WHERE age > (SELECT AVG(age) FROM user);

--15 
SELECT name FROM user WHERE city="Chennai" OR city IS NULL

-- command lines