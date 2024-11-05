CREATE TABLE autor(
  id_autor int PRIMARY KEY,
  nome_autor varchar(20),
  nascimento date,
  nacionalidade varchar(20)
);

CREATE TABLE livros(
  id_livro int PRIMARY KEY,
  titulo varchar(15),
  id_autor int FOREIGN KEY,
  data_publicacao date,
  preco decimal(10, 2),
  estoque int
);

CREATE TABLE clientes(
  id_cliente int PRIMARY KEY,
  nome_cliente varchar(20),
  email_cliente varchar(30),
  telefone_cliente varchar(10),
  data_cadastro date
);

CREATE TABLE vendas(
  id_venda int PRIMARY KEY,
  id_cliente int FOREIGN KEY,
  data_venda date,
  valor_total decimal (10, 2)
);

CREATE TABLE itens_vendas(
  id_iten int PRIMARY KEY,
  id_venda int FOREIGN KEY,
  id_livro int FOREIGN KEY,
  quantidade int,
  preco_unitario decimal(10, 2)
);

INSERT INTO autor (id_autor, nome_autor, nascimento, nacionalidade) VALUES ('27453','Machado de Assis','21/06/1839','Brasileiro');
INSERT INTO autor (id_autor, nome_autor, nascimento, nacionalidade) VALUES ('43264','J.K.Rowling','31/07/1965','Inglesa');
INSERT INTO autor (id_autor, nome_autor, nascimento, nacionalidade) VALUES ('43732','','','');
INSERT INTO autor (id_autor, nome_autor, nascimento, nacionalidade) VALUES ('','','','');
INSERT INTO autor (id_autor, nome_autor, nascimento, nacionalidade) VALUES ('','','','');