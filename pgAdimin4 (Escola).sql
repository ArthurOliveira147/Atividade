CREATE TABLE disciplina(
	codigo_disciplina serial PRIMARY KEY,
	nome_disciplina varchar(15)
);

CREATE TABLE professor(
	tel_prof int,
	matricula_prof serial PRIMARY KEY,
	cpf_prof bigint,
	nome_prof varchar(20),
	data_nac_prof date,
	endereco_prof varchar(20)
);

DROP TABLE disciplina;

SELECT * FROM disciplina ORDER BY codigo_disciplina;

INSERT INTO disciplina (nome_disciplina) VALUES ('Ed.Fisica');
INSERT INTO disciplina (nome_disciplina) VALUES ('Geografia');
INSERT INTO disciplina (nome_disciplina) VALUES ('Inglês');
INSERT INTO disciplina (nome_disciplina) VALUES ('Matematica');
INSERT INTO disciplina (nome_disciplina) VALUES ('Portuges');

INSERT INTO professor (tel_prof,cpf_prof,nome_prof,endereco_prof) VALUES ('(42)9934-2365','57392384','')