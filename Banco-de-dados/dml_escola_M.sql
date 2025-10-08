USE db_escola_M;



--COMANDO PARA INSERIR UM NOVO REGISTRO--
INSERT INTO tb_escola(nome, endereco)
VALUES('Moura Branco', 'Rua Tapajós 1085 - Olímpico');

SELECT * FROM tb_escola


--REGISTRO NA TABELA ALUNO--
INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola) VALUES
('Robertinho', '849.727-01', '2009/03/23', '0572914359', 1),
('jublisqueu', '818.704-04', '2004/04/24', '3079968757', 1);

INSERT INTO tb_aluno (nome, cpf, data_nasc, matricula, id_escola) VALUES
('gomerto',  '415.530-02',  '2002/04/23', '8256091058', 1),
('jortinho', '698.814-05',  '2002/04/23', '0912485825', 1),
('jerto',    '908.244-04',  '2002/04/23', '2364925768', 1),
('fabiones', '805.038-34',  '2000/12/25', '2398470583', 1),
('johnyman', '404.340-96',  '2010/01/31', '5912835982', 1);

SELECT * FROM tb_aluno

--REGISTRO NA TABELA TURMA--
INSERT INTO tb_turma(numero_sala, periodo, nome_turma, serie, id_escola) VALUES 
(7, 'noite', 'programacao', '2 ano c', 1);



SELECT * FROM tb_turma

--REGISTRO TABELA PROVA--
INSERT INTO tb_prova(materia, data_prov, duracao, nome_professor, nota, Id_aluno) VALUES 
('mat',  '2025/09/11', '02:00:00', 'Junior Sandy', 9, 8),
('port', '2025/09/12', '01:30:00', 'Sandy Junior', 3, 9);

 SELECT * FROM tb_prova


 --TABELA TURMAPROVA - INTERMEDIARIA--
INSERT INTO tb_turma_prova(id_turma,id_prova)
 VALUES (1, 1)


 SELECT * FROM tb_turma_prova


 --COMANDO PARA ALTERAR UM REGISTRO--
 UPDATE tb_turma --A TABELA QUE SERA ALTERADA--
 SET nome_turma = 'administracao' --OQUE VAI SER ALTERADO--
 WHERE serie = '2 ano B'; --E QUAL LINHA SERA ALTERADA--

 DELETE FROM tb_aluno --TABELA QUE O REGISTRO SERÁ DELETADO--
 WHERE matricula = '2364925768'; -- LINHA QUE SERÁ DELETADA--

