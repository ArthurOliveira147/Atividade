CREATE TABLE cliente(
 cod_cliente int PRIMARY KEY,
 nome_cliente varchar(20),
 CPF bigint,
 data_nasc date,
 rua varchar(20),
 numero int,
 cidade varchar(15),
 estado varchar(15),
 CEP varchar
);

CREATE TABLE pedido(
 num_pedido int PRIMARY KEY,
 cod_cliente int, FOREIGN KEY (cod_cliente) REFERENCES cliente (cod_cliente),
 data_criacao date,
 status varchar(15)
);

CREATE TABLE produtos(
 cod_produto int PRIMARY KEY,
 pedido_nfk int, FOREIGN KEY (pedido_nfk) REFERENCES pedido (num_pedido),
 nome_produto varchar(20),
 descricao varchar(30),
 preco_unidade decimal(10, 2),
 quant_estoque int
);

CREATE TABLE fornecedores(
 cod_fornecedor int PRIMARY KEY,
 produto_codfk int, FOREIGN KEY (produto_codfk) REFERENCES produtos (cod_produto),
 nome_fornecedor varchar(20),
 CNPJ bigint,
 telefone varchar(15),
 rua varchar(20),
 numero int,
 cidade varchar(15),
 estado varchar(15),
 CEP varchar(10)
);

CREATE TABLE produto_pedido(
 cod_pp serial PRIMARY KEY,
 pedido_numfk int, FOREIGN KEY (pedido_numfk) REFERENCES pedido (num_pedido),
 produto_codfk int, FOREIGN KEY (produto_codfk) REFERENCES produtos (cod_produto),
 quantidade_itens int,
 preco_total decimal (10, 2)
);

DROP TABLE cliente;
DROP TABLE pedido;
DROP TABLE produtos;
DROP TABLE fornecedores;
DROP TABLE produto_pedido;

 SELECT * FROM cliente;
 SELECT * FROM pedido;
 SELECT * FROM produtos;
 SELECT * FROM fornecedores;
 SELECT * FROM produto_pedido;

INSERT INTO cliente (cod_cliente, nome_cliente, CPF, data_nasc, rua, numero, cidade, estado, CEP) VALUES
 (1,	'Maria Silva',	'12345678900',	'1985-05-15',	'Rua das Laranjeiras',	100,	'São Paulo',	'SP',	'01000-000'),
 (2,	'João Santos',	'98765432100',	'1990-07-20',	'Av. Paulista',	1500,	'São Paulo',	'SP',	'01310-200'),
 (3,	'Ana Pereira',	'11223344556',	'1987-11-10',	'Rua Verde',	200,	'Campinas', 'SP',	'13040-000'),
 (4,	'Carlos Moura',	'33445566778',	'1975-02-25',	'Av. Brasil',	3000,	'Rio de Janeiro',	'RJ',	'22050-001'),
 (5,	'Laura Dias',	'99887766554',	'1982-09-05',	'Rua das Flores',	1100,	'Curitiba',	'PR',	'80050-010'),
 (6,	'Pedro Rocha',	'22334455667',	'1995-01-15',	'Rua das Palmeiras',	500,	'Belo Horizonte',	'MG',	'30130-000'),
 (7,	'Vanessa Lopes',	'55443322110',	'1989-04-27',	'Av. Independência',	210,	'Porto Alegre',	'RS',	'90020-001'),
 (8,	'Fernando Almeida',	'66778899001',	'1978-11-05',	'Rua Central',	303,	'Florianópolis',	'SC',	'88030-200'),
 (9,	'Julia Souza',	'11235813213',	'1992-12-10',	'Rua Augusta',	800,	'São Paulo',	'SP',	'01400-400'),
 (10,	'Bruno Oliveira',	'99887722112',	'1991-03-18',	'Av. Angélica',	350,	'São Paulo',	'SP',	'01227-200');

INSERT INTO pedido (num_pedido, cod_cliente, data_criacao, status) VALUES
 (1001,	1,	'2024-10-01',	'Concluído'),
 (1002,	2,	'2024-10-03',	'Em andamento'),
 (1003,	3,	'2024-10-05',	'Concluído'),
 (1004,	4,	'2024-10-06',	'Cancelado'),
 (1005,	5,	'2024-10-07',	'Em andamento'),
 (1006,	6,	'2024-10-08',	'Concluído'),
 (1007,	7,	'2024-10-10',	'Em andamento'),
 (1008,	8,	'2024-10-12',	'Concluído'),
 (1009,	9,	'2024-10-15',	'Cancelado'),
 (1010,	10,	'2024-10-18',	'Em andamento');

INSERT INTO produtos (cod_produto, nome_produto, descricao, preco_unidade, quant_estoque) VALUES
 (101,	'Notebook Dell',	'Notebook i5 8GB 256GB SSD',	3500.00,	15),
 (102,	'Smartphone Samsung',	'Galaxy S21 128GB',	2800.00,	30),
 (103,	'Impressora HP',	'Impressora a jato de tinta',	600.00,	20),
 (104,	'Teclado Mecânico',	'Teclado RGB gamer',	250.00,	50),
 (105,	'Mouse Logitech',	'Mouse óptico sem fio',	120.00,	60),
 (106,	'Monitor LG',	'Monitor 24 polegadas',	700.00,	25),
 (107,	'HD Externo Seagate',	'HD 1TB USB 3.0',	350.00,	40),
 (108,	'SSD Kingston',	'SSD 512GB',	400.00,	35),
 (109,	'Câmera Logitech',	'Câmera de videoconferência',	950.00,	10),
 (110,	'Caixa de Som JBL',	'Caixa de som Bluetooth',	300.00,	20);

INSERT INTO fornecedores (cod_fornecedor, nome_fornecedor, CNPJ, telefone, rua, numero, cidade, estado, CEP) VALUES
 (201,	'Tech Distribuidora',	'12345678000190',	'(11) 4000-3000',	'Rua da Liberdade',	500,	'São Paulo',	'SP',	'01500-000'),
 (202,	'Eletrônicos Brasil',	'98765432000180',	'(21) 2500-4000',	'Rua das Flores',	80,	'Rio de Janeiro',	'RJ',	'20030-001'),
 (203,	'FastTech',	'34567890000150',	'(31) 3500-3200',	'Av. Amazonas',	1200,	'Belo Horizonte',	'MG',	'30140-000'),
 (204,	'Digital Solutions',	'45678912000170',	'(41) 3200-2500',	'Av. do Comércio',	750,	'Curitiba',	'PR',	'80060-050'),
 (205,	'PC Hardware',	'56789123000130',	'(51) 3200-3200',	'Rua Sete de Setembro',	999,	'Porto Alegre',	'RS',	'90030-020'),
 (206,	'EletroShop',	'67891234000110',	'(21) 2500-8000',	'Av. Presidente',	100,	'Rio de Janeiro',	'RJ',	'20040-040');

INSERT INTO produto_pedido (pedido_numfk, produto_codfk, quantidade_itens, preco_total) VALUES
 (1001,	101,	1,	3500.00),
 (1001,	104,	2,	500.00),
 (1002,	102,	1,	2800.00),
 (1003,	103,	1,	600.00),
 (1003,	104,	1,	250.00),
 (1004,	105,	2,	240.00),
 (1005,	106,	1,	700.00),
 (1006,	107,	3,	1050.00),
 (1007,	108,	2,	800.00),
 (1008,	109,	1,	950.00);

SELECT nome_cliente FROM cliente;
INNER JOIN pedido, ON cod_cliente = num_pedido;