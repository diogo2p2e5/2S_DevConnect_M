--DDL--
CREATE DATABASE db_Devconnect

CREATE TABLE tb_usuario(
ID_Usuario INT IDENTITY (1,1) PRIMARY KEY

,nome_completo	 NVARCHAR(255)			NOT NULL
,nome_usuario	 NVARCHAR(50)	UNIQUE	NOT NULL
,email			 NVARCHAR(255)	UNIQUE	NOT NULL
,senha			 NVARCHAR(50)			NOT NULL
,foto_perfil_url NVARCHAR(150)			NULL

);





GO

CREATE TABLE tb_publicacao(
ID_Publicacao INT IDENTITY(1,1) PRIMARY KEY

,descricao			NVARCHAR(255)			NULL
,imagem_url			NVARCHAR(150)			NULL
,data_publicacao	DATE                NOT NULL
,id_usuario			INT					NOT NULL

FOREIGN KEY (id_usuario) REFERENCES tb_usuario(ID_Usuario)

);

CREATE TABLE tb_curtida(
ID_Curtida INT IDENTITY(1,1) PRIMARY KEY

,id_usuario			INT					NOT NULL
,id_publicacao	    INT					NOT NULL

FOREIGN KEY (id_usuario) REFERENCES tb_usuario(ID_Usuario)
,FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(ID_Publicacao)
);


CREATE TABLE tb_comentario(
ID_Comentario INT IDENTITY(1,1) PRIMARY KEY

,texto				NVARCHAR(255)        NOT NULL
,data_comentario	DATE				 NOT NULL
,id_usuario			INT					 NOT NULL
,id_publicacao		INT					 NOT NULL


FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(ID_Publicacao),
FOREIGN KEY (id_usuario) REFERENCES tb_usuario(ID_Usuario)

);

CREATE TABLE tb_seguidor(
 id_usuario_seguindo INT  NOT NULL
,id_usuario_seguidor INT  NOT NULL

PRIMARY KEY (id_usuario_seguidor, id_usuario_seguindo),
FOREIGN KEY (id_usuario_seguidor) REFERENCES tb_usuario(ID_Usuario),
FOREIGN KEY (id_usuario_seguindo) REFERENCES tb_usuario(ID_Usuario)
);

DROP TABLE tb_seguidor

DROP TABLE tb_comentario
DROP TABLE tb_publicacao
DROP TABLE tb_curtida
DROP TABLE tb_usuario