--
-- clients
CREATE TABLE `optica`.`clients` ( `codi` INT NOT NULL AUTO_INCREMENT , `nom` VARCHAR(100) NOT NULL , `carrer` VARCHAR(100) NOT NULL , `numero` INT NOT NULL , `pis` SMALLINT NOT NULL , `porta` CHAR(5) NOT NULL , `codi_postal` CHAR(5) NOT NULL , `ciutat` VARCHAR(100) NOT NULL , `pais` VARCHAR(100) NOT NULL , `telefon` VARCHAR(9) NOT NULL , `mail` VARCHAR(100) NOT NULL , `dataalta` DATE NOT NULL , `clientrecomana` INT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
INSERT INTO `clients` (`codi`, `nom`, `carrer`, `numero`, `pis`, `porta`, `codi_postal`, `ciutat`, `pais`, `telefon`, `mail`, `dataalta`, `clientrecomana`) VALUES 
(NULL, '1', 'Pere Pi', 'Almansa ', '32', '4', 'V', '03558', 'Alacant', 'Espanya', '665889922', 'pere@yahoo.es', '2019-11-05', ''),
(NULL, '2', 'Anton Gimenez', 'Arago', '224', '6', 'A', '08020', 'Barcelona', 'Espanya', '66484422', 'barna@gmail.com', '2020-12-22', ''),
(NULL, '3', 'Maria Gimenez', 'Paralel', '2', '3', '', '08026', 'Barcelona', 'Espanya', '666645772', 'altre@yahoo.com', '2020-12-22', ''),
(NULL, '4', 'Josep Ribas', 'Del Call', '12', '1', '', '17020', 'Girona', 'Espanya', '937558855', 'narcis@yahoo.es', '2020-12-22', '2'),
(NULL, '5', 'Mia Font', 'Gran Via', '33', '2', 'B', '28020', 'Madrid', 'Espanya', '915665822', 'prod@yahoo.com', '2020-12-22', ''),
(NULL, '6', 'Carlota Puig', 'Del Mar', '335', '6', 'H', '08420', 'Sant Pol', 'Espanya', '60483422', 'ferrer@yahoo.es', '2020-12-22', ''),
(NULL, '7', 'Rebeca Carba', 'Babieca', '45', '3', '', '36020', 'Valladolid', 'Espanya', '28584422', 'gual@gmail.com', '2020-12-22', '3'),
(NULL, '8', 'Mireia Pinya', 'Girondins', '98', '4', '', '24020', 'Perpinya', 'France', '6688984422', 'gaba@yahoo.fr', '2020-12-22', ''),
(NULL, '9', 'Sergi Nuñez', 'Trinca', '66', '65', '', '08320', 'Canet', 'Espanya', '935666', 'sergi@gmail.com', '2020-12-22', '');
--
-- empleats
CREATE TABLE `optica`.`empleats` (`codi` INT NOT NULL AUTO_INCREMENT , `nom` VARCHAR(100) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
INSERT INTO `empleats` (`codi`, `nom`) VALUES 
(NULL, '1', 'Ramiro Bebien'), 
(NULL, '2 ', 'Blanca González'),
(NULL, '3', 'Carla Lagavi'), 
(NULL, '4', 'Julian Detolosa');
--
-- proveidors
CREATE TABLE `optica`.`proveidors` (`codi` INT NOT NULL AUTO_INCREMENT , `nom` VARCHAR(100) NOT NULL , `carrer` VARCHAR(100) NOT NULL , `numero` INT NOT NULL , `pis` SMALLINT NOT NULL , `porta` CHAR(5) NOT NULL , `codi_postal` CHAR(5) NOT NULL , `ciutat` VARCHAR(100) NOT NULL , `pais` VARCHAR(100) NOT NULL , `telefon` VARCHAR(9) NOT NULL , `fax` VARCHAR(9) NOT NULL , `nif` VARCHAR(10) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
INSERT INTO `proveidors` (`codi`, `nom`, `carrer`, `numero`, `pis`, `porta`, `codi_postal`, `ciutat`, `pais`, `telefon`, `fax`, `nif`) VALUES 
(NULL, '1', 'Ulleres de fusta', 'Manso', '50', '1', 'A', '08015', 'Barcelona', 'Espanya', '934506622', '934506623', 'A556566588'), 
(NULL, '2', 'Inghey Shang Lunettes', 'Mao She Thung', '6', '', '', '55889', 'Shangai', 'Xina', '665884455', '4582255', 'X56555GH'),
(NULL, '3', 'Moda Italiana', 'San Genaro', '25', '25', 'C', '66558', 'Napols', 'Italia', '66588952', '977222255', 'IT565589'), 
(NULL, '4', 'Gafas SA de CV', 'Plaza de los Mariachis', '40', '6', 'm', '88655', 'Toluca de Lerdo', 'Mexico', '55586885', '55586886', 'MEX55658');
--
-- ulleres
CREATE TABLE `optica`.`ulleres` (`codi` INT NOT NULL AUTO_INCREMENT , `marca` VARCHAR(50) NOT NULL , `model` VARCHAR(50) NOT NULL , `codi_proveidor` INT NOT NULL , `graduaciod` SMALLINT NOT NULL , `graduacioe` SMALLINT NOT NULL , `tipmuntura` VARCHAR(10) NOT NULL , `colmuntura` VARCHAR(15) NOT NULL , `colvidred` VARCHAR(15) NOT NULL , `colvidree` VARCHAR(15) NOT NULL , `preu` SMALLINT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
INSERT INTO `ulleres` (`codi`, `marca`, `model`, `codi_proveidor`, `graduaciod`, `graduacioe`, `tipmuntura`, `colmuntura`, `colvidred`, `colvidree`, `preu`) VALUES 
(NULL, '11', 'Desol', 'Pilot', '1', '2.4', '2', 'Pasta', 'Marron', 'Blue', 'Blue', '125'), 
(NULL, '12', 'Deveure', 'Secretari', '1', '6', '5.5', 'Metalica', 'Crom', 'Transparent', 'Transparent', '256'),
(NULL, '21', 'Raiban', 'Predator II', '2', '0', '0', 'Pasta', 'negre', 'brown', 'brown', '95'), 
(NULL, '31', 'Boss', 'Elegant', '3', '0', '0', 'pasta', 'blanca', 'red', 'red', '125.50'), 
(NULL, '41', 'Laramie', 'Fly', '4', '6', '3', 'flotant', 'gris', 'gris', 'gris', '254');
-- vendes
CREATE TABLE `optica`.`vendes` (`ticket` INT NOT NULL  AUTO_INCREMENT , `codi_client` INT NOT NULL , `codi_ullera` INT NOT NULL , `datavenda` DATE NOT NULL , `codi_empleat` INT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB; 
INSERT INTO `vendes` (`ticket`, `codi_client`, `codi_ullera`, `datavenda`, `codi_empleat`) VALUES 
(NULL, '21566', '1', '11', '2021-11-02', '1'),
(NULL, '21567', '3', '11', '2021-11-02', '3'),
(NULL, '21568', '4', '21', '2021-11-02', '4'),
(NULL, '21569', '5', '21', '2021-11-02', '1'),
(NULL, '21570', '6', '11', '2021-11-02', '1'),
(NULL, '22333', '6', '31', '2021-11-03', '2'),
(NULL, '22334', '7', '41', '2021-11-03', '2'),
(NULL, '22335', '7', '41', '2021-11-03', '2'),
(NULL, '22336', '8', '11', '2021-11-03', '3'),
(NULL, '22337', '9', '12', '2021-11-03', '3'),
(NULL, '22338', '1', '11', '2021-11-03', '3'),
(NULL, '22778', '5', '21', '2021-11-04', '4'),
(NULL, '22779', '6', '21', '2021-11-04', '1'),
(NULL, '22780', '7', '21', '2021-11-04', '4'),
(NULL, '22781', '8', '31', '2021-11-04', '2'),
(NULL, '22782', '9', '31', '2021-11-04', '3'),
(NULL, '22783', '2', '31', '2021-11-04', '3'),
(NULL, '22783', '3', '31', '2021-11-04', '4');
--
-- querys
select * from vendes where codi_client = '7';
select codi_empleat, codi_ullera, count(*) from vendes group by codi_empleat, codi_ullera order by codi_empleat, codi_ullera;
select proveidors.nom, vendes.codi_ullera, count(*) from proveidors, vendes, ulleres where vendes.codi_ullera = ulleres.codi and ulleres.codi_proveidor = proveidors.codi group by vendes.codi_ullera order by proveidors.nom, vendes.codi_ullera;

