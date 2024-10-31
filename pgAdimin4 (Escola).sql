CREATE TABLE disciplina(
	codigo_disciplina serial PRIMARY KEY,
	nome_disciplina varchar(15)
);

CREATE TABLE professor(
	cpf_professor bigint,
	nome_professor varchar(20),
	nascimento_professor date,
	telefone_professor int,
	matricula_professor serial
);