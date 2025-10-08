USE db_escola_M;

--este comando mostra somente as colunas determinadas pelo select--
SELECT id, nome FROM tb_escola

--SELECT TOP limita a quantidade de registros--
SELECT TOP 3 nome FROM tb_aluno;

--exibir somente tres registros do mais recente para o menos recente--
SELECT TOP 3 nome 
FROM tb_aluno
ORDER BY id DESC --ASC = CRESCENTE DESC = DECRESCENTE;

--EXIBE SOMENTE O NOME DA TURMA DO PERIODO DA MANHA--

SELECT nome_turma
FROM tb_turma
WHERE periodo = 'tarde'


--EXIBE A PROVA DO PROFESSOR--

SELECT *
FROM tb_prova
WHERE nome_professor = 'Junior Sandy'


--EXIBE QUANTOS ALUNOS TEM--
SELECT COUNT (cpf) AS qtd_total_alunos FROM tb_aluno

--EXIBE QUANTOS ALUNOS ESTÃO ATRELADOS A UMA PROVA QUE PERTENCE A UMA MATERIA--
 SELECT * FROM tb_prova

	SELECT COUNT (Id_aluno) AS qtd_aluno_prova_mat  FROM tb_prova
	WHERE materia = 'mat'

--EXIBE A DATA DE NASCIMENTO MAIS VELHA
SELECT MIN (data_nasc) FROM tb_aluno;
--2000 - MAX (MAIOR)--
--1970 - MIN (MENOR)--

	
--EXIBE A DATA DE NASCIMENTO MAIS NOVA
SELECT MAX (data_nasc) FROM tb_aluno;

--EXIBE A DATA DE NASCIMENTO MAIS VELHA E O NOME--
SELECT nome, data_nasc
FROM tb_aluno
WHERE data_nasc = (SELECT MIN (data_nasc) FROM tb_aluno);

--EXIBE A DATA DE NASCIMENTO MAIS NOVA E O NOME--
SELECT nome, data_nasc
FROM tb_aluno
WHERE data_nasc = (SELECT MAX (data_nasc) FROM tb_aluno);

--SOMA OS ID'S DAS TURMAS CADASTRADAS--
SELECT SUM (id) AS total FROM tb_turma;

--MEDIA DE NOTAS DA TABELA PROVAS--
SELECT AVG (nota) AS media FROM tb_prova

--EXIBE OS ID'S E DATA DE NASCIMENTO DOS ALUNOS MAIS NOVOS--
SELECT MAX(data_nasc) AS alunos_mais_novos, id
FROM tb_aluno
GROUP BY id
ORDER BY alunos_mais_novos DESC;


