CREATE TABLE autor(
  id_autor serial PRIMARY KEY,
  nome_autor varchar(20),
  nascimento date,
  nacionalidade varchar(20)
);

CREATE TABLE livros(
  id_livro serial PRIMARY KEY,
  titulo varchar(15),
  autor_idfk int, FOREIGN KEY (autor_idfk) REFERENCES autor(id_autor)
  publicacao date,
  preco decimal(10, 2),
  estoque int
);

CREATE TABLE clientes(
  id_cliente serial PRIMARY KEY,
  nome_cliente varchar(20),
  email_cliente varchar(30),
  telefone_cliente varchar(10),
  data_cadastro date
);

CREATE TABLE vendas(
  id_venda serial PRIMARY KEY,
  cliente_idfk int, FOREIGN KEY (cliente_idfk) REFERENCES clientes(id_cliente)
  valor_total decimal (10, 2)
);

CREATE TABLE itens_vendas(
  id_iten serial PRIMARY KEY,
  venda_idfk int, FOREIGN KEY (venda_idfk) REFERENCES vendas(id_venda)
  livro_idfk int, FOREIGN KEY (livro_idfk) REFERENCES livros(id_livro)
  quantidade int,
  preco_unitario decimal(10, 2)
);

DROP TABLE autor;
DROP TABLE livros;
DROP TABLE clientes;
DROP TABLE vendas;
DROP TABLE itens_vendas;

SELECT * FROM autor;
SELECT * FROM livros;
SELECT * FROM clientes;
SELECT * FROM vendas;
SELECT * FROM itens_vendas;

INSERT INTO autor (nome_autor, nascimento, nacionalidade) VALUES
('Machado de Assis','21/06/1839','Brasileiro'),
('J.K.Rowling','31/07/1965','Britânica'),
('Dr.Seuss','02/03/1904','Americano'),
('Monteiro Lobato','18/04/1882','Brasileiro'),
('J.R.R. Tolkien','03/01/1892','Africano'),

INSERT INTO livros (titulo, publicacao, preco, estoque) VALUES
('O Alienista', '15/03/1882', 'R$ 31,40', '20'),
('Harry Poter', '26/06/1997', 'R$ 55,74', '15'),
('O Lorax', '23/06/1971', 'R$ 29,90', '15'),
('O Saci', '1921', 'R$ 24,90', '20'),
('Senhor dos Aneis', '29/07/1954', 'R$ 154,90', '10'),

INSERT INTO clientes (nome_cliente, email_cliente, telefone_cliente, data_cadastro) VALUES
('Kevin Guimaraes', 'kevin.guimaraes@gmail.com', '(24)4735-4385', '20/05/2001'),
('Arthur Oliveira', 'arthuroliveira15@gmail.com', '(32)4582-5475', '15/09/2009'),
('Vitoria Gabriela', 'gabriela.vitoria@gmail.com', '(22)4762-8543', '31/12/1999'),
('Carlos Alberto', 'CarlosAlberto@gmail.com', '(11)5549-4563', '05/11/1995'),
('Julia Mocelin', 'julia.mocelin@gmail.com', '(53)4275-4387', '01/01/2000'),

INSERT INTO vendas (data_venda, valor_total) VALUES
('12/05/2010', 'R$ 500,00'),
('03/08/2024', 'R$ 500,00'),
('09/11/2007', 'R$ 500,00'),
('14/01/2005', 'R$ 500,00'),
('30/10/2020', 'R$ 500,00'),

INSERT INTO itens_vendas (quantidade, preco_unitario) VALUES
('', 'R$ '),
('', 'R$ '),
('', 'R$ '),
('', 'R$ '),
('', 'R$ '),