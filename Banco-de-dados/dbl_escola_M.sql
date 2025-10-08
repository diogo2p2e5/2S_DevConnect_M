--Comando que cria um novo banco de dados no SSMS
CREATE DATABASE db_escola_M;

--comando que sapara o banco em blocos e exucuta em ordem sequencial--
GO

USE db_escola_M;

--comando que cria TABELAS--
CREATE TABLE tb_escola(
   id					INT				IDENTITY (1,1)		PRIMARY KEY 
   ,nome				NVARCHAR(255)						NOT NULL
   ,endereco			NVARCHAR(255)						NOT NULL
);
GO

--comando para consultar tabelas--
SELECT * FROM tb_escola;


--TABELA ALUNO--
CREATE TABLE  tb_aluno(
	id					INT				IDENTITY (1,1)		PRIMARY KEY
	,nome				NVARCHAR(255)						NOT NULL
	,cpf				NCHAR(11)		UNIQUE				NOT NULL
	,matricula			NVARCHAR(10)    UNIQUE				NOT NULL
	,data_nasc			DATE								NOT NULL
	
	,id_escola			INT									NOT NULL			
	
	FOREIGN KEY (id_escola)		REFERENCES tb_escola(id)
);
SELECT * FROM tb_aluno;


--TABELA PROVA--
CREATE TABLE  tb_prova(
	Id					INT				IDENTITY (1,1)		PRIMARY KEY
	,materia			NVARCHAR(100)	NOT NULL
	,data_prov			DATE			NOT NULL
	,duracao			TIME			NOT NULL
	,nome_professor		NVARCHAR(255)	NOT NULL
	,nota				DECIMAL(2,1)	NOT NULL
	,Id_aluno			INT				NOT NULL

	FOREIGN KEY (Id_aluno) REFERENCES tb_aluno(id)
);
SELECT * FROM tb_prova;

--TABELA TURMA--
CREATE TABLE tb_turma(
id						INT				IDENTITY(1,1)	PRIMARY KEY
,numero_sala			TINYINT			UNIQUE			NOT NULL
,periodo				NVARCHAR(5)						NOT NULL
,nome_turma				NVARCHAR(100)	UNIQUE			NOT NULL
,serie					NVARCHAR(10)
,id_escola				INT				NOT NULL

FOREIGN KEY (id_escola) REFERENCES tb_escola(id)
);
SELECT * FROM tb_turma;



--TABELA TURMAPROVA--
CREATE TABLE tb_turma_prova(
	id_turma    INT NOT NULL,
	id_prova    INT NOT NULL,

	PRIMARY KEY(id_turma, id_prova)

);
SELECT * FROM tb_turma_prova;