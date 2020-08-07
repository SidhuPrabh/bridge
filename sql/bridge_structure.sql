CREATE DATABASE bridge;

DROP DATABASE bridge;
DROP TABLE `cities`;
DROP TABLE `professionals`;
DROP TABLE `categories`;

CREATE TABLE categories (
id int PRIMARY KEY AUTO_INCREMENT,
category varchar(255) NOT NULL
);
ALTER TABLE professionals CHANGE webiste website varchar(150);
ALTER TABLE professionals CHANGE webiste website varchar(150);
CREATE TABLE  professionals(
id int PRIMARY KEY auto_increment NOT NULL,
businessName varchar(255) NOT NULL,
logoURL text,
address text NOT NULL,
city varchar(100),
postcode varchar(15),
email varchar(255) NOT NULL,
`pwd` varchar(50) NOT NULL,
phone varchar(30) NOT NULL,
personOfContact varchar(255),
website text,
instagram text,
facebook text,
youtube text,
noOfContractsGot int,
`isActive` bool
);

Drop table catPro;

Create table catPro (
id int PRIMARY KEY auto_increment NOT NULL,
catId int,
 Foreign Key (catId) REFERENCES categories(id),
proId int,
Foreign Key (proId) REFERENCES professionals(id)
);

CREATE TABLE `clients`(
id int PRIMARY KEY auto_increment NOT NULL,
`name` varchar(255) NOT NULL,
`address` text,
city varchar(100),
postcode varchar(15),
email varchar(255) NOT NULL,
pwd varchar(50) NOT NULL,
phone varchar (30),
marketingEmail bool,
`isActive` bool,
`points` int
);

CREATE TABLE reviews(
id int PRIMARY KEY auto_increment NOT NULL,
review text NOT NULL,
rating TINYINT NOT NULL,
bId int NOT NULL,
cId int NOT NULL
);

CREATE TABLE business_categories(
id int PRIMARY KEY auto_increment NOT NULL,
bId int NOT NULL,
cId int NOT NULL
);

CREATE TABLE photos(
id int PRIMARY KEY auto_increment NOT NULL,
bId int NOT NULL,
photo text,
preference TINYINT
);

CREATE TABLE videos(
id int PRIMARY KEY auto_increment NOT NULL,
bId int NOT NULL,
video text,
preference TINYINT
);

CREATE TABLE `cities`(
id int PRIMARY KEY auto_increment NOT NULL,
`city` varchar(100),
`countryCode` varchar(3)
);

CREATE TABLE IF NOT EXISTS country (
  iso CHAR(2) NOT NULL PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  printable_name VARCHAR(80) NOT NULL,
  iso3 CHAR(3),
  numcode SMALLINT
);

CREATE TABLE leads(
id int PRIMARY KEY auto_increment NOT NULL,
cId int NOT NULL,
bId int NOT NULL,
CatId int NOT NULL,
dateTimeCreated DATETIME,
`status` varchar(20) NOT NULL,
city int NOT NULL,
workDetails TEXT,
`dateTimeDelivery` DATETIME,
isHired BOOL,
quoteRequest BOOL,
quoteSent BOOL,
quoteRequestedDateTime DATETIME,
quoteSentDateTime datetime
);

CREATE TABLE points(
id int PRIMARY KEY auto_increment NOT NULL,
cId int NOT NULL,
bId int NOT NULL,
points int
);

CREATE TABLE `status`(
id int PRIMARY KEY,
`status` varchar(15)
);

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 0;