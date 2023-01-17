-- Criação do utilizador 'admin'
CREATE USER 'Maria de Melo'@'localhost';
-- Definição de password
SET PASSWORD FOR 'Maria de Melo'@'localhost' = 'livraria1';
-- Atribuição de privilégios - Dona Maria de Melo 
GRANT ALL ON RedeLivrarias.* TO 'Maria de Melo'@'localhost';

-- Criação do utilizador 'user'
-- Marido
CREATE USER 'João Machado'@'localhost';
SET PASSWORD FOR 'João Machado'@'localhost' = '567890s';
-- Privilégios 
GRANT SELECT, INSERT ON RedeLivrarias.Cliente TO 'João Machado'@'localhost';
GRANT SELECT, INSERT ON RedeLivrarias.Livro TO 'João Machado'@'localhost';

-- Filha 
CREATE USER 'Joana Melo Machado'@'localhost';
SET PASSWORD FOR 'Joana Melo Machado'@'localhost' = '2468';
-- Privilégios 
GRANT SELECT, INSERT ON RedeLivrarias.Cliente TO 'Joana Melo Machado'@'localhost';


-- Equipa de distribuição 
CREATE USER '01'@'localhost';
CREATE USER '02'@'localhost';
CREATE USER '03'@'localhost';
CREATE USER '04'@'localhost';
CREATE USER '05'@'localhost';
-- Previlégios 
GRANT ALL ON RedeLivrarias.Distribuição TO '01'@'localhost';
GRANT ALL ON RedeLivrarias.Distribuição TO '02'@'localhost';
GRANT ALL ON RedeLivrarias.Distribuição TO '03'@'localhost';
GRANT ALL ON RedeLivrarias.Distribuição TO '04'@'localhost';
GRANT ALL ON RedeLivrarias.Distribuição TO '05'@'localhost';

