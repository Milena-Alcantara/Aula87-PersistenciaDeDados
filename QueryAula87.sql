

CREATE TABLE public."user"
(
    id_user integer NOT NULL,
    cpf text NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    senha text NOT NULL,
    SERIAL PRIMARY KEY (id_user)
);

CREATE TABLE public.movie
(
    movie_code integer NOT NULL,
    title text NOT NULL,
    image text NOT NULL,
    description text NOT NULL,
    genrer text NOT NULL,
    SERIAL PRIMARY KEY (movie_code)
);
CREATE TABLE public.favorite_movie
(
    id integer NOT NULL,
    title text NOT NULL,
    image text NOT NULL,
    SERIAL PRIMARY KEY (id)
);

INSERT INTO public."user"(
	id_user, cpf, name, email, senha)
	VALUES (1, '12345678901', 'MILENA', 'milena@gmail.com', '12345');
	
	INSERT INTO public."user"(
	id_user, cpf, name, email, senha)
	VALUES (2, '10987654321', 'Suzana', 'suzana@gmail.com', '12345');
	
	INSERT INTO public."user"(
	id_user, cpf, name, email, senha)
	VALUES (3, '22222222222', 'João', 'joão@gmail.com', '12345');
	
	INSERT INTO public."user"(
	id_user, cpf, name, email, senha)
	VALUES (4,'33333333333' ,'Maria', 'maria@gmail.com', '12345');
	
	INSERT INTO public."user"(
	id_user, cpf, name, email, senha)
	VALUES (5, '44444444444', 'Victor', 'victor@gmail.com', '12345');
	
INSERT INTO public.movie(
	movie_code, title, image, description, genrer)
	VALUES (1,'A Era do Gelo', 'AEradoGelo.jpg', '.', 'Animação'),
	(2, 'Titanic', 'Titanic.jpg', '.', 'Romance'),
	(3,'O Rei Leão' ,'OReiLeão.jpg','.', 'Animação'),
	(4,'Harry Potter e a Pedra Filosofal', 'HarryPottereaPedraFilosofal.jpg', '.', 'Fantasia'),
	(5, 'Vingadores: Ultimato', 'Vingadores:Ultimato.jpg', '.', 'Ação'),
	(6, 'Jurassic Park', 'JurassicPark.jpg', '.', 'Fantasia'),
	(7, 'Toy Story', 'ToyStory.jpg', '.', 'Animação'),
	(8, 'Star Wars: Uma Nova Esperança', 'StarWars.jpg', '.', 'Fantasia'),
	(9, 'O Senhor dos Anéis: A Sociedade do Anel', 'O SenhorDosAneis.jpg', '.', 'Fantasia'),
	(10, 'Procurando Nemo', 'ProcurandoNemo.jpg', '.', 'Animação');


SELECT id_user, cpf, name, email, senha
	FROM public."user" WHERE name= 'Paulo Vieira';


SELECT movie_code, title, image, description, genrer
	FROM public.movie WHERE title='A Era do Gelo';

UPDATE public.movie
	SET title='Vingadores: Ultimato', image='Vingadores.jpg', description='Após Thanos eliminar metade das
criaturas vivas, os Vingadores têm de lidar com a
perda de amigos e entes queridos. Com Tony Stark
vagando perdido no espaço sem água e comida,
Steve Rogers e Natasha Romanov lideram a
resistência contra o titã louco', genrer='Ação'
	WHERE movie_code=3;

DELETE FROM public."user"
	WHERE id_user= 2;

INSERT INTO public.favorite_movie(
	id, title, image)
	VALUES (1, 'Vingadores: Ultimato', 'Vingadores.jpg'),
	(2, 'Procurando o nemo', 'ProcurandoONemo.jpg');
