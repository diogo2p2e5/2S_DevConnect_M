--DML--
USE db_Devconnect

INSERT INTO tb_usuario (nome_completo, nome_usuario, email, senha, foto_perfil_url) VALUES
('Matias Roberto', 'mati_rob', 'RobertoMatias@gmail.com', '23032404', 'www.foto_matias.com.br')
,('Boris junior', 'bori_ior', 'BorisJu124@gmail.com', '20020411', '');

INSERT INTO tb_usuario (nome_completo, nome_usuario, email, senha, foto_perfil_url) VALUES
('Marcelo Ribeiro Pereira', 'mrp_chama', 'Marceloribeiropereira@yahoo.com', 'chama', 'www.foto_marselo.com.br')

SELECT * FROM tb_publicacao

INSERT INTO tb_publicacao (descricao, imagem_url, data_publicacao, id_usuario) VALUES
('Fiz esse código semana passada, to muito orgulhoso', 'www.foto_codigo_matias.com.br', '2025/03/23', 1)
,('to quebrando a cabeça com esse codigo', 'www.foto_codigo_boris.com.br','2025/07/25',  2);



INSERT INTO tb_curtida (id_usuario, id_publicacao) VALUES
(1, 1)
,(2, 2)

INSERT INTO tb_comentario (texto, data_comentario, id_usuario, id_publicacao) VALUES
('parabéns!!!!, ficou muito bom', '2025/03/25', 2 , 1)
,('cara é um erro bem complicado mas da pra resolver boa sorte','2025/07/27', 1 , 2)

INSERT INTO tb_seguidor (id_usuario_seguindo, id_usuario_seguidor) VALUES
(1, 2)
,(2, 1)

