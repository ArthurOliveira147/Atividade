CREATE TABLE aluno(
 aluno_nome varchar,
 aluno_id serial PRIMARY KEY
);

CREATE TABLE nota(
 nota_id serial,
 idfk_aluno int, FOREIGN KEY (idfk_aluno) REFERENCES aluno (aluno_id),
 nota_valor numeric(10, 1)
);

DROP TABLE aluno;
DROP TABLE nota;

INSERT INTO aluno (aluno_nome) VALUES
 ('Arthur de Oliveira'),
 ('Guilherme Mariot'),
 ('Vitoria Mocelin');

 INSERT INTO aluno (aluno_nome) VALUES
 ('Maria')

INSERT INTO nota (idfk_aluno, nota_valor) VALUES
 (1, 6.5),
 (2, 3.0),
 (null,7.9);

SELECT * FROM aluno;
SELECT * FROM nota;

SELECT aluno_nome, nota_valor FROM aluno
INNER JOIN nota ON idfk_aluno = aluno_id

SELECT aluno_nome, nota_valor FROM aluno
LEFT JOIN nota ON idfk_aluno = aluno_id

SELECT aluno_nome, nota_valor FROM aluno
RIGHT JOIN nota ON idfk_aluno = aluno_id

SELECT aluno_nome, nota_valor FROM nota
RIGHT JOIN aluno ON idfk_aluno = aluno_id
WHERE nota_valor is null