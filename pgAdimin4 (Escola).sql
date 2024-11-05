CREATE TABLE professor
(
 matricula_prof serial PRIMARY KEY,
 cpf_prof varchar(15),
 nome_prof varchar(50),
 data_prof date,
 telefone_prof varchar(14),
 endereço_prof varchar(10)
);

CREATE TABLE disciplina
(
 cod_disk serial PRIMARY KEY,
 nome_disk varchar(50),
 matricula_disk int FOREIGN KEY (matricula_prof),
 REFERENCES professor(matricula_prof)
);

SELECT nome_prof, nome_disk FROM professor

INNER JOIN disciplina ON matricula_disk = matricula_prof;