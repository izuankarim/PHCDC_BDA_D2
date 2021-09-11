use PHCDC
/*D2P1: Write a SQL query to create an Electricity table with following fields.
Table Name: Electricity
Column Name	Data Types
Consumer_id	Int
Consumer_name	Varchar(50)
Consumer_type	Varchar(50)
Cost_perread	int
Previous_read	Int
Current_read	Int
Total_read	Int
Amount	Int */

create table Electricity (Consumer_id int, Consumer_name varchar(50), Consumer_type varchar(50), Cost_perread int, Previous_read int, Curent_read int, Total_read int, Amount int)

--D2P2: Write a SQL query to insert any 10 Consumer records.
/*Note: Current_read should be greater than the Previous_read. Consumer_type should be either “Home” or Office. If Consumer_type is “Home” than 
Cost_perread is 2 otherwise  if Consumer_type is “Office” than Cost_perread is 5. Insert null records to the Total_read and Amount column.*/

insert into Electricity values (101, 'Amat', 'Home', 2, 10, 20, '', '')
insert into Electricity values (102, 'Abu', 'Office', 5, 8, 19, '', '')
insert into Electricity values (103, 'Ali', 'Home', 2, 9, 21, '', '')
insert into Electricity values (104, 'Akob', 'Home', 2, 7, 25, '', '')
insert into Electricity values (105, 'Azam', 'Office', 5, 6, 15, '', '')
insert into Electricity values (106, 'Aru', 'Home', 2, 8, 18, '', '')
insert into Electricity values (107, 'Acong', 'Office', 5, 4, 20, '', '')
insert into Electricity values (108, 'Azie', 'Office', 5, 3, 22, '', '')
insert into Electricity values (109, 'Ajis', 'Home', 2, 1, 20, '', '')
insert into Electricity values (110, 'Apo', 'Home', 2, 2, 23, '', '')

--D2P3: Write a SQL query to display all Consumer records.

select * from Electricity

--D2P4: Write a SQL query to update the total_read and amount column.
--Note: Total_read=Current_read – Previous_read, Amount=Total_read * cost_perread

update Electricity set Total_read = Curent_read - Previous_read
update Electricity set Amount = Total_read*Cost_perread

--D2P5: Write a SQL query to display the Consumer whose name start with “A”.

select * from Electricity where Consumer_name like 'A%'

--D2P6: Write a SQL query to display the Consumer records whose name start with “A” and end with “y”.

select * from Electricity where Consumer_name like 'A%y' 

--D2P7: Write a SQL query to display the Consumer_id and Consumer_name whose Amount<500.

select Consumer_id, Consumer_name from Electricity where Amount < 500

--D2P8: Write a SQL query to display Consumer records whose Amount between 100 to 200.

select * from Electricity where Amount between 100 and 200

--D2P9: Write a SQL query to display the Consumer_name who’s having lowest Total_read.

select Consumer_name from Electricity where Total_read = (select min (Total_read) from Electricity) 

--D2P10: Write a SQL query to display the Consumer_name who’s having highest Amount.
select Consumer_name from Electricity where Amount = (select max (Amount) from Electricity)

--D2P11: Write a SQL query to display sum of the total_read.
select sum (total_read) from Electricity

--D2P12: Write a SQL query to display average of the total_read.
select avg (total_read) from Electricity 

--D2P13: Write a SQL query to display number of “Home” Consumers.
select count (Consumer_type) from Electricity where Consumer_type = 'Home' 

--D2P14: Write a SQL query to sort (both ascending and descending order) the Consumer regarding their names.
select * from Electricity order by Consumer_name asc
select * from Electricity order by Consumer_name desc

