
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