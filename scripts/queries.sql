USE RedeLivrarias;
            
            
# Livros mais vendidos
CREATE VIEW Top3_livros_mais_vendidos AS
	SELECT LE.Livro_ID, L.titulo, COUNT(LE.Livro_ID) AS NrVendas
		FROM LivroEncomenda AS LE
			INNER JOIN Livro AS L
            ON LE.Livro_ID = L.ID
		GROUP BY LE.Livro_ID
        ORDER BY NrVendas DESC
        LIMIT 3;

SELECT * FROM Top3_livros_mais_vendidos;


#Lucro por cada livro vendido
CREATE VIEW vwlucroDeCadaLivro AS
	SELECT L.ID, (L.preco-(FL.preco/FL.quantidade)) AS Lucro
		FROM FornecedorLivro AS FL
			INNER JOIN Livro AS L
            ON FL.Livro_ID = L.ID
		GROUP BY L.ID
        ORDER BY L.ID;
        

#Lucro total de uma encomenda      
CREATE VIEW vwLucroEncomenda AS
	SELECT LE.Encomenda_ID AS Encomenda, SUM(Lu.Lucro) AS Lucro_Total
		FROM LivroEncomenda AS LE
			INNER JOIN (
				SELECT L.ID AS ID, L.titulo AS Titulo, (L.preco-(FL.preco/FL.quantidade)) AS Lucro
					FROM FornecedorLivro AS FL
						INNER JOIN Livro AS L
						ON FL.Livro_ID = L.ID
					GROUP BY L.ID )
			AS Lu
            ON LE.Livro_ID = Lu.ID
		GROUP BY LE.Encomenda_ID
        ORDER BY LE.Encomenda_ID;

     
#Nº de encomendas realizadas no mês Setembro
SELECT E.ID, E.Cliente_NIF AS ClienteNIF, E.data_de_realizacao
	FROM Encomenda AS E
		WHERE MONTH(E.data_de_realizacao) = 8
		ORDER BY E.ID ASC;


#Melhores clientes
SELECT C.NIF, COUNT(LE.Livro_ID) AS nrLivrosComprados
	FROM Cliente AS C
		INNER JOIN Encomenda AS E
		ON E.Cliente_NIF = C.NIF
			INNER JOIN LivroEncomenda AS LE
            ON LE.Encomenda_ID = E.ID
	GROUP BY C.NIF
    ORDER BY nrLivrosComprados DESC
    LIMIT 5;


#calcular o valor faturado num determinado mes
SELECT SUM(preco) AS ValorFaturado
	FROM Encomenda
    WHERE MONTH(data_de_realizacao) = 11;


set sql_mode='';
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));