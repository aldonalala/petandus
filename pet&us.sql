CREATE TABLE `User` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`username` varchar(255) NOT NULL UNIQUE,
	`email` varchar(255) NOT NULL UNIQUE,
	`password` varchar(255) NOT NULL,
	`role` varchar(10) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Profil` (
	`userId` INT NOT NULL,
	`emer` varchar(30) NOT NULL,
	`mbiemer` varchar(30) NOT NULL,
	`mosha` INT NOT NULL,
	`foto` varchar(255) NOT NULL,
	`nrtel` INT NOT NULL,
	`qyteti` varchar(20) NOT NULL,
	PRIMARY KEY (`userId`)
);

CREATE TABLE `Post` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`titull` varchar(50) NOT NULL,
	`pershkrim` varchar(255) NOT NULL,
	`foto` varchar(255) NOT NULL,
	`data` DATETIME NOT NULL,
	`autorId` INT NOT NULL,
	`kategoriId` INT NOT NULL,
	`kafshaId` INT NOT NULL,
	`qytetiId` INT(30) NOT NULL,
	`nrtel` INT NOT NULL,
	`email` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Blog` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`titull` varchar(50) NOT NULL,
	`pershkrim` varchar(255) NOT NULL,
	`foto` varchar(255) NOT NULL,
	`data` DATETIME NOT NULL,
	`nrtel` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Kategori` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`emer` varchar(30) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Kafshe` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`emer` varchar(30) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Qytet` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`emer` varchar(30) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Profil` ADD CONSTRAINT `Profil_fk0` FOREIGN KEY (`userId`) REFERENCES `User`(`id`);

ALTER TABLE `Post` ADD CONSTRAINT `Post_fk0` FOREIGN KEY (`autorId`) REFERENCES `User`(`id`);

ALTER TABLE `Post` ADD CONSTRAINT `Post_fk1` FOREIGN KEY (`kategoriId`) REFERENCES `Kategori`(`id`);

ALTER TABLE `Post` ADD CONSTRAINT `Post_fk2` FOREIGN KEY (`kafshaId`) REFERENCES `Kafshe`(`id`);

ALTER TABLE `Post` ADD CONSTRAINT `Post_fk3` FOREIGN KEY (`qytetiId`) REFERENCES `Qytet`(`id`);

