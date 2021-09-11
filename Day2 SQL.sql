--Day2 Queries
--Table: Product
--Fields: Pid int, Pname varchar,Pqty int,Price INT

use PHCDC

--To create Product table
CREATE TABLE Product(pid int,pname varchar(50),pqty int,price int)

--To insert Product records
insert into product values(101,'Apple',10,2);
insert into product values(102,'Banana',5,1),(103,'orange',7,3),(104,'graps',15,1)

--Sigle line comment line

/*Multiline 
comment line*/

select * from product

select pid, pqty from product --extract only pid and pqty records

/* Arithmetic Operator
+ addition
- Subtraction
* Multiplication
/ Division
% Modulus Operator
*/

--Update the quantity column
update product set pqty=pqty+2
update product set pqty=pqty-3
update product set pqty=pqty*5
update product set pqty=pqty/3
update product set pqty=pqty%3

delete from product;

/* Relation Operator
< less than
> Greater than
= equal
!=  <>  not equal
<=  less than or equal
>=  Greater than or equal
*/

select * from product
select * from product where pqty<>0 --not equal to ( != )
select * from product where pqty=0 --equalt to
select * from product where pqty<1 --less than
select * from product where pqty>1 --greater than
select * from product where pqty<=1  --less than or equal to
select * from product where pqty>=2 --greater than or equal to 

/* Logical
AND
OR
NOT
*/

SELECT * FROM Product WHERE pname='Apple' and pqty>5 AND pid=101 --operator displays a record if all the conditions separated by AND are TRUE.
SELECT * FROM Product WHERE pname='Apple' or pqty>5 or pid=101 --operator displays a record if any of the conditions separated by OR is TRUE.
sELECT * FROM Product WHERE not pname='Apple' --displays a record if the condition(s) is NOT TRUE.

-- like operator - Search a specified pattern in a column
select * from product where pname like '%e'
select * from product where pname like 'A%p'
select * from product where pname like 'A%e'
select * from product where pname like 'a__e'
select * from product where pname like 'B___a'

--In operator -to specify multiple values in a WHERE clause
select * from product where pname in ('Apple', pqty=10)
select * from product where pname in ('Banana') -- =
select * from product where pname not in ('Banana') --!=

--BETWEEN operator - selects values within a given range
select * from product where pqty between 7 and 10  -- similar for <= to >=
select * from product where pname between 'Apple' and 'orange'

-- Group/aggregate function
select pname,min(price) from product -- returns the smallest value of the selected column.
select pname,max(price) from product -- returns the largest value of the selected column.
select count(*) from product --returns the number of rows that matches a specified criterion
select count(*) from product where pname='Apple'
select sum(price) from product --returns the total sum of a numeric column
select avg(price) from product --returns the average value of a numeric column.
select * from product