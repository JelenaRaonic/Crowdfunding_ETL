-- Create the crowdfunding_db database
CREATE DATABASE crowdfunding_db;

-- Creating table contacts
CREATE TABLE Contacts (
	contact_id int not null PRIMARY KEY,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	email varchar(100) not null);
	
-- Creating table Subcategory
CREATE TABLE Subcategory (
	subcategory_id varchar(10) not null PRIMARY KEY,
	subcategory varchar(30) not null);

-- Creating table Category
CREATE TABLE Category (
	category_ids varchar(10) not null PRIMARY KEY,
	category varchar(30) not null);

--Creating table campaign
CREATE TABLE Campaign (
	cf_id int not null,
	contact_id int not null,
	company_name varchar(100) not null,
	description varchar(100) not null,
	goal int not null,
	pledged int not null,
	outcome varchar(30) not null,
	backers_count int not null,
	country varchar(30) not null,
	currency varchar(30) not null,
	launched_date date not null,
	end_date date not null,
	category_ids varchar(10) not null,
	subcategory_id varchar(10) not null,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY(category_ids) REFERENCES Category(category_ids),
	FOREIGN KEY(subcategory_id) REFERENCES Subcategory(subcategory_id));
	
Select * from campaign
Select * from category
Select * from contacts
Select * from subcategory
