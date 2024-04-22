create table CONTACTS 
(
    ID int not null
)
ALTER TABLE CONTACTS 
ADD
    first_name nvarchar (128),
	last_name nvarchar (128),
	gender nvarchar (128),
	address_line_1 nvarchar (128),
	address_line_2 nvarchar (128),
	city nvarchar (128),
	postcode nvarchar (128),
	phone int,
	email nvarchar (128);

	
create table PRODUCTS (
    ID int not null
)
alter table PRODUCTS 
    ADD

	ProductName nvarchar (128),
	ProductCode int,
	Category nvarchar (128),
	CurrentLine nvarchar (128),
	ReorderQuantity int;
	
	create table LOCATIONS
(
    ID int not null
)
create table SALESTEAM
(
    ID int not null
)
CREATE OR REPLACE PROCEDURE GetContacts()
returns string not null
language javascript
as
$$
var cmd = `
SELECT * FROM contacts
`
var sql = snowflake.createStatement({sqlText: cmd});
var result = sql.execute();
return '💰';
$$;
CREATE OR REPLACE PROCEDURE GetName()
returns string not null
language javascript
as
$$
var cmd = `
SELECT FIRST_NAME FROM CONTACTS
`
var sql = snowflake.createStatement({sqlText: cmd});
var result = sql.execute();
return '💰';
$$;