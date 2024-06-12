--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: acoes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acoes (
    id integer NOT NULL,
    ticker character varying(10) NOT NULL,
    nome character varying(100) NOT NULL,
    setordeatuacao character varying(100) NOT NULL,
    subsetordeatuacao character varying(100) NOT NULL,
    segmentodeatuacao character varying(100) NOT NULL,
    valordemercado numeric NOT NULL
);


ALTER TABLE public.acoes OWNER TO postgres;

--
-- Name: acoes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.acoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.acoes_id_seq OWNER TO postgres;

--
-- Name: acoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.acoes_id_seq OWNED BY public.acoes.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: acoes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acoes ALTER COLUMN id SET DEFAULT nextval('public.acoes_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: acoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acoes (id, ticker, nome, setordeatuacao, subsetordeatuacao, segmentodeatuacao, valordemercado) FROM stdin;
2	AALR3	Allianca Saude e Participacoes SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	1117867111
3	AMBP3	Ambipar Participacoes e Empreendmnts SA	Utilidade Pública	Água e Saneamento	Água e Saneamento	1620625688
4	ABEV3	Ambev SA	Consumo não Cíclico	Bebidas	Cervejas e Refrigerantes	204957371025
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password) FROM stdin;
1	Teste Testando	teste@example.com	$2a$10$svR5EE4NlwDJUddAgekau.5XeGRP1lTHpHBh1FPpAY4KLrKrkvA4O
\.


--
-- Name: acoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.acoes_id_seq', 4, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: acoes acoes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acoes
    ADD CONSTRAINT acoes_pkey PRIMARY KEY (id);


--
-- Name: acoes acoes_ticker_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acoes
    ADD CONSTRAINT acoes_ticker_key UNIQUE (ticker);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

