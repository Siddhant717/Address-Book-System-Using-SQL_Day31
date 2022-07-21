
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