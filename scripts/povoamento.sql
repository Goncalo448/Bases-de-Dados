USE RedeLivrarias;


-- -----------------------------------------------------
-- Povoamento da tabela "Livro"
-- -----------------------------------------------------
INSERT INTO Livro
		(ID, titulo, preco, stock)
		VALUES
				('01', 'Amor de Perdição', '9.70', '200'),
				('02', 'Os Maias', '13.50', '250'),
				('03', 'Os Lusíadas', '20', '270'),
				('04', 'O Sistema da Chave Mestra', '12.90', '100'),
				('05', 'Hábitos Atómicos', '15.21', '210'),
				('06', 'Isto Acaba', '17.99', '300'),
				('07', 'Desperte o Gigante que há em Si', '15.05', '180'),
				('08', 'Inteligência Emocional', '14.95', '205'),
				('09', 'Gestão da Emoção', '10.85', '308'),
				('10',  'Amor', '18.45', '215'),
				('11', 'Descomplica', '16.90', '190'),
				('12', 'Como se Fosse a Primeira Vez', '15.21', '208'),
				('13', 'O Segredo', '15.90', '308'),
				('14', 'O Carteiro de Auschwitz', '17.45', '400'),
				('15', 'Harry Potter e a Pedra Filosofa', '18.50', '350'),
				('16', 'Harry Potter e a Camara dos Segregos', '14.00', '350'),
				('17', 'Harry Potter e o Prisionerio de Azkaban', '17.50', '350'),
				('18', 'Harry Potter e o Calice de Fogo', '14.50', '350'),
				('19', 'Harry Potter e a Ordem da Fénix', '14.00', '350'),
				('20', 'Harry Potter e o Principe Misterioso', '15.00', '350'),
				('21', 'Harry Potter e os Talismas da Morte', '19.00', '350'),
				('22', 'Senhor dos Anéis', '20.00', '300'),
				('23', 'Anitta na Escola', '8.50', '150'),
				('24', 'Anitta e os Amigos', '7.00', '160'),
				('25', 'Como Não Morrer', '15.00', '160'),
				('26', 'Linguagem C', '25.00', '300'),
				('27', 'Romeu e Julieta', '15.00', '300'),
				('28', 'A Quinta dos Animais', '17.00', '250'),
				('29', 'A Culpa é das Estrelas', '15.50', '300'),
				('30', 'Um Crime no Expresso do Oriente', '17.50', '300'), 
				('31', 'A Última Música', '15.50', '290'),
				('32', 'Comer, Orar, Amar', '17.50', '300'),
				('33', 'Factfulness', '20.50', '300'),
				('34', 'Amor Cruel', '17.50', '150'),
				('35', 'Homo Deus', '21.50', '280'),
				('36', 'A Cabana', '12.50', '200'),
				('37', 'Sapiens', '16.50', '230'),
				('38', 'Isto acaba aqui', '16.50', '150'),
				('39', 'As upstarts', '22.50', '200'),
				('40', 'A Chave do Sucesso', '18.50', '200'),
				('41', 'Juro Amar-te', '14.95', '275'),
				('42', 'Como Criar um Novo Eu', '13.52', '245'),
				('43', 'Como Fazer Amigos', '16.90', '120'),
				('44', 'Todos os Dias São Para Sempre', '16.90', '260'),
				('45', 'Pense e Fique Rico', '15.50', '300'),
				('46', 'A Estrela', '12.98', '110'),
				('47', 'Liberta-te de Pensamentos Tóxicos', '15.90', '200'),
				('48', 'Orgulho e Perconceito', '14.80', '206'),
				('49', 'A Terra Natal', '12.15', '245'),
				('50', 'Família', '13.45', '230');
                

 -- ----------------------------------------------------------
-- Povoamento da tabela "Fornecedor"
-- ----------------------------------------------------------       
INSERT INTO Fornecedor
    	(rua, codigo_postal, localidade, contribuinte, email)
    	VALUES 
    			('Rua de Santa Maria','4800-362','Guimarães','11111111','wook@gmail.com'),
    			('Rua Ferreira Borges','3000-122','Coimbra','22222222','bookportugal@gmail.com'),
    			('Rua Nova de Trigal','4700-002','Braga','33333333','livrosbraga@gmail.com'),
    			('Rua Nova de Vilar','3800-410','Aveiro','44444444','livreiro@gmail.com'),
    			('Rua das Flores','4000-387','Porto','55555555','portoeditora@outlook.com');        



-- ----------------------------------------------------------
-- Povoamento da tabela "Cliente"
-- ----------------------------------------------------------
INSERT INTO Cliente
    	(nome, NIF, idade)
    	VALUES 
    			('Joaquim Maria Custódio Pires','00000001','21'),
    			('Maria Francisca Mendes Lemos','00000002','27'),
    			('Pedro Filipe Silva Félix','00000003','20'),
    			('João Félix Sequeira','00000004','20'),
    			('Gonçalo Matias Ramos ','00000005','21'),
    			('Rúben Santos Gato Alves Dias','00000006','23'),
    			('António de Albuquerque Tavares da Silva','00000007','29'),
    			('Enzo Jeremías Fernández','00000008','47'),
    			('Nicolás Hernán Gonzalo Otamendi','00000009','67'),
    			('João Mário Naval da Costa Eduardo','00000010','57'),
    			('Cristiano Ronaldo dos Santos Aveiro','00000011','33'),
    			('Diogo Meireles Costa','00000012','30'),
    			('Rui Pedro dos Santos Patrício','00000013','41'),
    			('Nuno Alexandre Tavares Mendes','00000014','54'),
    			('Raphaël Adelino José Guerreiro','00000015','48'),
    			('Danilo Luiz da Silva','00000016','42'),
    			('João Cancelo','00000017','17'),
    			('José Diogo Dalot','00000018','31'),
    			('Bruno Miguel Borges Fernandes','00000019','29'),
    			('Bernardo Mota Veiga de Carvalho e Silva','00000020','27'),
    			('Ricardo Jorge Luz Horta','00000021','33'),
    			('João Maria Lobo Alves Palhinha Gonçalves','00000022','35'),
    			('Matheus Luiz Nunes','00000023','24'),
    			('Rafael Alexandre Conceição Leão','00000024','45'),
    			('José Pedro Malheiro de Sá','00000025','38'),
    			('Rúben Diogo da Silva Neves','00000026','26');	   			 	
 

-- ----------------------------------------------------------
-- Povoamento da tabela "Distribuição"
-- ----------------------------------------------------------   
INSERT INTO Distribuicao
    	(ID, matricula, equipa, custo_envio)
    	VALUES 
				(1, 'AA11AA', '01', '2.00'),
				(2, 'AA22AA', '02', '2.00'),
				(3, 'AA33AA', '03', '1.00'),
				(4, 'AA44AA', '04', '1.00'),
				(5, 'AA55AA', '05', '5.00'),
				(6, 'AA33AA', '03', '0.00'),
				(7, 'AA44AA', '04', '3.00'),
				(8, 'AA55AA', '05', '1.00'),
				(9, 'AA11AA', '01', '2.00'),
				(10, 'AA11AA', '01', '4.00'),
				(11, 'AA22AA', '02', '1.00'),
				(12, 'AA33AA', '03', '3.00'),
				(13, 'AA11AA', '01', '1.00'),
				(14, 'AA55AA', '05', '0.00'),
				(15, 'AA33AA', '03', '0.00'),
				(16, 'AA44AA', '04', '2.00'),
				(17, 'AA22AA', '02', '3.00'),
				(18, 'AA44AA', '04', '2.00'),
				(19, 'AA22AA', '02', '0.00'),
				(20, 'AA11AA', '01', '1.00'),
				(21, 'AA55AA', '05', '3.00'),
				(22, 'AA22AA', '02', '0.00'),
				(23, 'AA11AA', '01', '1.00'),
				(24, 'AA55AA', '05', '2.00'),
				(25, 'AA33AA', '03', '4.00'),
				(26, 'AA11AA', '01', '2.00'),
				(27, 'AA44AA', '04', '3.00'),
				(28, 'AA55AA', '05', '1.00'),
				(29, 'AA44AA', '04', '1.00'),
				(30, 'AA11AA', '01', '0.00');
 
   			 	
-- -----------------------------------------------------
-- Povoamento da tabela "Encomenda"
-- -----------------------------------------------------
INSERT INTO Encomenda 
		(ID, localidade, rua, codigo_postal, preco, data_de_realizacao, IVA, em_processamento, em_espera, enviada, entregue, Cliente_NIF, Distribuicao_ID)
		VALUES
				('1', 'Vizela', 'Rua do Rio Vizela', '4815-423', '0.0', '2022-11-01', 0.06, 'N', 'N', 'N', 'N', '00000001', 01),
				('2', 'Vizela', 'Rua do Café', '4815-402', '0.0', '2022-10-21', '0.06', 'N', 'N', 'N', 'N', '00000011', 02),
				('3', 'Braga', 'Rua da Palmeira', '4700-481', '0.0', '2022-09-08', '0.06', 'N', 'N', 'N', 'N', '00000009', 03),
				('4', 'Braga', 'Rua de São Pedro', '4700-860', '0.0', '2022-11-13', '0.06', 'N', 'N', 'N', 'N', '00000021', 04),
				('5', 'Vizela', 'Rua do Rio Vizela', '4815-423', '0.0', '2022-12-20', '0.06', 'N', 'N', 'N', 'N', '00000001', 05),
				('6', 'Guimarães', 'Travessia 1 do Salgueiral', '4805-029', '0.0', '2022-09-01', '0.06', 'N', 'N', 'N', 'N', '00000002', 06),
				('7', 'Vizela', 'Rua do Café', '4815-402', '0.0', '2022-12-13', '0.06', 'N', 'N', 'N', 'N', '00000011', 07),
				('8', 'Lisboa', 'Rua do Camarate', '2680-223', '0.0', '2022-08-19', '0.06', 'N', 'N', 'N', 'N', '00000023', 08),
				('9', 'Porto', 'Rua da Boa Nova', '3015-333', '0.0', '2022-07-24', '0.06', 'N', 'N', 'N', 'N', '00000013', 09),
				('10', 'Porto', 'Rua da Gente Boa', '4815-423', '0.0', '2022-11-01', '0.06', 'N', 'N', 'N', 'N', '00000016', 10),
				('11', 'Vizela', 'Rua da Árvore', '4815-237', '0.0', '2022-11-01', '0.06', 'N', 'N', 'N', 'N', '00000003', 11),
				('12', 'Fafe', 'Rua do Casal', '5070-320', '0.0', '2022-10-18', '0.06', 'N', 'N', 'N', 'N', '00000007', 12),
				('13', 'Lisboa', 'Rua da Guarda', '2680-223', '0.0', '2022-08-05', '0.06', 'N', 'N', 'N', 'N', '00000012', 13),
				('14', 'Vizela', 'Rua do Rio Vizela', '4815-423', '0.0', '2022-09-11', '0.06', 'N', 'N', 'N', 'N', '00000001', 14),
				('15', 'Guimarães', 'Rua dos Amigos', '4805-123', '0.0', '2022-07-01', '0.06', 'N', 'N', 'N', 'N', '00000005', 15),
				('16', 'Guimarães', 'Rua do Avante', '2222-333', '0.0', '2022-10-07', '0.06', 'N', 'N', 'N', 'N', '00000008', 16),
				('17', 'Guimarães', 'Rua da Igreja', '2222-111', '0.0', '2022-10-15', '0.06', 'N', 'N', 'N', 'N', '00000018', 17),
				('18', 'Ovar', 'Rua do Penedo', '2222-444', '0.0', '2022-10-29', '0.06', 'N', 'N', 'N', 'N', '00000022', 18),
				('19', 'Freixo', 'Rua do Sousa', '2222-555', '0.0', '2022-04-07', '0.06', 'N', 'N', 'N', 'N', '00000015', 19),
				('20', 'Lisboa', 'Rua 25 Abril', '2222-666', '0.0', '2022-05-04', '0.06', 'N', 'N', 'N', 'N', '00000014', 20),
				('21', 'Viseu', 'Rua 1 Maio', '2222-777', '0.0', '2022-02-07', '0.06', 'N', 'N', 'N', 'N', '00000017', 21),
				('22', 'Amarante', 'Rua 1 Novembro', '2222-888', '0.0', '2022-10-07', '0.06', 'N', 'N', 'N', 'N', '00000024', 22),
				('23', 'Taipas', 'Rua 8 Dezembro' ,'2222-999', '0.0', '2022-01-18', '0.06', 'N', 'N', 'N', 'N', '00000025', 23),
				('24', 'Famalicão', 'Rua 15 Agosto', '3333-111', '0.0', '2022-02-20', '0.06', 'N', 'N', 'N', 'N', '00000026', 24),
				('25', 'Viana do Castelo', 'Rua 10 Junho', '3333-222', '0.0', '2022-02-19', '0.06', 'N', 'N', 'N', 'N', '00000004', 25),
				('26', 'Amares', 'Rua 4 Julho', '3333-444', '0.0', '2022-07-10', '0.06', 'N', 'N', 'N', 'N', '00000006', '26'),
				('27', 'Portimão', 'Rua da Republica', '3333-555', '0.0', '2022-06-26', '0.06', 'N', 'N', 'N', 'N', '00000010', 27),
				('28', 'Setubal', 'Rua da Monarquia', '3333-666', '0.0', '2022-06-28', '0.06', 'N', 'N', 'N', 'N', '00000020', 28),
				('29', 'Leiria', 'Rua de Lisboa', '3333-777', '0.0', '2022-05-13', '0.06', 'N', 'N', 'N', 'N', '00000015', 29),
				('30', 'Lamego', 'Rua da Cabra', '3333-888', '0.0', '2022-02-13', '0.06', 'N', 'N', 'N', 'N', '00000025', 30);
                
                
-- ----------------------------------------------------------
-- Povoamento da tabela "FornecedorLivro"
-- ----------------------------------------------------------
INSERT INTO FornecedorLivro
        (Fornecedor_contribuinte, Livro_ID, data, quantidade, preco)
        VALUES
        		('11111111', '01', '2022-01-03', '200', '1250.00'),
        		('11111111', '02', '2022-01-04', '250', '2400.00'),
        		('22222222', '03', '2022-01-04', '135', '2328.75'),
        		('55555555', '03', '2022-01-04', '135', '2328.75'),
        		('55555555', '04', '2022-01-10', '100', '900.00'),
        		('55555555', '05', '2022-01-11', '210', '2517.90'),
        		('44444444', '06', '2022-01-11', '300', '3975.00'),
        		('33333333', '07', '2022-01-13', '180', '2160.00'),
        		('44444444', '08', '2022-01-14', '205', '2306.25'),
        		('44444444', '09', '2022-01-15', '308', '2156.00'),
        		('11111111', '10', '2022-01-16', '215', '3222.85'),
        		('33333333', '11', '2022-01-16', '190', '2468.10'),
        		('55555555', '12', '2022-01-17', '208', '2548.00'),
        		('11111111', '13', '2022-01-17', '308', '3773.00'),
        		('22222222', '14', '2022-01-19', '400', '5996.00'),
        		('33333333', '15', '2022-01-20', '350', '5337.50'),
        		('33333333', '16', '2022-01-22', '350', '3972.50'),
        		('22222222', '17', '2022-01-24', '350', '4987.50'),
        		('55555555', '18', '2022-01-28', '350', '3937.50'),
        		('22222222', '19', '2022-02-01', '350', '3850.00'),
        		('22222222', '20', '2022-02-01', '350', '4200.00'),
        		('22222222', '21', '2022-02-01', '350', '5246.50'),
        		('22222222', '22', '2022-02-02', '300', '4575.00'),
        		('11111111', '23', '2022-02-03', '150', '787.50'),
        		('11111111', '24', '2022-02-03', '160', '638.40'),
        		('44444444', '25', '2022-02-06', '160', '2184.00'),
        		('11111111', '26', '2022-05-09', '300', '5200.00'),
        		('33333333', '27', '2022-05-14', '300', '3450.00'),
        		('33333333', '28', '2022-05-15', '200', '2900.00'),
        		('44444444', '28', '2022-05-15', '50', '750.00'),
        		('11111111', '29', '2022-05-17', '300', '3600.00'),
        		('11111111', '30', '2022-04-17', '300', '4350.00'),
        		('55555555', '31', '2022-03-28', '290', '3480.00'),
        		('11111111', '32', '2022-03-13', '300', '4575.00'),
        		('22222222', '33', '2022-05-13', '300', '5385.00'),
        		('33333333', '34', '2022-05-17', '150', '2248.50'),
        		('44444444', '35', '2022-06-23', '80', '1279.20'),
        		('11111111', '35', '2022-03-13', '200', '3198.00'),
        		('11111111', '36', '2022-07-18', '200', '1800.00'),
        		('55555555', '37', '2022-03-13', '230', '2987.70'),
        		('33333333', '38', '2022-03-13', '150', '1798.50'),
        		('11111111', '39', '2022-04-13', '200', '3600.00'),
        		('22222222', '40', '2022-04-11', '200', '3050.00'),
        		('22222222', '41', '2022-06-11', '200', '2000.00'),
        		('44444444', '41', '2022-04-11', '75', '768.75'),
        		('55555555', '42', '2022-04-10', '245', '2445.10'),
        		('33333333', '43', '2022-07-21', '120', '1560.00'),
        		('55555555', '44', '2022-04-22', '260', '3377.40'),
        		('22222222', '45', '2022-05-06', '300', '3375.00'),
        		('11111111', '46', '2022-08-19', '110', '988.90'),
        		('11111111', '47', '2022-08-19', '200', '2640.00'),
        		('22222222', '48', '2022-05-30', '100', '1199.00'),
        		('44444444', '48', '2022-05-21', '106', '1270.94'),
        		('33333333', '49', '2022-04-11', '245', '2202.55'),
        		('33333333', '50', '2022-08-11', '230', '2357.50');


-- ------------------------------------------------------------
-- Povoamento da tabela "LivroEncomenda"
-- ------------------------------------------------------------
INSERT INTO LivroEncomenda
        (Livro_ID, Encomenda_ID)
        VALUES
            ('09', '01'),
            ('18', '01'),
            ('20', '01'),
            ('15', '02'),
            ('16', '02'),
            ('17', '02'),
            ('18', '02'),
            ('19', '02'),
            ('20', '02'),
            ('40', '03'),
            ('50', '04'),
            ('26', '05'),
            ('05', '05'),
            ('01', '05'),
            ('47', '06'),
            ('29', '06'),
            ('13', '07'),
            ('25', '08'),
            ('38', '08'),
            ('47', '08'),
            ('33', '09'),
            ('22', '09'),
            ('11', '09'),
            ('17', '09'),
            ('49', '10'),
            ('48', '10'),
            ('35', '11'),
            ('36', '11'),
            ('17', '11'),
            ('20', '11'),
            ('15', '12'),
            ('27', '13'),
            ('19', '13'),
            ('34', '14'),
            ('44', '14'),
            ('50', '15'),
            ('02', '15'),
            ('04', '15'),
            ('06', '16'),
            ('07', '17'),
            ('08', '17'),
            ('10', '18'),
            ('13', '18'),
            ('18', '18'),
            ('19', '19'),
            ('31', '20'),
            ('32', '21'),
            ('22', '22'),
            ('46', '23'),
            ('29', '23'),
            ('09', '23'),
            ('34', '24'),
            ('39', '24'),
            ('05', '25'),
            ('30', '26'),
            ('20', '26'),
            ('38', '27'),
            ('45', '28'),
            ('17', '29'),
            ('08', '29'),
            ('09', '30'),
            ('35', '30'),
            ('46', '30');


-- ----------------------------------------------------------
-- Povoamento da tabela "Recomendou"
-- ----------------------------------------------------------
INSERT INTO Recomendou
        (Cliente_recomenda, Cliente_Recomendado, descricao)
        VALUES
        		('00000026', '00000018', 'Livros sempre disponíveis'),
        		('00000017', '00000011', 'Promoções a toda a hora'),
        		('00000008', '00000009', 'Oferecem marcadores de livro'),
        		('00000001', '00000002', 'Oferecem canetas'),
        		('00000015', '00000021', 'Vales de descontos'),
        		('00000015', '00000012', 'Variedade de livros internacionais'),
        		('00000007', '00000008', 'Variedade de livros infantis'),
        		('00000001', '00000008', 'Bom serviço'),
				('00000014', '00000025', 'Variada oferta de livros'),
				('00000026', '00000013', 'Entrega rapida'),
				('00000020', '00000019', 'Preços acessíveis'),
				('00000006', '00000003', 'Staff atencioso'),
				('00000017', '00000022', 'Boa organização do site'),
				('00000002', '00000023', 'Livros incríveis');
       	


-- ----------------------------------------------------------
-- Povoamento da tabela "Contactos"
-- ----------------------------------------------------------       	
INSERT INTO ContactosCliente
    	(Cliente_NIF, contacto)
    	VALUES 
       			('00000001', '919999901'),
       			('00000002', '919999902'),
       			('00000003', '919999903'),
       			('00000004', '919999904'),
       			('00000005', '919999905'),
       			('00000006', '919999906'),
       			('00000007', '919999907'),
       			('00000008', '919999908'),
       			('00000009', '919999909'),
       			('00000010', '919999910'),
       			('00000011', '919999911'),
       			('00000012', '919999912'),
       			('00000013', '919999913'),
       			('00000014', '919999914'),
       			('00000015', '919999915'),
       			('00000016', '919999916'),
       			('00000017', '919999917'),
       			('00000018', '919999918'),
       			('00000019', '919999919'),
       			('00000020', '919999920'),
       			('00000021', '919999921'),
       			('00000022', '919999922'),
       			('00000023', '919999923'),
       			('00000024', '919999924'),
       			('00000025', '919999925'),
       			('00000026', '919999926')
       			;
       			

INSERT INTO ContactosFornecedor
    	(Fornecedor_contribuinte, contacto)
    	VALUES 
        		('11111111', '253111111'),
        		('22222222', '253222222'),
        		('33333333', '253333333'),
        		('44444444', '253444444'),
        		('55555555', '253555555');       		




