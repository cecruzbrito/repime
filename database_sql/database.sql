CREATE TABLE IF NOT EXISTS public.cidade
(
    id integer NOT NULL DEFAULT nextval('cidade_id_seq'::regclass),
    nome character varying(50) COLLATE pg_catalog."default" NOT NULL,
    pais character varying(60) COLLATE pg_catalog."default" NOT NULL,
    uf character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT cidade_pkey PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS public.foto_vaga
(
    id_vaga integer,
    foto text COLLATE pg_catalog."default",
    CONSTRAINT foto_vaga_id_vaga_fkey FOREIGN KEY (id_vaga)
        REFERENCES public.vaga (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS public.locador
(
    id integer NOT NULL DEFAULT nextval('locador_id_seq'::regclass),
    nome character varying(50) COLLATE pg_catalog."default" NOT NULL,
    senha text COLLATE pg_catalog."default" NOT NULL,
    contato text COLLATE pg_catalog."default" NOT NULL,
    foto text COLLATE pg_catalog."default",
    CONSTRAINT locador_pkey PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS public.republica
(
    id_residencia integer NOT NULL,
    nome character varying(50) COLLATE pg_catalog."default" NOT NULL,
    trotes boolean NOT NULL,
    fundacao date NOT NULL,
    CONSTRAINT republica_id_residencia_fkey FOREIGN KEY (id_residencia)
        REFERENCES public.residencia (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS public.residencia
(
    id integer NOT NULL DEFAULT nextval('residencia_id_seq'::regclass),
    tipo character varying(50) COLLATE pg_catalog."default" NOT NULL,
    id_locador integer NOT NULL,
    id_cidade integer NOT NULL,
    endereco t_endereco,
    CONSTRAINT residencia_pkey PRIMARY KEY (id),
    CONSTRAINT residencia_id_cidade_fkey FOREIGN KEY (id_cidade)
        REFERENCES public.cidade (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT residencia_id_locador_fkey FOREIGN KEY (id_locador)
        REFERENCES public.locador (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT residencia_tipo_check CHECK (tipo::text = 'republica'::text OR tipo::text = 'kitnet'::text)
);
CREATE TABLE IF NOT EXISTS public.universidade
(
    id integer NOT NULL DEFAULT nextval('universidade_id_seq'::regclass),
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    id_cidade integer NOT NULL,
    CONSTRAINT universidade_pkey PRIMARY KEY (id),
    CONSTRAINT universidade_id_cidade_fkey FOREIGN KEY (id_cidade)
        REFERENCES public.cidade (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS public.vaga
(
    id integer NOT NULL DEFAULT nextval('vaga_id_seq'::regclass),
    mensalidade numeric NOT NULL,
    informacoes_adicionais text COLLATE pg_catalog."default" DEFAULT 'Não foram fornecidas'::text,
    id_residencia integer NOT NULL,
    dt_insercao date,
    CONSTRAINT vaga_pkey PRIMARY KEY (id),
    CONSTRAINT vaga_id_residencia_fkey FOREIGN KEY (id_residencia)
        REFERENCES public.residencia (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);

CREATE OR REPLACE FUNCTION public.adiciona_locador_residencia(
	nome character varying,
	senha text,
	contato text,
	foto text,
	id_cidade integer,
	lat integer,
	long integer,
	endr character varying)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE locador_id int;
BEGIN
	
	PERFORM adicionar_locador(nome, senha, contato, foto);
	
	SELECT MAX(l.id) INTO locador_id FROM locador as l;
	
	INSERT INTO residencia (tipo, id_locador, id_cidade, endereco)
	VALUES
	('kitnet',locador_id,id_cidade,ROW(lat, long, endr));
	
	RETURN;
END;
$BODY$;

CREATE OR REPLACE FUNCTION public.adiciona_locador_residencia_republica(
	nome character varying,
	senha character varying,
	contato text,
	foto text,
	id_cidade integer,
	tipo_residencia character varying,
	lat bigint,
	long bigint,
	endr text,
	nome_republica character varying,
	trotes boolean,
	fundacao date)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE locador_id int;
DECLARE residencia_id int;
BEGIN

		PERFORM adicionar_locador(nome, senha, contato, foto);
	
	 SELECT MAX(l.id) INTO locador_id FROM locador as l;
	
	INSERT INTO residencia (tipo, id_locador, id_cidade, endereco)
	VALUES
	(tipo_residencia,locador_id,id_cidade,ROW(lat, long, endr));
	
	 SELECT MAX(r.id) INTO residencia_id FROM residencia as r;
	
	INSERT INTO republica (id_residencia, nome, trotes, fundacao) VALUES
	(residencia_id,nome_republica,trotes,fundacao);
	
	RETURN ;
END;
$BODY$;

CREATE OR REPLACE FUNCTION public.adicionar_locador(
	nome character varying,
	senha character varying,
	contato text,
	foto text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

CREATE EXTENSION IF NOT EXISTS pgcrypto;

INSERT INTO locador (nome, senha, contato, foto) 
VALUES (nome,crypt(senha, gen_salt('bf')),contato,foto);

END;
$BODY$;

CREATE OR REPLACE FUNCTION public.adicionarvaga(
	mens text,
	informacoes text,
	idr integer,
	fotos text[])
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE f text;
DECLARE id_vaga int;
BEGIN
	INSERT INTO vaga (mensalidade, informacoes_adicionais, id_residencia,dt_insercao) VALUES (mens :: money,informacoes,idR, CURRENT_DATE);
	SELECT MAX(id) INTO id_vaga FROM vaga;
	
	foreach f in array fotos
	loop
		INSERT INTO foto_vaga (id_vaga, foto) VALUES (id_vaga,f);
	end loop;
END;
$BODY$;

CREATE OR REPLACE FUNCTION public.check_locador(
	nome_locador character varying,
	senha_locador character varying)
    RETURNS SETOF locador 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
--CREATE EXTENSION IF NOT EXISTS pgcrypto;

RETURN QUERY SELECT l.id, l.nome, '' as senha,l.contato,l.foto   FROM locador as l WHERE l.nome = nome_locador AND l.senha = crypt(senha_locador, l.senha) LIMIT 1;

END;
$BODY$;