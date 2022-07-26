
--UC1 Create address book service database
create database AddressBookService

use AddressBookService

--UC2 Create address book table
create table Address_Book(
FirstName varchar(20),
LastName varchar(20),
Address varchar(50),
City varchar(20),
State varchar(20),
ZipCode int,
PhoneNumber bigint,
Email varchar(25)
)
--To get data from table
select * from Address_Book

--UC3 Insert contacts into address book
insert into Address_Book values 
('Siddhant','Shrivastava','A colony','Ujjain','MP',666666,9998889998,'Sid@gmail.com'),
('Riya','Sharma','Ab colony','Lucknow','UP',677666,9998882348,'Riya@gmail.com'),
('Pranav','Vyas','C colony','Pune','Maharashtra',656666,9923489998,'Pranav@gmail.com'),
('Anamika','Singh','D colony','Chennai','Tamil Naidu',662226,8898889998,'Anamika@gmail.com')

--UC4 Edit the existing data in table
update Address_Book
set City = 'Ajmer' , State= 'Rajasthan' where FirstName ='Pranav';
update Address_Book
set PhoneNumber = 9807678876 where FirstName='Riya'

--UC5 Delete a Person Contacts using Name
delete from Address_Book
where Firstname='Anamika'

--UC6 Retrieve Person by City or State
select * from Address_Book
where City='Ajmer' or State='UP'

--UC7 Size of Address Book by City and State
select Count(City) as TotalCity from Address_Book; 
select Count(State) as TotalState from Address_Book; 

--Inserting some more data
insert into Address_Book values 
('Vikas','Mathankar','HT colony','Pune','Maharashtra',622666,8998889998,'Vikas@gmail.com'),
('Shubham','Deshmukh','GA colony','Pune','Maharashtra',567666,7898552348,'Shubham@gmail.com'),
('Rishabh','Patel','CM colony','Pune','Maharashtra',5756676,8723486998,'Rishabh@gmail.com'),
('Priya','Mishra','Sai colony','Pune','Maharashtra',662555,9998889988,'Priya@gmail.com')

--UC8 Sort Persons Name Alphabetically for a given city
Select * from Address_Book where City='Pune'order by FirstName asc;


--UC9 Identify Each Address Book with Name and Type
alter table  Address_Book
add Type varchar(25)

update Address_Book set Type ='Family' where FirstName = 'Siddhant'
update Address_Book set Type ='Friend'where FirstName = 'Riya'
update Address_Book set Type ='Friend'  where FirstName = 'Pranav'
update Address_Book set Type = 'Profession' where FirstName = 'Vikas'
update Address_Book set Type = 'Family' where FirstName = 'Shubham'
update Address_Book set Type = 'Profession' where FirstName = 'Rishabh'
update Address_Book set Type = 'Profession' where FirstName = 'Priya'

--UC10 Get Number Of Contact Persons By Type
select Count(*) as Profession from Address_Book where Type='Profession'

select Count(*) as Family from Address_Book where Type='Family'

select Count(*) as Friend from Address_Book where Type='Friend'

--UC11 Add Person to both Friend and Family
insert into Address_Book values 
('Kunal','Jain','CT colony','Bangalore','Karnataka',558866,7778889998,'Kunal@gmail.com','Friend'),
('Saara','Khan','K colony','Bangalore','Karnataka',567466,7898882348,'Saara@gmail.com','Family')



--UC 12 ER Diagram
----Creating the AddressBookCategory table to differentiate Family, Friend and Profession
create table AddressBookCategory(
AddressBookId int primary key identity,
Type varchar(20)
)

alter table Address_Book
add AddressBookId int foreign key references AddressBookCategory 

SELECt * FROM AddressBookCategory
SELECT * FROM Address_Book
--Assigning Id to Family, Friend and Profession
Insert into AddressBookCategory values ('Family'),('Friend'),('Profession')

update Address_Book set AddressBookId =1  where FirstName = 'Siddhant'
update Address_Book set AddressBookId =1  where FirstName = 'Riya'
update Address_Book set AddressBookId =2  where FirstName = 'Pranav'
update Address_Book set AddressBookID =3  where FirstName = 'Vikas'
update Address_Book set AddressBookID =3  where FirstName = 'Shubham'
update Address_Book set AddressBookID =1  where FirstName = 'Rishabh'
update Address_Book set AddressBookID =2  where FirstName = 'Priya'
update Address_Book set AddressBookID =2  where FirstName = 'Kunal'
update Address_Book set AddressBookID =3  where FirstName = 'Saara'


--UC13 
select * from Address_Book
where City='Ajmer' or State='UP'

select Count(City) as TotalCity from Address_Book; 
select Count(State) as TotalState from Address_Book;

Select * from Address_Book where City='Pune'order by FirstName asc;

select AddressBookId, COUNT (AddressBookId) from Address_Book group by AddressBookId 


