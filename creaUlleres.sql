CREATE TABLE `optica`.`ulleres` ( `id` INT NOT NULL AUTO_INCREMENT , `codi` INT NOT NULL , `marca` VARCHAR(50) NOT NULL , `model` VARCHAR(50) NOT NULL , `codi_proveidor` INT NOT NULL , `graduaciod` SMALLINT NOT NULL , `graduacioe` SMALLINT NOT NULL , `tipmuntura` VARCHAR(10) NOT NULL , `colmuntura` VARCHAR(15) NOT NULL , `colvidred` VARCHAR(15) NOT NULL , `colvidree` VARCHAR(15) NOT NULL , `preu` SMALLINT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;