CREATE TABLE `auta` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `Znacka` varchar,
  `Cena` int,
  `Pocet_KM` int,
  `Rok_vyroby` int,
  `Palivo` char,
  `Vykon` char,
  `Pohon` char,
  `Lokalita` char
);

CREATE TABLE `zakaznik` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `meno` char,
  `priezvisko` char,
  `datum_narodenia` date,
  `bydlisko` char,
  `psc` varchar(255),
  `telefone_cislo` varchar(255)
);

CREATE TABLE `Blok` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `Tovar` char,
  `cena` int,
  `datum_pozicania` date,
  `Mesto` char
);

CREATE TABLE `Sposob_platby` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `Hotovost` char,
  `Prevod_na_ucet` char
);

CREATE TABLE `Predajna` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `auta` char,
  `,
  `zakaznik` char,
  `Sposob_platby` char
);

CREATE TABLE `Account` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `meno` varchar(255),
  `email` varchar(255),
  `login` varchar(255),
  `Sposob_platby` varchar(255),
  `Tovar` varchar(255),
  `blok` varchar(255),
  `auto` varchar(255),
  `predajna` varchar(255)
);

ALTER TABLE `Account` ADD FOREIGN KEY (`meno`) REFERENCES `zakaznik` (`meno`);

ALTER TABLE `Account` ADD FOREIGN KEY (`Sposob_platby`) REFERENCES `Sposob_platby` (`id`);

ALTER TABLE `Account` ADD FOREIGN KEY (`blok`) REFERENCES `Blok` (`id`);

ALTER TABLE `Account` ADD FOREIGN KEY (`auto`) REFERENCES `auta` (`id`);

ALTER TABLE `Account` ADD FOREIGN KEY (`predajna`) REFERENCES `Predajna` (`id`);
mysqlmysqlprojekt