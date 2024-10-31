CREATE TABLE chat(
	id_chat serial PRIMARY KEY,
	nome varchar(20),
	msg varchar(280)
);

DROP TABLE chat;

SELECT * FROM chat ORDER BY id_chat;

INSERT INTO chat (nome,msg) VALUES ('Kevin','Olá me chamo Kevin');
INSERT INTO chat (nome,msg) VALUES ('Vagner','Olá me chamo Vagner');
INSERT INTO chat (nome,msg) VALUES ('Gabriel','Olá me chamo Gabriel');
INSERT INTO chat (nome,msg) VALUES ('Larissa','Olá me chamo Larissa');
INSERT INTO chat (nome,msg) VALUES ('Maria','Olá me chamo Maria');
INSERT INTO chat (nome,msg) VALUES ('Evelyn','Olá me chamo Evelyn');
INSERT INTO chat (nome,msg) VALUES ('Arthur Siega','Olá me chamo Arthur Siega');
INSERT INTO chat (nome,msg) VALUES ('Domini','Olá me chamo Domini');
INSERT INTO chat (nome,msg) VALUES ('Gustavo','Olá me chamo Gustavo');
INSERT INTO chat (nome,msg) VALUES ('Arthur Oliveira','Olá me chamo Arthur Oliveira');
INSERT INTO chat (nome,msg) VALUES ('William','Olá me chamo William');
INSERT INTO chat (nome,msg) VALUES ('Agatha','Olá me chamo Agatha');

UPDATE chat SET nome = 'Arthur' , msg = 'Programar' WHERE id_chat = 1;

DELETE FROM chat WHERE id_chat = 1;