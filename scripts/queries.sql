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
        
     
#Encomendas realizadas no mês Setembro
SELECT E.ID, E.Cliente_NIF AS ClienteNIF, E.data_de_realizacao
	FROM Encomenda AS E
		WHERE MONTH(E.data_de_realizacao) = 9
		ORDER BY E.ID ASC;


#Melhores clientes (maior nº de livros comprados)
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

