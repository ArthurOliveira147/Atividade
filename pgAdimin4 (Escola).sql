CREATE TABLE disciplina(
	codigo_disciplina serial PRIMARY KEY,
	nome_disciplina varchar(15)
);

CREATE TABLE professor(
	telefone_professor int,
	matricula_professor serial PRIMARY KEY,
	cpf_professor bigint,
	nome_professor varchar(20),
	data_nac_professor date,
	endereco_professor varchar(20)
);

DROP TABLE disciplina;

SELECT * FROM disciplina ORDER BY codigo_disciplina;

INSERT INTO disciplina (nome_disciplina) VALUES ('Ed.Fisica');
INSERT INTO disciplina (nome_disciplina) VALUES ('Geografia');
INSERT INTO disciplina (nome_disciplina) VALUES ('Inglês');
INSERT INTO disciplina (nome_disciplina) VALUES ('Matematica');
INSERT INTO disciplina (nome_disciplina) VALUES ('Portuges');