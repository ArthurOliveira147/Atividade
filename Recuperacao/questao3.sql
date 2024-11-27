CREATE TABLE clientes(
 id_cliente serial PRIMARY KEY,
 nome_cliente varchar(20),
 CPF int,
 DataNascimento date,
 estado varchar(15),
 rua varchar(15),
 numero int,
 CEP int
);

CREATE TABLE pedido(
 id_pedido serial PRIMARY KEY,
 DataCriacao date,
 status varchar(20),
 cliente_idfk int FOREIGN KEY (cliente_idfk) REFERENCES cliente (id_cliente)
);

CREATE TABLE itemPedido(
 id_itemPedido serial PRIMARY KEY,
 quantidade_compra int,
 valorTotal numeric(10, 2),
 pedido_idfk int FOREIGN KEY (pedido_idfk) REFERENCES pedido (id_pedido),
 produto_idfk int FOREIGN KEY (produto_idfk) REFERENCES produto (id_produto)
);

CREATE TABLE produto(
 id_produto serial PRIMARY KEY,
 nome varchar(15),
 descricao varchar(20),
 precoUnitario numeric(10, 2),
 quantidadeEstoque int,
 fornecedor_idfk int FOREIGN KEY (fornecedor_idfk) REFERENCES fornecedor (id_fornecedor)
);

CREATE TABLE fornecedor(
 id_fornecedor serial PRIMARY KEY,
 nome varchar(20),
 CNPJ int,
 telefone varchar(15),
 rua varchar(15),
 numero int,
 estado varchar(15),
 CEP int,
 cidade varchar(15)
);

INSERT INTO clientes (nome_cliente, CPF, DataNascimento, estado, numero, rua, CEP) VALUES
 ('Arthur de Oliveira', 3425343, 15/09/2009, 'Parana', '(43)99932-2832', 'Tira Dentes', 34738432);
 ('Kevin Guimaraes', 3267811, 23/05/1993, 'Parana', '(32)63273-3287', 'Rua do Contorno', 45325435);
 ('Vitoria Mocelin', 8274631, 03/11/2000, 'São Paulo', '(11)73283-3723', 'Rua Tieté', 32732327);
 ('Guilherme Mariot', 3827630, 01/01/2001, 'Minas Gerais', '(32)73183-3748', 'Nome Aleatorio', 81726354);

INSERT INTO pedido (DataCriacao, status, cliente_idfk) VALUES
 (25/12/2024, '', 1);
 (10/02/2019, '', 2);
 (01/03/2023, '', 3);
 (12/05/2005, '', 2);
 (30/09/2020, '', 4);

INSERT INTO itemPedido (quantidade_compra, valorTotal, pedido_idfk, produto_idfk) VALUES
 (2, 40.00, 1, );
 (1, 100.00, 2, 1);
 (3, 45.00, 3, );
 (5, 12.50, 2, );
 (4, 100.00, 4, );

INSERT INTO produto (nome, descricao, precoUnitario, quantidadeEstoque, fornecedor_idfk) VALUES
 ('computador', 'placa RGB, 350Tb', 100.00, 15, );
 ('chocolate ao leite', 'mais cremoso', 2.50, 30);
 ('')
 ('')