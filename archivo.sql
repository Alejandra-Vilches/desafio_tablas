CREATE DATABASE posts;

CREATE TABLE post(id SERIAL, nombre_de_usuario VARCHAR(10),    fecha_de_creación DATE, contenido VARCHAR(30), descripción VARCHAR(40), PRIMARY KEY (id));

INSERT INTO post(id, nombre_de_usuario, fecha_de_creación, contenido, descripción) VALUES ('1', 'Pamela', '2022/03/28', 'post 1', 'Comentario de Pame');

INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripción) VALUES ('2', 'Pamela', '2022/03/28', 'post 2', 'Otro comentario de Pame');

INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripción) VALUES ('3', 'Carlos', '2022/03/28', 'post 3', 'Comentario Carlos');

ALTER TABLE post
ADD título VARCHAR (20);

UPDATE post SET título='Este es mi título' WHERE descripción='Comentario de Pame';

UPDATE post SET título='Título 2' WHERE descripción='Otro comentario de Pame';

UPDATE post SET título='Más título' WHERE descripción='Comentario Carlos';

INSERT INTO post(id, nombre_de_usuario, fecha_de_creación, contenido, descripción, título) VALUES('4', 'Pedro', '2022-04-01', 'post 4', 'Más post', 'Lalala');

INSERT INTO post(id, nombre_de_usuario, fecha_de_creación, contenido, descripción, título) VALUES('5', 'Pedro', '2022-04-02', 'post 5', 'Más otro post', 'Lalilali');

DELETE FROM post WHERE descripción='Comentario Carlos';

INSERT INTO post(id, nombre_de_usuario, fecha_de_creación, contenido, descripción, título) VALUES('15.645.325-1', 'Carlos', '2022-04-06', 'post 6', 'Pooooost', 'postttt');

CREATE TABLE comentarios(id SERIAL, fecha DATE, hora_de_creación TIME, contenido VARCHAR(30), post_id INT, FOREIGN KEY (post_id) REFERENCES post (id));

INSERT INTO comentarios (fecha, hora_de_creación, contenido, post_id) VALUES ('2022-05-29', '19:10:24', 'esto es contenido', '1');

INSERT INTO comentarios (fecha, hora_de_creación, contenido) VALUES ('2022-05-30', '21:10:24', 'comentario del post');

UPDATE comentarios SET post_id='1' WHERE id='2';

INSERT INTO comentarios (fecha, hora_de_creación, contenido, post_id) VALUES ('2022-06-25', '11:50:35', 'otro comentario', '6');

INSERT INTO comentarios (fecha, hora_de_creación, contenido, post_id) VALUES ('2022-06-28', '14:20:35', 'extra otro comentario', '6');

INSERT INTO comentarios (fecha, hora_de_creación, contenido, post_id) VALUES ('2022-06-30', '18:20:35', 'más otro comentario', '6');

INSERT INTO comentarios (fecha, hora_de_creación, contenido, post_id) VALUES ('2022-06-30', '10:20:35', 'último comentario', '6');

INSERT INTO post(id, nombre_de_usuario, fecha_de_creación, contenido, descripción, título) VALUES ('7', 'Margarita', '2023-07-23', 'post 7', 'Este es un post', 'Otro');

INSERT INTO comentarios(fecha, hora_de_creación, contenido, post_id) VALUES ('2023-05-24', '21:34:56', 'mucho contenido', '7');

INSERT INTO comentarios(fecha, hora_de_creación, contenido, post_id) VALUES ('2023-08-24', '11:34:56', 'contenidooo', '7');

INSERT INTO comentarios(fecha, hora_de_creación, contenido, post_id) VALUES ('2023-08-24', '11:34:56', 'mas mas mas', '7');

INSERT INTO comentarios(fecha, hora_de_creación, contenido, post_id) VALUES ('2023-08-24', '11:34:56', 'hola hola', '7');

INSERT INTO comentarios(fecha, hora_de_creación, contenido, post_id) VALUES ('2023-08-24', '11:34:56', 'margarita comentarios', '7');

--fin--






