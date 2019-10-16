INSERT INTO `clients`(`name`, `email`, `address`, `pwd`, `phone`, `marketingEmail`, `active`, `points`) VALUES
('Prabh', 'prabh@gmail.com', '12345', '98652351423', TRUE, TRUE, 5);

INSERT INTO `professionals` (businessName, logoURL, address, city, postcode, email, pwd, phone,
personOfContact, webiste, instagram, facebook, youtube, noOfContractsGot, `isActive`) VALUES
('Prabh Photography', 'abc/asads', 'Tupelo','Winnipeg', 'R2K 3S2', 'prabh@gmail.com', '12345', '2049856352',
'Prabh', 'prabhsidhu.ca', 'insta', 'facebook', 'youtube', '5', TRUE );

INSERT INTO `professionals` (businessName, logoURL, address, city, postcode, email, pwd, phone,
personOfContact, website, instagram, facebook, youtube, noOfContractsGot, `isActive`) VALUES
('Karam Photography', 'abc/asads', 'Tupelo','Winnipeg', 'R2K 3S2', 'prabh@gmail.com', '12345', '2049856352',
'Prabh', 'prabhsidhu.ca', 'insta', 'facebook', 'youtube', '5', TRUE );
update professionals set `logoURL` ='/images/professionals/logo/prabhSidhu.svg' where `businessName`='Prabh Photography';
update professionals set `website` ='https://prabhsidhu.ca' where `businessName`='Prabh Photography';
INSERT INTO `leads` (`cId`, `bId`, `CatId`, `status`, `city`, `workDetails`, `dateTime`, `isHired`, `quoteRequest`, `quoteSent`)
VALUES (12, 21, 1, 'STARTED', 'Winnipeg', 'work details', 'datetime', 'ishired', 'quoterequested', 'quoteSent' );
SELECT * FROM `professionals`;

insert into `status` (`id`, `status`) values (1, 'Generated');
insert into `status` (`id`, `status`) values (2, 'Quote Requested');
insert into `status` (`id`, `status`) values (3, 'Quote Sent');
insert into `status` (`id`, `status`) values (4, 'Hired');
insert into `status` (`id`, `status`) values (5, 'Completed');
select * from `status`;
select * from country;

select * from categories;
select * from professionals;
select * from catPro;
insert into `categories` (`category`) values ('Photography');
insert into `categories` (`category`) values ('Videography');
insert into `categories` (`category`) values ('Dentist');
insert into `categories` (`category`) values ('Plumber');
insert into `categories` (`category`) values ('Carpenter');
insert into `categories` (`category`) values ('Real Estate');
insert into `categories` (`category`) values ('Driver');
insert into `categories` (`category`) values ('Tow Truck');
insert into `categories` (`category`) values ('Snow Removal');

insert into `catPro` (`catId`, `proId`) values (1, 1);
insert into `catPro` (`catId`, `proId`) values (2, 1);
insert into `catPro` (`catId`, `proId`) values (3, 2);
insert into `catPro` (`catId`, `proId`) values (1, 2);
select `proId` from `catPro` where `catId`=1;
select `id` from `categories` where `category` like 'Photography';

SELECT DISTINCT * from `professionals` join `catPro` on professionals.id = catPro.proId 
where catPro.catId = 2 or catPro.catId=1 GROUP BY `businessName`;

SELECT DISTINCT * from `professionals` join `catPro` on professionals.id = catPro.proId 
join `categories` on catPro.catId = categories.id where categories.category like 'Dentist' and professionals.city = 'Brandon' GROUP BY `businessName`;