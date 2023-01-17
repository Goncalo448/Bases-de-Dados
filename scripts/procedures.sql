USE RedeLivrarias;

#DROP FUNCTION calcula_preco_encomenda;
DELIMITER $$
CREATE FUNCTION calcula_preco_encomenda(id_encomenda INT) 
RETURNS DECIMAL(6,2)
DETERMINISTIC
BEGIN
	DECLARE sum_preco DECIMAL(6,2) DEFAULT 0;
    DECLARE preco_final DECIMAL(6,2) DEFAULT 0;
    DECLARE iva DECIMAL(6,2) DEFAULT 0;
    
    SELECT IVA INTO iva 
		FROM Encomenda
        WHERE ID = id_encomenda;
    
    SELECT SUM(L.preco) INTO sum_preco
		FROM LivroEncomenda AS LE
			INNER JOIN Livro AS L
            ON L.ID = LE.Livro_ID
		WHERE LE.Encomenda_ID = id_encomenda;
        
	SET preco_final = sum_preco + (sum_preco*iva);
    RETURN preco_final;
END; $$


#atualiza preço de uma encomenda
DELIMITER $$
CREATE PROCEDURE atualiza_preco_encomenda(IN id_encomenda INT)
BEGIN
	UPDATE Encomenda
		SET preco = calcula_preco_encomenda(ID)
		WHERE ID = id_encomenda;
END; $$


#trigger que atualiza o stock de cada livro sempre que chegam livros provenientes de um fornecedor
DELIMITER $$
CREATE TRIGGER atualiza_stock_apos_receita
	AFTER INSERT ON FornecedorLivro
    FOR EACH ROW
BEGIN
	UPDATE Livro
        SET stock = stock + NEW.quantidade
        WHERE ID = NEW.Livro_ID;
END; $$


#procedimento que atualiza o stock de cada livro consoante as encomendas
DELIMITER $$
CREATE TRIGGER atualiza_stock_apos_venda
	AFTER INSERT ON LivroEncomenda
    FOR EACH ROW
BEGIN 
	UPDATE Livro
		SET stock = stock - 1
        WHERE ID = NEW.Livro_ID;
END; $$


CALL atualiza_preco_encomenda(1);
CALL atualiza_preco_encomenda(2);
CALL atualiza_preco_encomenda(3);
CALL atualiza_preco_encomenda(4);
CALL atualiza_preco_encomenda(5);
CALL atualiza_preco_encomenda(6);
CALL atualiza_preco_encomenda(7);
CALL atualiza_preco_encomenda(8);
