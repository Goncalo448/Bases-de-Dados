-- -----------------------------------------------------
-- Schema RedeLivrarias
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `RedeLivrarias`
DEFAULT CHARACTER SET utf8;
USE `RedeLivrarias`;
#DROP SCHEMA RedeLivrarias;

-- -----------------------------------------------------
-- Table `RedeLivrarias`.`Distribuição`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedeLivrarias`.`Distribuicao`(
`ID` INT NOT NULL,
`matricula` VARCHAR(45) NOT NULL,
`equipa` VARCHAR(45) NOT NULL,
`custo_envio` DECIMAL(6, 2),

PRIMARY KEY (`ID`));

-- -----------------------------------------------------
-- Table `RedeLivrarias`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedeLivrarias`.`Cliente`(
`NIF` INT NOT NULL,
`idade` INT NOT NULL,
`nome` VARCHAR(45) NOT NULL,

PRIMARY KEY (`NIF`));

-- -----------------------------------------------------
-- Table `RedeLivrarias`.`Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedeLivrarias`.`Fornecedor`(
`contribuinte` INT NOT NULL,
`email` VARCHAR(45) NOT NULL,
`codigo_postal` VARCHAR(45) NOT NULL,
`localidade` VARCHAR(45) NOT NULL,
`rua` VARCHAR(45) NOT NULL,

PRIMARY KEY (`contribuinte`));


-- -----------------------------------------------------
-- Table `RedeLivrarias`.`Recomendou`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedeLivrarias`.`Recomendou`(
`descricao` VARCHAR(45) NOT NULL,
`Cliente_recomenda` INT NOT NULL,
`Cliente_recomendado` INT NOT NULL,

PRIMARY KEY (`Cliente_recomenda`, `Cliente_recomendado`),

CONSTRAINT `fk_Cliente_Recomenda` FOREIGN KEY (`Cliente_recomenda`) REFERENCES `RedeLivrarias`.`Cliente` (`NIF`),
CONSTRAINT `fk_Cliente_Recomendado` FOREIGN KEY (`Cliente_recomendado`) REFERENCES `RedeLivrarias`.`Cliente` (`NIF`));


-- -----------------------------------------------------
-- Table `RedeLivrarias`.`Encomenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedeLivrarias`.`Encomenda`(
`ID` INT NOT NULL,
`localidade` VARCHAR(45) NOT NULL,
`rua` VARCHAR(45) NOT NULL,
`codigo_postal` VARCHAR(45) NOT NULL,
`preco` DECIMAL(6, 2) NOT NULL,
`data_de_realizacao` DATETIME NOT NULL,
`IVA` INT NOT NULL,
`em_processamento` VARCHAR(1) NOT NULL,
`em_espera` VARCHAR(1) NOT NULL,
`enviada` VARCHAR(1) NOT NULL,
`entregue` VARCHAR(1) NOT NULL,
`Cliente_NIF` INT NOT NULL,
`Distribuicao_ID` INT NOT NULL,

PRIMARY KEY (`ID`, `Cliente_NIF`, `Distribuicao_ID`),

CONSTRAINT `fk_Encomenda_Cliente` FOREIGN KEY (`Cliente_NIF`) REFERENCES `RedeLivrarias`.`Cliente` (`NIF`),
CONSTRAINT `fk_Encomenda_Distribuicao` FOREIGN KEY (`Distribuicao_ID`) REFERENCES `RedeLivrarias`.`Distribuicao` (`ID`));


-- -----------------------------------------------------
-- Table `RedeLivrarias`.`Livro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedeLivrarias`.`Livro`(
`ID` INT NOT NULL,
`preco` DECIMAL(6, 2) NOT NULL,
`titulo` VARCHAR(45) NOT NULL,
`stock` INT NOT NULL,

PRIMARY KEY (`ID`));

-- -----------------------------------------------------
-- Table `RedeLivrarias`.`LivroEncomenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedeLivrarias`.`LivroEncomenda`(
`Livro_ID` INT NOT NULL,
`Encomenda_ID` INT NOT NULL,

PRIMARY KEY (`Livro_ID`, `Encomenda_ID`),

CONSTRAINT `fk_Livro_Encomenda` FOREIGN KEY (`Livro_ID`) REFERENCES `RedeLivrarias`.`Livro` (`ID`),
CONSTRAINT `fk_Encomenda_Livro` FOREIGN KEY (`Encomenda_ID`) REFERENCES `RedeLivrarias`.`Encomenda` (`ID`));


-- -----------------------------------------------------
-- Table `RedeLivrarias`.`FornecedorLivro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedeLivrarias`.`FornecedorLivro`(
`data` DATETIME NOT NULL,
`preco` DECIMAL(6, 2) NOT NULL,
`quantidade` INT NOT NULL,
`Fornecedor_contribuinte` INT NOT NULL,
`Livro_ID` INT NOT NULL,

PRIMARY KEY (`Fornecedor_contribuinte`, `Livro_ID`),

CONSTRAINT `fk_Fornecedor_Livro` FOREIGN KEY (`Fornecedor_contribuinte`) REFERENCES `RedeLivrarias`.`Fornecedor` (`contribuinte`),
CONSTRAINT `fk_Livro_Fornecedor` FOREIGN KEY (`Livro_ID`) REFERENCES `RedeLivrarias`.`Livro` (`ID`));


-- -----------------------------------------------------
-- Table `RedeLivrarias`.`ContactosCliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedeLivrarias`.`ContactosCliente`(
`contacto` VARCHAR(45) NOT NULL,
`Cliente_NIF` INT NOT NULL,

PRIMARY KEY (`contacto`, `Cliente_NIF`),

CONSTRAINT `fk_Contactos_Cliente` FOREIGN KEY (`Cliente_NIF`) REFERENCES `RedeLivrarias`.`Cliente` (`NIF`));


-- -----------------------------------------------------
-- Table `RedeLivrarias`.`ContactosFornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedeLivrarias`.`ContactosFornecedor`(
`contacto` VARCHAR(45) NOT NULL,
`Fornecedor_Contribuinte` INT NOT NULL,

PRIMARY KEY (`contacto`, `Fornecedor_Contribuinte`),

CONSTRAINT `fk_Contactos_Fornecedor` FOREIGN KEY (`Fornecedor_Contribuinte`) REFERENCES `RedeLivrarias`.`Fornecedor` (`contribuinte`));

