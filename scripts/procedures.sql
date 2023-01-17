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
DROP PROCEDURE atualiza_preco_encomenda;

#procedimento que atualiza o stock de cada livro consoante as receitas por parte dos fornecedores
DELIMITER $$
CREATE PROCEDURE atualiza_stock_apos_receita(IN idlivro INT)
BEGIN
	UPDATE Livro
		SET stock = stock + (SELECT SUM(FL.quantidade) 
								FROM FornecedorLivro AS FL
								WHERE FL.Livro_ID = ID)
		WHERE idlivro = ID;
END; $$


#procedimento que atualiza o stock de cada livro consoante as encomendas
DELIMITER $$
CREATE PROCEDURE atualiza_stock_apos_venda(IN idlivro INT)
BEGIN
	UPDATE Livro
		SET stock = stock - (SELECT COUNT(LE.Livro_ID)
								FROM LivroEncomenda AS LE
                                WHERE LE.Livro_ID = idlivro)
		WHERE idlivro = ID;
END; $$


CALL atualiza_stock_apos_receita(1);
CALL atualiza_stock_apos_receita(2);
CALL atualiza_stock_apos_receita(3);
CALL atualiza_stock_apos_receita(4);
CALL atualiza_stock_apos_receita(5);
CALL atualiza_stock_apos_receita(6);
CALL atualiza_stock_apos_receita(7);
CALL atualiza_stock_apos_receita(8);
CALL atualiza_stock_apos_receita(9);
CALL atualiza_stock_apos_receita(10);

CALL atualiza_stock_apos_venda(1);
CALL atualiza_stock_apos_venda(2);
CALL atualiza_stock_apos_venda(3);
CALL atualiza_stock_apos_venda(4);
CALL atualiza_stock_apos_venda(5);
CALL atualiza_stock_apos_venda(6);
CALL atualiza_stock_apos_venda(7);
CALL atualiza_stock_apos_venda(8);
CALL atualiza_stock_apos_venda(9);
CALL atualiza_stock_apos_venda(10);

CALL atualiza_preco_encomenda(1);
CALL atualiza_preco_encomenda(2);
CALL atualiza_preco_encomenda(3);
CALL atualiza_preco_encomenda(4);
CALL atualiza_preco_encomenda(5);
CALL atualiza_preco_encomenda(6);
CALL atualiza_preco_encomenda(7);
CALL atualiza_preco_encomenda(8);

