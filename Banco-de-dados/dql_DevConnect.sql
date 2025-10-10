--DQL--
USE db_Devconnect

--Exiba todos os nomes dos seguidores (de quem esta seguindo e de quem será seguido)--







--Exiba quantos seguidores possui um respectivo usuário--






--Exiba todas as publicações contendo a descrição, o caminho da imagem, o nome de usuário--
SELECT 
	descricao,
	imagem_url,
	nome_usuario
FROM tb_publicacao
LEFT JOIN tb_usuario US ON tb_publicacao.ID_Usuario = US.ID_Usuario 


~--Exiba todos os comentários com o nome e o texto de uma respectiva publicação--
SELECT 
	texto AS 'Comentario',
	nome_usuario AS 'Nome do Usuario',
	descricao AS 'Publicação'
FROM tb_comentario
LEFT JOIN tb_usuario US ON tb_comentario.ID_Usuario = US.ID_Usuario
LEFT JOIN tb_publicacao PU ON tb_comentario.ID_Publicacao = PU.ID_Publicacao 

--Exiba a quantidade de curtidas de uma respectiva publicação--

SELECT 
	COUNT (CUR.ID_Curtida) AS 'quantidade curtidas'

FROM tb_curtida CUR
INNER JOIN tb_usuario U ON CUR.ID_Usuario = U.ID_Usuario
INNER JOIN tb_publicacao PU ON CUR.ID_Publicacao = PU.ID_Publicacao



--Exiba todos usuários que não chegaram a fazer publicações--
SELECT 
	nome_usuario,
	descricao 
FROM tb_usuario U
LEFT JOIN tb_publicacao PU ON U.ID_Usuario = PU.ID_Usuario
WHERE PU.ID_Usuario IS NULL

--Exiba todos usuários que não chegaram a fazer reações--
SELECT
	nome_usuario,
	 ID_Curtida,
	 id_publicacao
FROM tb_usuario U
LEFT JOIN tb_curtida CUR ON U.ID_Usuario = CUR.ID_Usuario
WHERE CUR.ID_Usuario IS NULL

