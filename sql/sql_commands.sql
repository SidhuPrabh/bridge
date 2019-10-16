INSERT INTO `clients`(`name`, `email`, `address`, `pwd`, `phone`, `marketingEmail`, `active`, `points`) VALUES
('Prabh', 'prabh@gmail.com', '12345', '98652351423', TRUE, TRUE, 5);

INSERT INTO `professionals` (businessName, logoURL, address, city, postcode, email, pwd, phone,
personOfContact, webiste, instagram, facebook, youtube, noOfContractsGot, `active`) VALUES
('Prabh Photography', 'abc/asads', 'Tupelo','Winnipeg', 'R2K 3S2', 'prabh@gmail.com', '12345', '2049856352',
'Prabh', 'prabhsidhu.ca', 'insta', 'facebook', 'youtube', '5', TRUE );

INSERT INTO `leads` (`cId`, `bId`, `CatId`, `status`, `city`, `workDetails`, `dateTime`, `isHired`, `quoteRequest`, `quoteSent`)
VALUES (12, 21, 1, 'STARTED', 'Winnipeg', 'work details', 'datetime', 'ishired', 'quoterequested', 'quoteSent' );
SELECT * FROM `cities`;

insert into `status` (`id`, `status`) values (1, 'Generated');
insert into `status` (`id`, `status`) values (2, 'Quote Requested');
insert into `status` (`id`, `status`) values (3, 'Quote Sent');
insert into `status` (`id`, `status`) values (4, 'Hired');
insert into `status` (`id`, `status`) values (5, 'Completed');
select * from `status`;
select * from country;