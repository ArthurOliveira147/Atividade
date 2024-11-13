CREATE TABLE cliente(
 cod_cliente serial PRIMARY KEY,
 nome_cliente varchar(20),
 cpf int,
 data_nasc date,
 rua varchar(20),
 numero int,
 cidade varchar(15),
 estado varchar(15),
 cep int
);

CREATE TABLE pedido(
 num_pedido serial PRIMARY KEY,
 cliente_codfk int, FOREIGN KEY (cliente_codfk) REFERENCES cliente (cod_cliente),
 data_criacao date,
 status varchar(15)
);

CREATE TABLE produto(
 cod_produto serial PRIMARY KEY,
 pedido_nfk int, FOREIGN KEY (pedido_nfk) REFERENCES pedido (num_pedido),
 nome_produto varchar(20),
 descricao varchar(25),
 preco_unidade decimal(10, 2),
 quant_estoque int
);

CREATE TABLE fornecedor(
 cod_fornecedor serial PRIMARY KEY,
 produto_codfk int, FOREIGN KEY (produto_codfk) REFERENCES produto (cod_produto),
 nome_fornecedor varchar,
 telefone int,
 rua varchar(20),
 numero int,
 cidade varchar(15),
 estado varchar(15),
 cep int
);

CREATE TABLE produto_pedido(
 cod_pp serial PRIMARY KEY,
 produto_codfk int, FOREIGN KEY (produto_codfk) REFERENCES produto (cod_produto),
 pedido_numfk int, FOREIGN KEY (pedido_numfk) REFERENCES pedido (num_pedido),
 preco_total decimal (10, 2)
);

 SELECT * FROM cliente;
 SELECT * FROM pedido;
 SELECT * FROM produto;
 SELECT * FROM fornecedor;
 SELECT * FROM produto_pedido;

INSERT INTO cliente (nome_cliente, cpf, data_nasc, rua, numero, cidade, estado, cep)
VALUES ('Maria Silva', '12345678900', '1985/05/15', 'Rua das Laranjeiras', '100', 'São Paulo', 'SP', '01000-000'),
VALUES ('Ana Pereira', '11223344556', '1987/11/10', 'Rua Verde', '200', 'Campinas', 'SP', '12040-000'),
VALUES ('Carlos Moura', '33445566778', '1975-02-25', 'Av.Brasil', '3000', 'Rio de Janeiro', 'RJ', '22050-001'),
VALUES ('Laura Dias', '99887766554', '1982-09-05', 'Rua das Flores', '1100', 'Curitiba', 'PR', '80050-010'),
VALUES ('Pedro Rocha', '22334455667', '1995-01-15', 'Rua das Palmeiras', '500', 'Belo Horizonte', 'MG', '30130-000'),
VALUES ('Fernando Almeida', '66778899001', '1978-11-05', 'Rua Central', '303', 'Florianópolis', 'SC', '88030-200');

INSERT INTO pedido (data_criacao, status)
VALUES ('2024-10-01', 'Concluído'),
VALUES ('2024-10-03', 'Em andamento'),
VALUES ('2024-10-05', 'Concluído'),
VALUES ('2024-10-06', 'Cancelado'),
VALUES ('2024-10-07', 'Em andamento'),
VALUES ('2025-10-15', 'Cancelado');

INSERT INTO produto (nome_produto, descricao, preco_unidade, quant_estoque)
VALUES ('Notebook Dell', 'Notebook i5 8GB 256GB SSD', '3500.00', '15'),
VALUES ('Smartphone Samsung', 'Galaxy S21 128GB', '2800.00', '30'),
VALUES ('Impressora HP', 'Impressora a jato de tinta', '600.00', '20'),
VALUES ('Teclado Mecânico', 'Teclado RGB gamer', '250.00', '50'),
VALUES ('Mouse Logitech', 'Mouse óptico sem fio', '120.00', '60'),
VALUES ('Monitor LG', 'Monitor 24 polegadas', '700.00', '25');

INSERT INTO fornecedor (nome_fornecedor, telefone, rua, numero, cidade, estado, cep)
VALUES ('Tech Distribuidora', '(11)4000-3000', 'Rua da Liberdade', '500', 'São Paulo', 'SP', '01500-000'),
VALUES ('Eletrônicos Brasil', '(21)2500-4000', 'Rua das Flores', '80', 'Rio de Janeiro', 'RJ'),
VALUES ('Fast Tech', '(31)3500-3200', 'Av.Amazonas', '1200', 'Belo Horizonte', 'MG', '30140-000'),
VALUES ('Digital Solutions', '(41)3200-2500', 'Av.do Comércio', '750', 'Curitiba', 'PR', '80060-050'),
VALUES ('PC Hardware', '(51)3200-3200', 'Rua Sete de Setembro', '999', 'Porto Alegre', 'RS', '90030-020'),
VALUES ('EletroShop', '(21)2500-8000', 'Av.Presidente', '100', 'Rio de Janeiro', 'RJ', '2004-040');

INSERT INTO produto_pedido (preco_total)
VALUES ('3500.00'),
VALUES ('500.00'),
VALUES ('2800.00'),
VALUES ('600.00'),
VALUES ('250.00'),
VALUES ('240.00');