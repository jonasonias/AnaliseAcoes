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
    ticker character varying(10) NOT NULL,
    nome character varying(100) NOT NULL,
    setordeatuacao character varying(100) NOT NULL,
    subsetordeatuacao character varying(100) NOT NULL,
    segmentodeatuacao character varying(100) NOT NULL,
    valordemercado numeric NOT NULL
);


ALTER TABLE public.acoes OWNER TO postgres;

--
-- Name: dy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dy (
    ticker character varying(10) NOT NULL,
    "2023" numeric,
    "2022" numeric,
    "2021" numeric,
    "2020" numeric,
    "2019" numeric,
    "2018" numeric,
    "2017" numeric,
    "2016" numeric,
    "2015" numeric,
    "2014" numeric,
    "2013" numeric,
    "2012" numeric,
    "2011" numeric,
    "2010" numeric,
    "2009" numeric,
    "2008" numeric
);


ALTER TABLE public.dy OWNER TO postgres;

--
-- Name: pegratio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pegratio (
    ticker character varying(10),
    "2023" numeric,
    "2022" numeric,
    "2021" numeric,
    "2020" numeric,
    "2019" numeric,
    "2018" numeric,
    "2017" numeric,
    "2016" numeric,
    "2015" numeric,
    "2014" numeric,
    "2013" numeric,
    "2012" numeric,
    "2011" numeric,
    "2010" numeric,
    "2009" numeric,
    "2008" numeric
);


ALTER TABLE public.pegratio OWNER TO postgres;

--
-- Name: pl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pl (
    ticker character varying(10),
    "2023" numeric,
    "2022" numeric,
    "2021" numeric,
    "2020" numeric,
    "2019" numeric,
    "2018" numeric,
    "2017" numeric,
    "2016" numeric,
    "2015" numeric,
    "2014" numeric,
    "2013" numeric,
    "2012" numeric,
    "2011" numeric,
    "2010" numeric,
    "2009" numeric,
    "2008" numeric
);


ALTER TABLE public.pl OWNER TO postgres;

--
-- Name: pvp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pvp (
    ticker character varying(10),
    "2023" numeric,
    "2022" numeric,
    "2021" numeric,
    "2020" numeric,
    "2019" numeric,
    "2018" numeric,
    "2017" numeric,
    "2016" numeric,
    "2015" numeric,
    "2014" numeric,
    "2013" numeric,
    "2012" numeric,
    "2011" numeric,
    "2010" numeric,
    "2009" numeric,
    "2008" numeric
);


ALTER TABLE public.pvp OWNER TO postgres;

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
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: acoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acoes (ticker, nome, setordeatuacao, subsetordeatuacao, segmentodeatuacao, valordemercado) FROM stdin;
ABCB4	Banco ABC Brasil SA	Financeiro e Outros	Intermediários Financeiros	Bancos	4322843056.00
AALR3	Allianca Saude e Participacoes SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	1117867111
AMBP3	Ambipar Participacoes e Empreendmnts SA	Utilidade Pública	Água e Saneamento	Água e Saneamento	1620625688
ABEV3	Ambev SA	Consumo não Cíclico	Bebidas	Cervejas e Refrigerantes	204957371025
ADHM3	Advanced Digital Health Medicina Preventiva	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	25439770
AERI3	Aeris ndstr  Cmrc d qpmnts pr Grc d nrg	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	635957168.00
AESB3	Aes Brasil Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	6115581480.00
AFLT3	Afluente Transmissao de Energia Eltrc SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	485752190.00
AGRO3	BrasilAgro Braziln Agrclturl Real Est Co	Consumo não Cíclico	Agropecuária	Agricultura	2520878550.00
AGXY3	Agrogalaxy Participacoes SA	Consumo não Cíclico	Agropecuária	Agricultura	666217457.00
AHEB3	Sao Paulo Turismo SA	Consumo Cíclico	Viagens e Lazer	Produção de Eventos e Shows	136782554.00
AHEB5	Sao Paulo Turismo SA Preference Shares Class A	Consumo Cíclico	Viagens e Lazer	Produção de Eventos e Shows	136782554.00
AHEB6	Sao Paulo Turismo SA Preference Shares Class B	Consumo Cíclico	Viagens e Lazer	Produção de Eventos e Shows	136782554.00
ALLD3	Allied Tecnologia SA	Consumo Cíclico	Comércio	Eletrodomésticos	545340405.00
ALOS3	Allos SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	13275160705.00
ALPA3	Alpargatas SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	5870899594.00
ALPA4	Alpargatas SA Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	5870899594.00
ALPK3	Allpark Empreendimentos Prtcpcs Srvcs SA	Bens Industriais	Serviços	Serviços Diversos	907024192.00
ALSC3	Aliansce Shopping Centers	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	5694242308.00
ALUP11	Alupar Investimento SA Unit	Utilidade Pública	Energia Elétrica	Energia Elétrica	8606381960.00
ALUP3	Alupar Investimento SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	8606381960.00
ALUP4	Alupar Investimento SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	8606381960.00
AMAR3	Marisa Lojas SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	170735769.00
AMER3	Americanas SA - Em Recuperacao Judicial	Consumo Cíclico	Comércio	Produtos Diversos	749099487.00
ANDG3B	Andrade Gutierrez Concessoes	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	1651867986.00
ANDG4B	Andrade Gutierrez Concessoes	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	1651867986.00
ANIM3	Anima Holding SA	Consumo Cíclico	Diversos	Serviços Educacionais	1078329709.00
APER3	Alper Consultoria e Corretora deSegursSA	Financeiro e Outros	Previdência e Seguros	Corretoras de Seguros	377696409.00
APTI3	Siderurgica JL Aliperti SA	Consumo não Cíclico	Agropecuária	Agricultura	44442750.00
APTI4	Siderurgica JL Aliperti SA Preference Shares	Consumo não Cíclico	Agropecuária	Agricultura	44442750.00
ARML3	Armac Locacao Logistica e Servicos SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	4342501315.00
ARZZ3	Arezzo Industria E Comercio SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	6468450926.00
ASAI3	Sendas Distribuidora SA	Consumo não Cíclico	Comércio e Distribuição	Alimentos	15098232090.00
ATMP3	ATMA Participacoes SA - em Recuprc Jdcl	Bens Industriais	Serviços	Serviços Diversos	85473139.00
ATOM3	ATOM Empreendimentos e Participacoes SA	Financeiro e Outros	Outros	Outros	46419551.00
AURA33	Aura Minerals Bdr	Materiais Básicos	Mineração	Minerais Metálicos	2274370089.00
AURE3	Auren Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	13480000000.00
AVLL3	Alphaville SA	Consumo Cíclico	Construção Civil	Incorporações	117322373.00
AZEV3	Azevedo & Travassos SA	Bens Industriais	Construção e Engenharia	Construção Pesada	170478110.00
AZEV4	Azevedo & Travassos SA Preference Shares	Bens Industriais	Construção e Engenharia	Construção Pesada	170478110.00
AZUL4	Azul SA	Bens Industriais	Transporte	Transporte Aéreo	4528567750.00
B3SA3	B3 SA Brasil Bolsa Balcao	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	672676
BAHI3	Bahema Educacao SA	Consumo Cíclico	Diversos	Serviços Educacionais	237515238.00
BALM3	Baumer SA	Saúde	Equipamentos	Equipamentos	98588000.00
BALM4	Baumer SA Preference Shares	Saúde	Equipamentos	Equipamentos	98588000.00
BAUH4	Excelsior Alimentos SA Preference Shares	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	370255540.00
BAZA3	Banco da Amazonia SA	Financeiro e Outros	Intermediários Financeiros	Bancos	4427485719.00
BBAS3	Banco do Brasil SA	Financeiro e Outros	Intermediários Financeiros	Bancos	139345229683.00
BBDC3	Banco Bradesco SA	Financeiro e Outros	Intermediários Financeiros	Bancos	141685468692.00
BBDC4	Banco Bradesco SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	141685468692.00
BBML3	BBM Logistica SA	Bens Industriais	Serviços	Serviços Diversos	160451699192.00
BBSE3	BB Seguridade Participacoes SA	Financeiro e Outros	Previdência e Seguros	Seguradoras	62600000000.00
BDLL3	Bardella SA Industrias Mecanicas	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	14510788.00
BDLL4	Bardella SA Industrias Mecanicas Preference Shares	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	14510788.00
BEEF11	Minerva SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	4627499561.00
BEEF3	Minerva SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	4627499561.00
BEES3	Banestes SA Banco do Estado Esprt Santo	Financeiro e Outros	Intermediários Financeiros	Bancos	2743944558.00
BEES4	Banestes SA Banco do Estado Esprt Santo Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	2743944558.00
BFRE11	Brazilian Finance e Real Estate	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	0.00
BFRE12	Brazilian Finance e Real Estate	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	0.00
BGIP3	Banco do Estado de Sergipe SA	Financeiro e Outros	Intermediários Financeiros	Bancos	414703689.00
BGIP4	Banco do Estado de Sergipe SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	414703689.00
BHIA3	Grupo Casas Bahia SA	Consumo Cíclico	Comércio	Eletrodomésticos	1093457063.00
BIDI11	Banco Inter	Financeiro e Outros	Intermediários Financeiros	Bancos	8991139765.00
BIDI3	Banco Inter	Financeiro e Outros	Intermediários Financeiros	Bancos	8991139765.00
BIDI4	Banco Inter	Financeiro e Outros	Intermediários Financeiros	Bancos	8991139765.00
BIOM3	Biomm SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	417880520.00
BLAU3	Blau Farmaceutica SA	Saúde	Medicamentos e Outros Produtos	Medicamentos e Outros Produtos	2816484842.00
BLUT3	Blue Tech Solutions	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	14115600.00
BLUT4	Blue Tech Solutions	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	14115600.00
BMEB3	Banco Mercantil do Brasil SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1361157991.00
BMEB4	Banco Mercantil do Brasil SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	1361157991.00
BMGB4	Banco BMG Sa	Financeiro e Outros	Intermediários Financeiros	Bancos	1341434545.00
BMIN3	Banco Mercantil de Investimentos SA	Financeiro e Outros	Intermediários Financeiros	Bancos	109787350.00
BMIN4	Banco Mercantil de Investimentos SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	109787350.00
BMKS3	Bicicletas Monark SA	Consumo Cíclico	Viagens e Lazer	Bicicletas	140108475.00
BMOB3	Bemobi Mobile Tech SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	1070145412.00
BNBR3	Banco do Nordeste do Brasil SA	Financeiro e Outros	Intermediários Financeiros	Bancos	7954811834.00
BOAS3	Boa Vista Serviços SA	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	4212250618.00
BOBR3	Bombril SA	Consumo não Cíclico	Produtos de Uso Pessoal e de Limpeza	Produtos de Limpeza	195402195.00
BOBR4	Bombril SA Preference Shares	Consumo não Cíclico	Produtos de Uso Pessoal e de Limpeza	Produtos de Limpeza	195402195.00
BPAC11	Banco BTG Pactual SA Unit	Financeiro e Outros	Intermediários Financeiros	Bancos	114102355953.00
BPAC3	Banco BTG Pactual SA	Financeiro e Outros	Intermediários Financeiros	Bancos	114102355953.00
BPAC5	Banco BTG Pactual SA Preference Shares Class A	Financeiro e Outros	Intermediários Financeiros	Bancos	114102355953.00
BPAN4	Banco Pan SA	Financeiro e Outros	Intermediários Financeiros	Bancos	9154302744.00
BPAR3	Banco do Estado do Para SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1733606633.00
BPAT33	Banco Patagonia	Financeiro e Outros	Intermediários Financeiros	Bancos	1533769021.00
BPHA3	Brasil Pharma	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	70110299.00
BRAP3	Bradespar SA	Materiais Básicos	Mineração	Minerais Metálicos	8981317856.00
BRAP4	Bradespar SA Preference Shares	Materiais Básicos	Mineração	Minerais Metálicos	8981317856.00
BRBI11	BR Advisory Partners Participacoes SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1228449737.00
BRBI3	BR Advisory Partners Participacoes SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1228449737.00
BRBI4	BR Advisory Partners Participacoes SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1228449737.00
BRFS3	BRF SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	18843700355.00
BRGE11	Consorcio Alfa de Administracao SA Preference Shares Series E	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
BRGE12	Consorcio Alfa de Administracao SA Preference Shares Series F	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
BRGE3	Consorcio Alfa de Administracao SA	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
BRGE5	Consorcio Alfa de Administracao SA Preference Shares Series A	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
BRGE6	Consorcio Alfa De Administracao Series B Pref Shs	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
BRGE7	Consorcio Alfa De Administracao Series C Pref Shs	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
BRGE8	Consorcio Alfa De Administracao Series D Pref Shs	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
CEPE6	CELPE	Utilidade Pública	Energia Elétrica	Energia Elétrica	8662392210.00
BRIN3	BR Insurance	Financeiro e Outros	Previdência e Seguros	Corretoras de Seguros	765840712.00
BRIT3	Brisanet Participacoes SA	Comunicações	Telecomunicações	Telecomunicações	1387703290.00
BRIV3	Banco Alfa de Investimento SA	Financeiro e Outros	Intermediários Financeiros	Bancos	930538036.00
BRIV4	Banco Alfa de Investimento SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	930538036.00
BRKM3	Braskem SA	Materiais Básicos	Químicos	Petroquímicos	13615594226.00
BRKM5	Braskem SA Preference Shares Series A	Materiais Básicos	Químicos	Petroquímicos	13615594226.00
BRKM6	Braskem SA Preference Shares Series B	Materiais Básicos	Químicos	Petroquímicos	13615594226.00
BRML3	BR Malls	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	6841542282.00
BRPR3	BR Properties	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	60919545.00
BRQB3	BRQ Solucoes em Informatica SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	0.00
BRSR3	Banco do Estado do Rio Grande do Sul SA	Financeiro e Outros	Intermediários Financeiros	Bancos	4676975482.00
BRSR5	Banco do Estado do Rio Grande do Sul A Pref Shs	Financeiro e Outros	Intermediários Financeiros	Bancos	4676975482.00
BRSR6	Banco do Estado do Rio Grande do Sul B Pref Shs	Financeiro e Outros	Intermediários Financeiros	Bancos	4676975482.00
BSEV3	Biosev	Consumo não Cíclico	Alimentos Processados	Açucar e Alcool	9183864834.00
BSLI3	BRB-Banco de Brasilia SA	Financeiro e Outros	Intermediários Financeiros	Bancos	4746762400.00
BSLI4	BRB-Banco de Brasilia SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	4746762400.00
BTTL4	Embpar Participações SA	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	227961113.00
CALI3	Construtora Adolpho Lindenberg SA	Consumo Cíclico	Construção Civil	Incorporações	61023924.00
CALI4	Construtora Adolpho Lindenberg SA	Consumo Cíclico	Construção Civil	Incorporações	61023924.00
CAMB3	Cambuci Ord Shs	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	422750800.00
CAMB4	Cambuci Ord Shs	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	422750800.00
CAML3	Camil Alimentos SA	Consumo não Cíclico	Alimentos Processados	Alimentos Diversos	2583000000.00
CASH3	Meliuz SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	649203885.00
CASN3	Companhia Catarinense d Ags e Smnt CASAN	Utilidade Pública	Água e Saneamento	Água e Saneamento	9343450887.00
CASN4	Companhia Catarinense d Ags e Smnt CASAN Preference Shares	Utilidade Pública	Água e Saneamento	Água e Saneamento	9343450887.00
CATA3	Companhia Industrial Cataguases	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	14940355.00
CATA4	Companhia Industrial Cataguases Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	14940355.00
CBAV3	Companhia Brasileira de Aluminio	Materiais Básicos	Mineração	Minerais Metálicos	2502499999.00
CBEE3	Ampla Energia e Servicos SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	3603148815.00
CCRO3	CCR SA	Bens Industriais	Transporte	Exploração de Rodovias	25209600000.00
CCXC3	CCX	Financeiro e Outros	Outros	Outros	1973426.00
CEAB3	C&A Modas SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	1781656493.00
CEBR3	Companhia Energetica de Brasilia CEB	Utilidade Pública	Energia Elétrica	Energia Elétrica	1096789973.00
CEBR5	Companhia Energetica de Brasilia CEB Preference Shares Series A	Utilidade Pública	Energia Elétrica	Energia Elétrica	1096789973.00
CEBR6	Companhia Energetica de Brasilia CEB Preference Shares Series B	Utilidade Pública	Energia Elétrica	Energia Elétrica	1096789973.00
CEDO3	Companhia de Fc  Tcds Cdr Cchr	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	174419235.00
CEDO4	Companhia de Fc  Tcds Cdr Cchr Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	174419235.00
CEEB3	Companhia de ltrcdd d std d Bh Clb	Utilidade Pública	Energia Elétrica	Energia Elétrica	12228688374.00
CEEB5	Companhia de Eletrecidade do Estado da Bahia COELBA Pref Shs	Utilidade Pública	Energia Elétrica	Energia Elétrica	12228688374.00
CEEB6	Companhia de Eletrecidade do Estado da Bahia COELBA Pref Shs	Utilidade Pública	Energia Elétrica	Energia Elétrica	12228688374.00
CEED3	Companhia Estadual de Distribuicao	Utilidade Pública	Energia Elétrica	Energia Elétrica	2522243225.00
CEED4	Companhia Estadual de Distribuicao Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	2522243225.00
CEGR3	Companhia Distribuidora d Gs d RdJnr CEG	Utilidade Pública	Gás	Gás	22931204490.00
CEPE3	CELPE	Utilidade Pública	Energia Elétrica	Energia Elétrica	8662392210.00
CEPE5	CELPE	Utilidade Pública	Energia Elétrica	Energia Elétrica	8662392210.00
CESP3	CESP	Utilidade Pública	Energia Elétrica	Energia Elétrica	8302192834.00
CESP5	CESP	Utilidade Pública	Energia Elétrica	Energia Elétrica	8302192834.00
CESP6	CESP	Utilidade Pública	Energia Elétrica	Energia Elétrica	8302192834.00
CGAS3	Companhia de Gas de Sao Paulo - COMGAS	Utilidade Pública	Gás	Gás	15866689882.00
CGAS5	Companhia de Gas de Sao Paulo - COMGAS Preference Shares	Utilidade Pública	Gás	Gás	15866689882.00
CGRA3	Grazziotin SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	519340641.00
CGRA4	Grazziotin SA Preference Shares	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	519340641.00
CIEL3	CIELO SA Instituicao de Pagamento	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	10242392780.00
CLSA3	Clear Sale SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	742307937.00
CLSC3	Centrais Eletricas d Snt Ctrn S Clsc	Utilidade Pública	Energia Elétrica	Energia Elétrica	2348313899.00
CLSC4	Centrais Eletricas d Snt Ctrn S Clsc Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	2348313899.00
CMIG3	Energy of Minas Gerais Co	Utilidade Pública	Energia Elétrica	Energia Elétrica	31231497612.00
CMIG4	Energy of Minas Gerais Co Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	31231497612.00
CMIN3	CSN Mineracao SA	Materiais Básicos	Mineração	Minerais Metálicos	31650405095.00
CMSA3	Cims SA	Financeiro e Outros	Outros	Outros	0.00
CMSA4	Cims SA Preference Shares	Financeiro e Outros	Outros	Outros	0.00
CNSY3	Cinesystem SA	Consumo Cíclico	Mídia	Produção e Difusão de Filmes e Programas	935885084.00
COCE3	Companhia Energetica do Ceara	Utilidade Pública	Energia Elétrica	Energia Elétrica	2974901259.00
COCE5	Companhia Energetica do Ceara Preference Shares Series A	Utilidade Pública	Energia Elétrica	Energia Elétrica	2974901259.00
COCE6	Companhia Energetica do Ceara Preference Shares Series B	Utilidade Pública	Energia Elétrica	Energia Elétrica	2974901259.00
COGN3	Cogna Educacao SA	Consumo Cíclico	Diversos	Serviços Educacionais	4897942208.00
CORR3	Correa Ribeiro SA Comercio e Industria	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	1278895.00
CORR4	Correa Ribeiro SA Comercio e Industria Preference Shares	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	1278895.00
CPFE3	CPFL Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	40455653388.00
CPLE11	Companhia Paranaense de Energia	Utilidade Pública	Energia Elétrica	Energia Elétrica	26320320655.00
CPLE3	Companhia Paranaense de Energia	Utilidade Pública	Energia Elétrica	Energia Elétrica	26320320655.00
CPLE5	Companhia Paranaense de Energia Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	26320320655.00
CPLE6	Cia Paranaense De Energia Copel Pref Shs	Utilidade Pública	Energia Elétrica	Energia Elétrica	26320320655.00
CPRE3	CPFL Energias Renováveis	Utilidade Pública	Energia Elétrica	Energia Elétrica	10824655048.00
CREM3	Cremer	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	465122474.00
CRFB3	Atacadao SA	Consumo não Cíclico	Comércio e Distribuição	Alimentos	22658469783.00
CRIV3	Financeira Alfa SA CFI	Financeiro e Outros	Intermediários Financeiros	Soc. Crédito e Financiamento	580722825.00
CRIV4	Financeira Alfa SA CFI Preference Shares	Financeiro e Outros	Intermediários Financeiros	Soc. Crédito e Financiamento	580722825.00
CRPG3	Tronox Pigmentos do Brasil SA	Materiais Básicos	Químicos	Químicos Diversos	1217778880.00
CRPG5	Tronox Pigmentos do Brasil SA Preference Shares Series A	Materiais Básicos	Químicos	Químicos Diversos	1217778880.00
CRPG6	Tronox Pigmentos do Brasil SA Preference Shares Series B	Materiais Básicos	Químicos	Químicos Diversos	1217778880.00
CSAB3	Cia Seguros Aliança da Bahia	Financeiro e Outros	Previdência e Seguros	Seguradoras	301440000.00
CSAB4	Cia Seguros Aliança da Bahia	Financeiro e Outros	Previdência e Seguros	Seguradoras	301440000.00
CSAN3	Cosan SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	32871204147.00
CSED3	Cruzeiro do Sul Educacional SA	Consumo Cíclico	Diversos	Serviços Educacionais	1523252321.00
CSMG3	Companhia de Saneamento d Mns Grs CPS MG	Utilidade Pública	Água e Saneamento	Água e Saneamento	6897790672.00
CSNA3	Companhia Siderurgica Nacional SA	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	16841393127.00
CSRN3	Companhia Enrgtca do Ro Grnd do Nrt Csrn	Utilidade Pública	Energia Elétrica	Energia Elétrica	4446580346.00
CSRN5	Companhia Enrgtca do Ro Grnd do Nrt Csrn Preference Shares Series A	Utilidade Pública	Energia Elétrica	Energia Elétrica	4446580346.00
CSRN6	Companhia Enrgtca do Ro Grnd do Nrt Csrn Preference Shares Series B	Utilidade Pública	Energia Elétrica	Energia Elétrica	4446580346.00
CSUD3	CSU Digital SA	Bens Industriais	Serviços	Serviços Diversos	714362000.00
CTCA3	CTC Centro de Tecnologia Canavieira SA	Consumo não Cíclico	Agropecuária	Agricultura	0.00
CTKA3	Karsten SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	106706294.00
CTKA4	Karsten SA Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	106706294.00
CTNM3	Companhia de Tecidos Nrt d Mns COTEMINAS	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	146849179.00
CTNM4	Companhia de Tecidos Nrt d Mns COTEMINAS Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	146849179.00
CTSA3	Companhia Tecidos Santanense	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	62605757.00
CTSA4	Companhia Tecidos Santanense Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	62605757.00
CTSA8	Companhia Tecidos Santanense	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	62605757.00
CURY3	Cury Construtora E Incorporadora SA	Consumo Cíclico	Construção Civil	Incorporações	4769238938.00
CVCB3	CVC Brasil Operadora e Agencia d Vgns SA	Consumo Cíclico	Viagens e Lazer	Viagens e Turismo	1398329021.00
CXSE3	Caixa Seguridade Participacoes SA	Financeiro e Outros	Previdência e Seguros	Corretoras de Seguros	33540000000.00
CYRE3	Cyrela Brazil Realty SA Emprdts e Prtpcs	Consumo Cíclico	Construção Civil	Incorporações	8062812256.00
DASA3	Diagnosticos da America SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	7896870364.00
DESK3	Desktop SA	Comunicações	Telecomunicações	Telecomunicações	1824650411.00
DEXP3	Dexxos Participacoes SA	Materiais Básicos	Químicos	Petroquímicos	930800583.00
DEXP4	Dexxos Participacoes SA Preference Shares	Materiais Básicos	Químicos	Petroquímicos	930800583.00
DIRR3	Direcional Engenharia SA	Consumo Cíclico	Construção Civil	Incorporações	3348550000.00
DMMO11	Dommo Energia	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	949254731
DMMO3	Dommo Energia	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	949254731
DMVF3	D1000 Varejo Farma Participacoes SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	222652505
DOHL3	Dohler SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	500927417
DOHL4	Dohler SA Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	500927417
DOTZ3	Dotz SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	138671770
DTCY3	Dtcom Direct to Company S/A	Bens Industriais	Serviços	Serviços Diversos	82254212
DTCY4	Dtcom Direct to Company S/A Preference Shares	Bens Industriais	Serviços	Serviços Diversos	82254212
DXCO3	Dexco SA	Materiais Básicos	Madeira e Papel	Madeira	5784992034
EALT3	Electro Aco Altona SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	177232500
EALT4	Electro Aco Altona SA Preference Shares	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	177232500
ECOR3	Ecorodovias Infraestrutura e Logistca SA	Bens Industriais	Transporte	Exploração de Rodovias	5514967054
ECPR3	Encorpar	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	171908947
ECPR4	Encorpar	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	171908947
EEEL3	CEEE-GT	Utilidade Pública	Energia Elétrica	Energia Elétrica	2840511500
EEEL4	CEEE-GT	Utilidade Pública	Energia Elétrica	Energia Elétrica	2840511500
EGIE3	Engie Brasil Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	33453037340
EKTR3	Elektro Redes SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	6772119466
EKTR4	Elektro Redes SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	6772119466
ELEK3	Elekeiroz	Materiais Básicos	Químicos	Petroquímicos	905051916
ELEK4	Elekeiroz	Materiais Básicos	Químicos	Petroquímicos	905051916
ELET3	Brazilian Electric Power Co	Utilidade Pública	Energia Elétrica	Energia Elétrica	89193411461
ELET5	Brazilian Electric Power Co Preference Shares Series A	Utilidade Pública	Energia Elétrica	Energia Elétrica	89193411461
ELET6	Brazilian Electric Power Co Preference Shares Series B	Utilidade Pública	Energia Elétrica	Energia Elétrica	89193411461
ELMD3	Eletromidia SA	Comunicações	Mídia	Publicidade	2238340210
ELPL3	Eletropaulo	Utilidade Pública	Energia Elétrica	Energia Elétrica	1640949623
EMAE3	EMAE Empresa Metropltn de Agus e Enrg SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	1685042256
EMAE4	EMAE Empresa Metropltn de Agus e Enrg SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	1685042256
EMBR3	Embraer SA	Bens Industriais	Material de Transporte	Material Aeronáutico e de Defesa	13868910274
ENAT3	Enauta Participacoes SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	4367207449
ENBR3	EDP Brasil	Utilidade Pública	Energia Elétrica	Energia Elétrica	13994459653
ENEV3	Eneva SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	18729645508
ENGI11	Energisa SA Unit	Utilidade Pública	Energia Elétrica	Energia Elétrica	19632325207
ENGI3	Energisa SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	19632325207
ENGI4	Energisa SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	19632325207
ENJU3	Enjoei SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	328261553
ENMA3B	CEMAR	Utilidade Pública	Energia Elétrica	Energia Elétrica	0
ENMA6B	CEMAR	Utilidade Pública	Energia Elétrica	Energia Elétrica	0
ENMT3	Energisa Mato Grosso Distrbdr de Enrg SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	13900711520
ENMT4	Energisa Mato Grosso Distrbdr de Enrg SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	13900711520
EPAR3	Embpar Participacoes SA	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	227663902
EQPA3	Equatorial Para Dist De Energia Ord Shs	Utilidade Pública	Energia Elétrica	Energia Elétrica	14141191051
EQPA5	Equatorial Para Distribuidra de Enrga SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	14141191051
EQPA6	Equatorial Para Dist Energia Prf Shs B	Utilidade Pública	Energia Elétrica	Energia Elétrica	14141191051
EQPA7	Equatorial Para Dist Energia Prf Shs C	Utilidade Pública	Energia Elétrica	Energia Elétrica	14141191051.00
EQTL3	Equatorial Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	38346223921.00
ESPA3	MPM Corporeos SA	Consumo não Cíclico	Produtos de Uso Pessoal e de Limpeza	Produtos de Uso Pessoal	459007294.00
ESTR3	Manufatura de Brinquedos Estrela SA	Consumo Cíclico	Viagens e Lazer	Brinquedos e Jogos	64668000.00
ESTR4	Manufatura de Brinquedos Estrela SA Preference Shares	Consumo Cíclico	Viagens e Lazer	Brinquedos e Jogos	64668000.00
ETER3	Eternit SA em Recuperacao Judicial	Bens Industriais	Construção e Engenharia	Produtos para Construção	543633860.00
EUCA3	Eucatex SA Industria e Comercio	Materiais Básicos	Madeira e Papel	Madeira	1236650644.00
EUCA4	Eucatex SA Industria e Comercio Preference Shares	Materiais Básicos	Madeira e Papel	Madeira	1236650644.00
EVEN3	Even Construtora e Incorporadora S/A	Consumo Cíclico	Construção Civil	Incorporações	1402000000.00
EZTC3	EZ TEC Empreendimentos e Participaces SA	Consumo Cíclico	Construção Civil	Incorporações	3668419110.00
FBMC3	FIBAM	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	904254.00
FBMC4	FIBAM	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	904254.00
FESA3	Companhia de Ferro Ligas da Bah Frbs	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	4686259200.00
FESA4	Companhia de Ferro Ligas da Bah Frbs Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	4686259200.00
FHER3	Fertilizantes Heringer SA	Materiais Básicos	Químicos	Fertilizantes e Defensivos	407161067.00
FIBR3	Fibria Celulose	Materiais Básicos	Madeira e Papel	Papel e Celulose	36712556310.00
FIEI3	FICA Empreendimentos Imobiliarios SA	Consumo Cíclico	Construção Civil	Incorporações	34370351.00
FIGE3	Investimentos Bemge SA	Financeiro e Outros	Outros	Outros	9497567.00
FIGE4	Investimentos Bemge SA Preference Shares	Financeiro e Outros	Outros	Outros	9497567.00
FIQE3	Unifique Telecomunicacoes S/A	Comunicações	Telecomunicações	Telecomunicações	1285276112.00
FLEX3	Flex Relacionamentos Inteligentes	Bens Industriais	Serviços	Serviços Diversos	0
FLRY3	Fleury SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	9066955301.00
FNCN3	Finansinos SA  credito financ e invest	Financeiro e Outros	Intermediários Financeiros	Soc. Crédito e Financiamento	13021337.00
FRAS3	Fras Le SA	Bens Industriais	Material de Transporte	Material Rodoviário	4341862795.00
FRIO3	Metalfrio Solutions SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	209444454.00
FRTA3	Pomi Frutas SA - em Recuperacao Judicial	Consumo não Cíclico	Agropecuária	Agricultura	4476861.00
FTRT3B	Futuretel	Financeiro e Outros	Outros	Outros	0.00
G2DI33	G2D Investments Ltd	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	219757701.00
GBIO33	Biotoscana	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	1108871982.00
GEPA3	Rio Paranapanema Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	2433545703.00
GEPA4	Rio Paranapanema Energia SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	2433545703.00
GETT11	GETNET	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	0
GETT3	GETNET	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	0
GETT4	GETNET	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	0
GFSA3	Gafisa SA	Consumo Cíclico	Construção Civil	Incorporações	342870170.00
GGBR3	Gerdau SA	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	38855851083.00
GGBR4	Gerdau SA Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	38855851083.00
GGPS3	GPS Participacoes e Empreendimentos SA	Bens Industriais	Transporte	Logística	11520998376.00
GMAT3	Grupo Mateus SA	Consumo não Cíclico	Comércio e Distribuição	Alimentos	14095627984.00
GNDI3	Notre Dame Intermedica	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	41526443086.00
GOAU3	Metalurgica Gerdau SA	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	11459222148.00
GOAU4	Metalurgica Gerdau SA Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	11459222148.00
GOLL4	Gol Linhas Aereas Inteligentes SA Preference Shares	Bens Industriais	Transporte	Transporte Aéreo	3450408569.00
GPAR3	Companhia Celg de Participacoes Celgpar	Utilidade Pública	Energia Elétrica	Energia Elétrica	3983825100.00
GPIV33	GP Investments Limited	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	127575390.00
GRAO3	Humberg Agribrasil Cmrc E Exp De Grs Sa	Consumo não Cíclico	Agropecuária	Agricultura	0.00
GRND3	Grendene SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	6125666400.00
GSHP3	General Shopping e Outlets do Brasil SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	29895920.00
GUAR3	Guararapes Confeccoes SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	2780544000.00
GUAR4	Guararapes Confeccoes SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	2780544000.00
HAGA3	Haga SA Industria e Comercio	Bens Industriais	Construção e Engenharia	Produtos para Construção	21102667.00
HAGA4	Haga SA Industria e Comercio Preference Shares	Bens Industriais	Construção e Engenharia	Produtos para Construção	21102667.00
HAPV3	Hapvida Participacoes e Investimentos SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	32721270561.00
HBOR3	Helbor Empreendimentos SA	Consumo Cíclico	Construção Civil	Incorporações	368090448.00
HBRE3	HBR Realty Empreendimentos Imobiliars SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	515944905.00
HBSA3	Hidrovias do Brasil SA	Bens Industriais	Transporte	Transporte Hidroviário	2904661696.00
HBTS5	Companhia Habitasul de Participacoes Preference Shares	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	474951724.00
HETA3	Hercules SA - Fabrica de Talheres	Consumo Cíclico	Utilidades Domésticas	Utensílios Domésticos	18532186.00
HETA4	Hercules SA - Fabrica de Talheres Preference Shares	Consumo Cíclico	Utilidades Domésticas	Utensílios Domésticos	18532186.00
HGTX3	CIA Hering	Consumo Cíclico	Tecidos. Vestuário e Calçados	Vestuário	6095022638.00
HOOT3	Hoteis Othon SA -em Recuperacao Judicial	Consumo Cíclico	Hoteis e Restaurantes	Hotelaria	22104583.00
HOOT4	Hoteis Othon SA -em Recuperacao Judicial Preference Shares	Consumo Cíclico	Hoteis e Restaurantes	Hotelaria	22104583.00
HYPE3	Hypera SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	20738197745.00
IDVL3	Banco Indusval	Financeiro e Outros	Intermediários Financeiros	Bancos	224007574.00
IDVL4	Banco Indusval	Financeiro e Outros	Intermediários Financeiros	Bancos	224007574.00
IFCM3	Infracommerce CXaaS SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	557763139.00
IGBR3	IGB Eletrônica	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	220074791.00
IGSN3	Igua Saneamento SA	Utilidade Pública	Água e Saneamento	Água e Saneamento	0.00
IGTA3	Iguatemi Empresa de Shopping Centers	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	5758073079.00
PATI3	Panatlantica SA	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	698139845.00
IGTI11	Iguatemi SA Unit	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	5538366359.00
IGTI3	Iguatemi SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	5538366359.00
IGTI4	Iguatemi SA Preference Shares	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	5538366359.00
INEP3	Inepr SA Indstr e Constrs em Rcprco Jdcl	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	167401753.00
INEP4	Inepr SA Indstr e Constrs em Rcprco Jdcl Preference Shares	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	167401753.00
INNT3	Inter Construtora e Incorporadora SA	Consumo Cíclico	Construção Civil	Incorporações	0.00
INTB3	Intelbras SA IndustrdTlcmnccEltrncBrslr	Tecnologia da Informação	Computadores e Equipamentos	Computadores e Equipamentos	6398244978.00
IRBR3	IRB-Brasil Resseguros SA	Financeiro e Outros	Previdência e Seguros	Seguradoras	3532373735.00
ITEC3	Itautec	Tecnologia da Informação	Computadores e Equipamentos	Computadores e Equipamentos	443994659.00
ITSA3	Itausa SA	Financeiro e Outros	Intermediários Financeiros	Bancos	90944558848.00
ITSA4	Itausa SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	90944558848.00
ITUB3	Itau Unibanco Holding SA	Financeiro e Outros	Intermediários Financeiros	Bancos	263435402597.00
ITUB4	Itau Unibanco Holding SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	263435402597.00
JALL3	Jalles Machado SA	Consumo não Cíclico	Alimentos Processados	Açucar e Alcool	2570999588.00
JBSS3	JBS SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	47600777300.00
JFEN3	Joao Fortes Engenharia S.A.	Consumo Cíclico	Construção Civil	Incorporações	44606418.00
JHSF3	JHS F Participacoes SA	Consumo Cíclico	Construção Civil	Incorporações	3131704574.00
JOPA3	Josapar Joaquim Oliveira SA Prtcpcs	Consumo não Cíclico	Alimentos Processados	Alimentos Diversos	223911091.00
JOPA4	Josapar Joaquim Oliveira SA Prtcpcs Preference Shares	Consumo não Cíclico	Alimentos Processados	Alimentos Diversos	223911091.00
JSLG3	JSL SA	Bens Industriais	Transporte	Transporte Rodoviário	2563558148.00
KEPL3	Kepler Weber SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	1894250170.00
KLBN11	Klabin SA Unit	Materiais Básicos	Madeira e Papel	Papel e Celulose	25729948822.00
KLBN3	Klabin SA	Materiais Básicos	Madeira e Papel	Papel e Celulose	25729948822.00
KLBN4	Klabin SA Preference Shares	Materiais Básicos	Madeira e Papel	Papel e Celulose	25729948822.00
KRSA3	Kora Saude Participacoes SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	696013260.00
LAME3	Lojas Americanas	Consumo Cíclico	Comércio	Produtos Diversos	12391135397.00
LAME4	Lojas Americanas	Consumo Cíclico	Comércio	Produtos Diversos	12391135397.00
LAND3	Terra Santa Propriedades Agricolas SA	Consumo não Cíclico	Agropecuária	Agricultura	1617575231.00
LAVV3	Lavvi Empreendimentos Imobiliarios S/A	Consumo Cíclico	Construção Civil	Incorporações	1434651991.00
LCAM3	Locamerica	Consumo Cíclico	Diversos	Aluguel de carros	12285815276.00
LEVE3	Mahle Metal Leve SA	Consumo Cíclico	Automóveis e Motocicletas	Automóveis e Motocicletas	4216618290.00
LHER3	Lojas Hering	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	0.00
LHER4	Lojas Hering	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	0.00
LIGT3	Light SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	2052779835.00
LINX3	Linx	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	7083895104.00
LIPR3	Eletrobras Participacoes S/A	Utilidade Pública	Energia Elétrica	Energia Elétrica	824954017.00
LJQQ3	Lojas Quero-Quero SA	Consumo Cíclico	Comércio	Produtos Diversos	872772654.00
LOGG3	Log Commercial Prprts  Prtcpcs S	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	2448754921.00
LOGN3	Log-in Logistica Intermodal SA	Bens Industriais	Transporte	Transporte Hidroviário	4587470351.00
LPSB3	LPS Brasil Consultoria de Imoveis SA	Financeiro e Outros	Exploração de Imóveis	Intermediação Imobiliária	293633716.00
LREN3	Lojas Renner SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	12945770786.00
LTEL3B	Litel Participacoes S/A	Materiais Básicos	Mineração	Minerais Metálicos	18664056854.00
LUPA3	Lupatch S/A Em Rcprco Jdcl Em Rcprc Jdcl	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Equipamentos e Serviços	93530728.00
LUXM3	Trevisa Investimentos SA	Bens Industriais	Transporte	Transporte Hidroviário	202048560.00
LUXM4	Trevisa Investimentos SA Preference Shares	Bens Industriais	Transporte	Transporte Hidroviário	202048560.00
LVTC3	Livetech da Bahia Industria e Cmrc SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	278697802.00
LWSA3	LocaWeb Servicos de Internet SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	4057153916.00
MAGG3	Magnesita Refratários	Materiais Básicos	Materiais Diversos	Materiais Diversos	2972404571.00
MAPT3	Cemepe Investimentos SA	Financeiro e Outros	Outros	Outros	18765213.00
MAPT4	Cemepe Investimentos SA Preference Shares	Financeiro e Outros	Outros	Outros	18765213.00
MATD3	Hospital Mater Dei Sa	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	2871296956.00
MBLY3	Mobly SA	Consumo Cíclico	Comércio	Produtos Diversos	425959616.00
MDIA3	M Dias Brnc S ndstr  Cmrc d lmnts	Consumo não Cíclico	Alimentos Processados	Alimentos Diversos	11678550000.00
MDNE3	Moura Dubeux Engenharia SA	Consumo Cíclico	Construção Civil	Incorporações	914473969.00
MEAL3	International Meal Company Alimentcao SA	Consumo Cíclico	Hoteis e Restaurantes	Restaurante e Similares	504010373.00
MEGA3	Serena Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	5797621476.00
MELK3	Melnick Desenvolvimento Imobiliario SA	Consumo Cíclico	Construção Civil	Incorporações	829202751.00
MERC3	Creditq Fncr SA - Crdt Fncmnt e Invstmnt	Financeiro e Outros	Intermediários Financeiros	Soc. Crédito e Financiamento	210356798.00
MERC4	Creditq Fncr SA - Crdt Fncmnt e Invstmnt Preference Shares	Financeiro e Outros	Intermediários Financeiros	Soc. Crédito e Financiamento	210356798.00
MGEL3	Mangels Industrial SA	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	101565881.00
MGEL4	Mangels Industrial SA Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	101565881.00
MGLU3	Magazine Luiza SA	Consumo Cíclico	Comércio	Eletrodomésticos	12485514669.00
MILS3	Mills Locacao Servicos E Logistica SA	Bens Industriais	Serviços	Serviços Diversos	2672451088.00
MLAS3	Multilaser Industrial SA	Tecnologia da Informação	Computadores e Equipamentos	Computadores e Equipamentos	1583640704.00
MMAQ3	Minasmaquinas SA	Bens Industriais	Comércio	Material de Transporte	1115195.00
MMAQ4	Minasmaquinas SA Preference Shares	Bens Industriais	Comércio	Material de Transporte	1115195.00
MMXM3	MMX Mineração e Metálicos	Materiais Básicos	Mineração	Minerais Metálicos	90834562.00
MNDL3	Mundial SA Produtos de Consumo	Consumo Cíclico	Tecidos. Vestuário e Calçados	Acessórios	105510260.00
MNPR3	Minupar Participacoes SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	124251750.00
MOAR3	Monteiro Aranha SA	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	4888114667.00
MODL11	Banco Modal SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1985844000.00
MODL3	Banco Modal SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1985844000.00
MODL4	Banco Modal SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1985844000.00
MOSI3	Mosaico Tecnologia ao Consumidor SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	1043149227.00
MOVI3	Movida Participacoes SA	Consumo Cíclico	Diversos	Aluguel de carros	3673743152.00
MPLU3	Multiplus	Consumo Cíclico	Diversos	Programas de Fidelização	4348208156.00
MRFG3	Marfrig Global Foods SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	7180800000.00
MRSA3B	MRS Logistica S/A	Bens Industriais	Transporte	Transporte Ferroviário	8292899031.00
MRSA5B	MRS Logística	Bens Industriais	Transporte	Transporte Ferroviário	8292899031.00
MRSA6B	MRS Logística	Bens Industriais	Transporte	Transporte Ferroviário	8292899031.00
MRVE3	MRV Engenharia e Participacoes SA	Consumo Cíclico	Construção Civil	Incorporações	5349959703.00
MSPA3	Companhia Melhoramentos de Sao Paulo	Consumo Cíclico	Mídia	Jornais. Livros e Revistas	291394491.00
MSPA4	Companhia Melhoramentos de Sao Paulo Preference Shares	Consumo Cíclico	Mídia	Jornais. Livros e Revistas	291394491.00
MSRO3	Maestro Locadora de Veiculos SA	Consumo Cíclico	Diversos	Aluguel de carros	18271898550.00
MTIG3	Metalgrafica Iguaçu	Materiais Básicos	Embalagens	Embalagens	3700608.00
MTIG4	Metalgrafica Iguaçu	Materiais Básicos	Embalagens	Embalagens	3700608.00
MTRE3	Mitre Realty Emprndmnts e Prtcpcs SA	Consumo Cíclico	Construção Civil	Incorporações	426272525.00
MTSA3	Metisa Metalurgica Timboense SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Construção e Agrícolas	545171950.00
MTSA4	Metisa Metalurgica Timboense SA Preference Shares	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Construção e Agrícolas	545171950.00
MULT3	Multiplan Empreendimentos Imobiliaris SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	15800011013.00
MWET3	Wetzel SA	Bens Industriais	Material de Transporte	Material Rodoviário	20086109.00
MWET4	Wetzel SA Preference Shares	Bens Industriais	Material de Transporte	Material Rodoviário	20086109.00
MYPK3	Iochpe Maxion SA	Consumo Cíclico	Automóveis e Motocicletas	Automóveis e Motocicletas	1832337644.00
NAFG3	Nadir Figueiredo	Consumo Cíclico	Utilidades Domésticas	Utensílios Domésticos	508315292.00
NAFG4	Nadir Figueiredo	Consumo Cíclico	Utilidades Domésticas	Utensílios Domésticos	508315292.00
NEMO3	Suzano Holding SA	Materiais Básicos	Madeira e Papel	Papel e Celulose	0.00
NEMO5	Suzano Holding A Pref Shs	Materiais Básicos	Madeira e Papel	Papel e Celulose	0.00
NEMO6	Suzano Holding B Pref Shs	Materiais Básicos	Madeira e Papel	Papel e Celulose	0.00
NEOE3	Neoenergia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	21678418849.00
NEXP3	Nexpe Participacoes SA	Financeiro e Outros	Exploração de Imóveis	Intermediação Imobiliária	14260406.00
NGRD3	Neogrid Participacoes SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	329354015.00
NINJ3	Getninjas SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	230110487.00
NORD3	Nordon Industrias Metalurgicas SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	36351958.00
NRTQ3	Nortec Quimica SA	Saúde	Medicamentos e Outros Produtos	Medicamentos e Outros Produtos	0.00
NTCO3	Natura &Co Holding SA	Consumo não Cíclico	Produtos de Uso Pessoal e de Limpeza	Produtos de Uso Pessoal	18861133698.00
NUTR3	Nutriplant Industria e Comercio S/A	Materiais Básicos	Químicos	Fertilizantes e Defensivos	51918048.00
ODER4	Conservas Oderich SA Preference Shares	Consumo não Cíclico	Alimentos Processados	Alimentos Diversos	1116407654.00
ODPV3	Odontoprev SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	6663097696.00
OFSA3	Ouro Fino Saude Animal Participacoes SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	1088151451.00
OGXP3	Óleo e Gás Participações	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	52747074.00
OIBR3	Oi SA - em Recuperacao Judicial	Comunicações	Telecomunicações	Telecomunicações	458491688.00
OIBR4	Oi SA - em Recuperacao Judicial Preference Shares	Comunicações	Telecomunicações	Telecomunicações	458491688.00
OMGE3	Omega Geração	Utilidade Pública	Energia Elétrica	Energia Elétrica	5521562589.00
ONCO3	Oncoclinicas do Brasil Srvcs Mdcs SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	5433060459.00
OPCT3	Oceanpact Servicos Maritimos Sa	Bens Industriais	Transporte	Transporte Hidroviário	1007796152.00
ORVR3	Orizon Valorizacao de Residuos SA	Utilidade Pública	Água e Saneamento	Água e Saneamento	2940609015.00
OSXB3	OSX BRASIL SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Equipamentos e Serviços	18919708.00
PARD3	Instituto Hermes Pardini	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	5403493010.00
PATI4	Panatlantica SA Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	698139845.00
PCAR3	Companhia Brasileira de Distribuicao SA	Consumo não Cíclico	Comércio e Distribuição	Alimentos	1042736806.00
PCAR4	Companhia Brasileira de Distribuicao SA	Consumo não Cíclico	Comércio e Distribuição	Alimentos	1042736806.00
PDGR3	PDG Realty SA Emprendmnts e Prtcpacs	Consumo Cíclico	Construção Civil	Incorporações	8634596.00
PDTC3	Padtec Holding SA	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	199620953.00
PEAB3	Companhia de Participacoes Alianca Bahia	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	691152202.00
PEAB4	Companhia de Participacoes Alianca Bahia Preference Shares	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	691152202.00
PETR3	Petroleo Brasileiro SA Petrobras	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	465099244981.00
PETR4	Petroleo Brasileiro SA Petrobras Preference Shares	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	465099244981.00
PETZ3	Pet Center Comercio e Participacoes SA	Consumo Cíclico	Comércio	Produtos Diversos	1803841658.00
PFRM3	Profarma Distribuidora de Produts Frm SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	494012964.00
PGMN3	Empreendimentos Pague Menos SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	1706608449.00
PINE3	Banco Pine SA	Financeiro e Outros	Intermediários Financeiros	Bancos	757459602.00
PINE4	Banco Pine SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	757459602.00
PLAS3	Plascar Participacoes Industriais SA	Consumo Cíclico	Automóveis e Motocicletas	Automóveis e Motocicletas	90705551.00
PLPL3	Plano & Plano Desenvolvimento Imblr SA	Consumo Cíclico	Construção Civil	Incorporações	2077283520.00
PMAM3	Paranapanema SA Em Recuperacao Judicial	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Cobre	185768474.00
PNVL3	Dimed SA Distribuidora de Medicamentos	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	1675205138.00
PNVL4	Dimed SA Distribuidora de Medicamentos	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	1675205138.00
POMO3	Marcopolo SA	Bens Industriais	Material de Transporte	Material Rodoviário	5047865248.00
POMO4	Marcopolo SA Preference Shares	Bens Industriais	Material de Transporte	Material Rodoviário	5047865248.00
PORT3	Wilson Sons SA	Bens Industriais	Transporte	Serviços de Apoio e Armazenagem	6151044822.00
POSI3	Positivo Tecnologia SA	Tecnologia da Informação	Computadores e Equipamentos	Computadores e Equipamentos	985510000.00
POWE3	Focus Energia Holding SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	977237930.00
PPAR3	Polpar SA	Financeiro e Outros	Outros	Outros	2160800.00
PPLA11	PPLA Participations Ltd Unit	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	10189091.00
PRIO3	Prio SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	40306820148.00
PRNR3	Priner Servicos Industriais SA	Bens Industriais	Serviços	Serviços Diversos	430325322.00
PSSA3	Porto Seguro SA	Financeiro e Outros	Previdência e Seguros	Seguradoras	17386699153.00
PTBL3	PBG SA	Bens Industriais	Construção e Engenharia	Produtos para Construção	738771283.00
PTCA11	Pratica Klimaquip Industria e ComercioSA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	0.00
PTCA3	Pratica Klimaquip Industria e ComercioSA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	0.00
PTNT3	Pettenati SA Industria Textil	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	470539528.00
PTNT4	Pettenati SA Industria Textil Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	470539528.00
QGEP3	QGEP Participações	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	3864832399.00
QUAL3	Qualicorp Consultoria e Cra de Ses SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	880444408.00
QUSW3	Quality Software SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	0.00
QVQP3B	524 Participações	Financeiro e Outros	Outros	Outros	0.00
RADL3	Raia Drogasil S/A	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	44977428496.00
RAIL3	Rumo SA	Bens Industriais	Transporte	Transporte Ferroviário	41623259216.00
RAIZ4	Raizen SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	39650111324.00
RANI3	Irani Papel e Embalagem SA	Materiais Básicos	Embalagens	Embalagens	2638508306.00
RANI4	Irani Papel e Embalagem SA	Materiais Básicos	Embalagens	Embalagens	2638508306.00
RAPT3	Randon SA Implementos e Participacoes	Bens Industriais	Material de Transporte	Material Rodoviário	3619423155.00
RAPT4	Randon SA Implementos e Participacoes Preference Shares	Bens Industriais	Material de Transporte	Material Rodoviário	3619423155.00
RCSL3	Recrusul SA	Bens Industriais	Material de Transporte	Material Rodoviário	150350242.00
RCSL4	Recrusul SA Preference Shares	Bens Industriais	Material de Transporte	Material Rodoviário	150350242.00
RDNI3	RNI Negocios Imobiliarios SA	Consumo Cíclico	Construção Civil	Incorporações	196088740.00
RDOR3	Rede D'Or Sao Luiz SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	56728670380.00
RECV3	Petroreconcavo SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	5994666215.00
REDE3	Rede Energia Participacoes SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	12303185270.00
RENT3	Localiza Rent a Car SA	Consumo Cíclico	Diversos	Aluguel de carros	59009066722.00
RLOG3	Cosan	Bens Industriais	Transporte	Transporte Ferroviário	10691215482.00
RNEW11	Renova Energia SA Em Recuperaco Judicial Unit	Utilidade Pública	Energia Elétrica	Energia Elétrica	278590418.00
RNEW3	Renova Energia SA Em Recuperaco Judicial	Utilidade Pública	Energia Elétrica	Energia Elétrica	278590418.00
RNEW4	Renova Energia SA Em Recuperaco Judicial Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	278590418.00
ROMI3	Romi SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	1102076839.00
RPAD3	Alfa Holdings SA	Financeiro e Outros	Intermediários Financeiros	Bancos	657741344.00
RPAD5	Alfa Holdings SA Preference Shares Series A	Financeiro e Outros	Intermediários Financeiros	Bancos	657741344.00
RPAD6	Alfa Holdings SA Preference Shares Series B	Financeiro e Outros	Intermediários Financeiros	Bancos	657741344.00
RPMG3	Refinaria de Petroleos d Mng S em Rcp Jd	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	149598500.00
RRRP3	3R Petroleum Oleo e Gas SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	7825908469.00
RSID3	Rossi Residencal SA - em Recuprco Judicl	Consumo Cíclico	Construção Civil	Incorporações	88000000.00
RSUL3	Metalurgica Riosulense SA	Bens Industriais	Material de Transporte	Material Rodoviário	195201452.00
RSUL4	Metalurgica Riosulense SA Preference Shares	Bens Industriais	Material de Transporte	Material Rodoviário	195201452.00
SANB11	Banco Santander Brasil SA Unit	Financeiro e Outros	Intermediários Financeiros	Bancos	110265899105.00
SANB3	Banco Santander Brasil SA	Financeiro e Outros	Intermediários Financeiros	Bancos	110265899105.00
SANB4	Banco Santander Brasil SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	110265899105.00
SAPR11	Companhia de Saneamento Parana SANEPAR Unit	Utilidade Pública	Água e Saneamento	Água e Saneamento	7084531473.00
SAPR3	Companhia de Saneamento Parana SANEPAR	Utilidade Pública	Água e Saneamento	Água e Saneamento	7084531473.00
SAPR4	Companhia de Saneamento Parana SANEPAR Preference Shares	Utilidade Pública	Água e Saneamento	Água e Saneamento	7084531473.00
SBFG3	Grupo SBF SA	Consumo Cíclico	Comércio	Produtos Diversos	1944638060.00
SBSP3	Companhia d Snmnt Bsc d std d S Pl SBSP	Utilidade Pública	Água e Saneamento	Água e Saneamento	41639421219.00
SCAR3	Sao Carlos Empreendimentos e Part. SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	1327958337.00
SEDU3	Somos Educação	Consumo Cíclico	Diversos	Serviços Educacionais	6238667820.00
SEER3	Ser Educacional SA	Consumo Cíclico	Diversos	Serviços Educacionais	765893282.00
SEQL3	Sequoia Logistica e Transportes SA	Bens Industriais	Transporte	Logística	111772134.00
SGPS3	Springs Global Participacoes S A	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	61500000.00
SHOW3	T4f Entretenimento SA	Consumo Cíclico	Viagens e Lazer	Produção de Eventos e Shows	166509194.00
SHUL3	Schulz SA	Bens Industriais	Máquinas e Equipamentos	Motores . Compressores e Outros	18546222958.00
SHUL4	Schulz SA Preference Shares	Bens Industriais	Máquinas e Equipamentos	Motores . Compressores e Outros	18546222958.00
SIMH3	Simpar SA	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	6556349848.00
SLCE3	SLC Agricola SA	Consumo não Cíclico	Agropecuária	Agricultura	8712997142.00
SLED3	Saraiva	Consumo Cíclico	Comércio	Produtos Diversos	16497693.00
SLED4	Saraiva	Consumo Cíclico	Comércio	Produtos Diversos	16497693.00
SMFT3	Smartfit Escola de Ginastica e Danca SA	Consumo Cíclico	Viagens e Lazer	Atividades Esportivas	12170389920.00
SMLS3	Smiles	Consumo Cíclico	Diversos	Programas de Fidelização	2781160547.00
SMTO3	Sao Martinho SA	Consumo não Cíclico	Alimentos Processados	Açucar e Alcool	12436417988.00
SNSY3	Sansuy SA Industria d Plstc Em Rcpr Jdcl	Materiais Básicos	Materiais Diversos	Materiais Diversos	82048098.00
SNSY5	Sansuy Industria de Plasticos A Pref Shs	Materiais Básicos	Materiais Diversos	Materiais Diversos	82048098.00
SNSY6	Sansuy Industria de Plasticos B Pref Shs	Materiais Básicos	Materiais Diversos	Materiais Diversos	82048098.00
SOJA3	Boa Safra Sementes SA	Consumo não Cíclico	Agropecuária	Agricultura	1579051594.00
SOMA3	Grupo de Moda SOMA SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	4559382237.00
SOND3	Sondotecnica Engenharia de Solos SA	Bens Industriais	Construção e Engenharia	Engenharia Consultiva	127489060.00
SOND5	Sondotenica Engenharia de Solos A Pref Shs	Bens Industriais	Construção e Engenharia	Engenharia Consultiva	127489060.00
SOND6	Sondotenica Engenharia de Solos B Pref Shs	Bens Industriais	Construção e Engenharia	Engenharia Consultiva	127489060.00
SPRI3	Springer	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	48073732.00
SPRI5	Springer	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	48073732.00
SPRI6	Springer	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	48073732.00
SPRT3B	Longdis	Financeiro e Outros	Outros	Outros	370531749.00
SQIA3	Sinqia	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	2406971774.00
STBP3	Santos Brasil Participacoes SA	Bens Industriais	Transporte	Serviços de Apoio e Armazenagem	6835587619.00
STKF3	Statkraft Energias Renováveis SA	Consumo Cíclico	Viagens e Lazer	Atividades Esportivas	0.00
STTR3	Stara	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Construção e Agrícolas	0.00
SULA11	Sul America	Financeiro e Outros	Previdência e Seguros	Seguradoras	9475042424.00
SULA3	Sul America	Financeiro e Outros	Previdência e Seguros	Seguradoras	9475042424.00
SULA4	Sul America	Financeiro e Outros	Previdência e Seguros	Seguradoras	9475042424.00
SUZB3	Suzano SA	Materiais Básicos	Madeira e Papel	Papel e Celulose	71078633573.00
SYNE3	SYN prop e tech SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	576996002.00
TAEE11	Transmissora Alianca de Enrga Eltrca S/A Unit	Utilidade Pública	Energia Elétrica	Energia Elétrica	12305500958.00
TAEE3	Transmissora Alianca de Enrga Eltrca S/A	Utilidade Pública	Energia Elétrica	Energia Elétrica	12305500958.00
TAEE4	Transmissora Alianca de Enrga Eltrca S/A Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	12305500958.00
TASA3	Taurus Armas SA	Bens Industriais	Máquinas e Equipamentos	Armas e Munições	1801587150.00
TASA4	Taurus Armas SA Preference Shares	Bens Industriais	Máquinas e Equipamentos	Armas e Munições	1801587150.00
TCNO3	Tecnosolo	Bens Industriais	Construção e Engenharia	Engenharia Consultiva	6451073.00
TCNO4	Tecnosolo	Bens Industriais	Construção e Engenharia	Engenharia Consultiva	6451073.00
TCSA3	Tecnisa SA	Consumo Cíclico	Construção Civil	Incorporações	210550998.00
TECN3	Technos SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Acessórios	251717063.00
TEKA3	Teka Tecelagem Kuehnrich SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	5019294.00
TEKA4	Teka Tecelagem Kuehnrich SA Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	5019294.00
TELB3	Telecomunicacoes Brasileiras SA - TELBRS	Comunicações	Telecomunicações	Telecomunicações	1299295731.00
TELB4	Telecomunicacoes Brasileiras SA - TELBRS Preference Shares	Comunicações	Telecomunicações	Telecomunicações	1299295731.00
TEND3	Construtora Tenda S/A	Consumo Cíclico	Construção Civil	Incorporações	1579299176.00
TESA3	Terra Santa Agro	Consumo não Cíclico	Agropecuária	Agricultura	1389696672.00
TFCO4	Track & Field SA Co	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	2218483041.00
TGMA3	Tegma Gestao Logistica SA	Bens Industriais	Transporte	Transporte Rodoviário	1632912117.00
TIET11	AES Tiete	Utilidade Pública	Energia Elétrica	Energia Elétrica	5004795801.00
TIET3	AES Tiete	Utilidade Pública	Energia Elétrica	Energia Elétrica	5004795801.00
TIET4	AES Tiete	Utilidade Pública	Energia Elétrica	Energia Elétrica	5004795801.00
TIMS3	Tim SA	Comunicações	Telecomunicações	Telecomunicações	41734667822.00
TKNO3	Tekno SA Industria e Comercio	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	192152383.00
TKNO4	Tekno SA Industria e Comercio Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	192152383.00
TOTS3	Totvs SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	18706822216.00
TOYB3	Tec Toy	Consumo Cíclico	Viagens e Lazer	Brinquedos e Jogos	71890222.00
TOYB4	Tec Toy	Consumo Cíclico	Viagens e Lazer	Brinquedos e Jogos	71890222.00
TPIS3	TPI Triunfo Participacoes e Invstmnts SA	Bens Industriais	Transporte	Exploração de Rodovias	175560000.00
TRAD3	Tc SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	280147138.00
TRIS3	Trisul SA	Consumo Cíclico	Construção Civil	Incorporações	933087690.00
TRPL3	CTEEP Cmpnh d Trnsmss d nrg ltrc Plst	Utilidade Pública	Energia Elétrica	Energia Elétrica	17841993767.00
TRPL4	CTEEP Cmpnh d Trnsmss d nrg ltrc Plst Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	17841993767.00
TRPN3	Tarpon Investimentos	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	32162716.00
TTEN3	Tres Tentos Agroindustrial SA	Consumo não Cíclico	Agropecuária	Agricultura	5271989105.00
TUPY3	Tupy SA	Bens Industriais	Material de Transporte	Material Rodoviário	3669317375.00
TXRX3	Textil RenauxView S/A	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	22862746.00
TXRX4	Textil RenauxView S/A Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	22862746.00
UCAS3	Unicasa Industria de Moveis S/A	Consumo Cíclico	Utilidades Domésticas	Móveis	172485410.00
UGPA3	Ultrapar Participacoes SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	26319014764.00
UNIP3	Unipar Carbocloro SA	Materiais Básicos	Químicos	Químicos Diversos	7456181858.00
UNIP5	Unipar Participacoes A Pref Shs	Materiais Básicos	Químicos	Químicos Diversos	7456181858.00
UNIP6	Unipar Participacoes B Pref Shs	Materiais Básicos	Químicos	Químicos Diversos	7456181858.00
USIM3	Usinas Siderurgicas de Mins Grs SA USMNS	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	8547573939.00
USIM5	Usinas Siderurgicas de Minas Gerais A Pref Shs	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	8547573939.00
USIM6	Usinas Siderurgicas de Minas Gerais Pref Shs	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	8547573939.00
VALE3	Vale SA	Materiais Básicos	Mineração	Minerais Metálicos	318320601585.00
VAMO3	Vamos Locacao de Camhs Mqns e Eqpmnts SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Construção e Agrícolas	10115613052.00
VBBR3	Vibra Energia SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	25478550000.00
VITT3	Vittia SA	Materiais Básicos	Químicos	Fertilizantes e Defensivos	1343231115.00
VIVA3	Vivara Participacoes SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Acessórios	6438751183.00
VIVR3	Viver Incorporadora e Construtora SA	Consumo Cíclico	Construção Civil	Incorporações	81920839.00
VIVT3	Telefonica Brasil SA	Comunicações	Telecomunicações	Telecomunicações	82462507156.00
VIVT4	Telefonica Brasil SA	Comunicações	Telecomunicações	Telecomunicações	82462507156.00
VLID3	Valid Solucoes SA	Bens Industriais	Serviços	Serviços Diversos	1356028734.00
VSPT3	Ferrovia Centro-Atlantica SA	Bens Industriais	Transporte	Transporte Ferroviário	712610842.00
VSPT4	Ferrovia Centro-Atlantica SA Preference Shares	Bens Industriais	Transporte	Transporte Ferroviário	712610842.00
VSTE3	Veste SA Estilo	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	1404225319.00
VULC3	Vulcabras SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	5132272012.00
VVAR11	Grupo Casas Bahia SA	Consumo Cíclico	Comércio	Eletrodomésticos	1354935926.00
VVAR4	Grupo Casas Bahia SA	Consumo Cíclico	Comércio	Eletrodomésticos	1354935926.00
VVEO3	CM Hospitalar SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	4858450150.00
WEGE3	Weg SA	Bens Industriais	Máquinas e Equipamentos	Motores . Compressores e Outros	136202969035.00
WEST3	Westwing Comercio Varejista SA	Consumo Cíclico	Comércio	Produtos Diversos	162694593.00
WHRL3	Whirlpool SA	Consumo Cíclico	Comércio	Eletrodomésticos	6287191663.00
WHRL4	Whirlpool SA Preference Shares	Consumo Cíclico	Comércio	Eletrodomésticos	6287191663.00
WIZC3	Wiz Co Participacos e Cortgm de Sgurs SA	Financeiro e Outros	Previdência e Seguros	Corretoras de Seguros	865098396.00
WLMM3	WLM Participacoes e Cmrc d Mqns e Vcs SA	Bens Industriais	Comércio	Material de Transporte	1125372470.00
WLMM4	WLM Participacoes e Cmrc d Mqns e Vcs SA Preference Shares	Bens Industriais	Comércio	Material de Transporte	1125372470.00
YDUQ3	YDUQS Participacoes SA	Consumo Cíclico	Diversos	Serviços Educacionais	5888142612.00
ZAMP3	Zamp SA	Consumo Cíclico	Hoteis e Restaurantes	Restaurante e Similares	1872417040.00
\.


--
-- Data for Name: dy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dy (ticker, "2023", "2022", "2021", "2020", "2019", "2018", "2017", "2016", "2015", "2014", "2013", "2012", "2011", "2010", "2009", "2008") FROM stdin;
AALR3	0.00	0.00	0.00	0.79	0.47	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ABCB4	6.31	9.48	7.90	1.01	5.20	6.39	6.32	7.80	13.72	4.88	4.78	2.34	4.81	0.00	0.00	0.00
ABEV3	5.86	5.25	4.41	2.64	2.63	3.58	2.54	3.90	4.01	4.67	0.00	0.00	0.00	0.00	0.00	0.00
ADHM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AERI3	0.00	1.83	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AESB3	0.00	1.11	2.09	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AFLT3	3.41	2.55	7.10	7.33	0.95	3.25	13.97	14.17	0.00	7.77	4.08	0.00	0.00	0.00	0.00	0.00
AGRO3	13.08	17.54	9.10	2.84	4.89	4.88	1.93	5.29	12.67	0.00	1.07	0.00	0.00	0.00	0.00	0.00
AGXY3	1.02	1.70	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AHEB3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AHEB5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AHEB6	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALLD3	6.05	15.49	4.48	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALOS3	2.24	2.26	1.05	0.00	0.91	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALPA3	0.00	0.00	1.28	0.13	0.00	2.62	1.82	3.08	9.24	3.77	2.01	1.48	2.30	0.00	0.00	0.00
ALPA4	0.00	0.00	1.18	0.13	0.00	2.77	1.95	3.00	22.34	3.83	1.94	1.58	2.50	0.00	0.00	0.00
ALPK3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALSC3	0.00	0.00	0.00	0.00	0.96	0.61	0.00	0.76	12.34	1.94	1.89	0.74	0.63	0.00	0.00	0.00
ALUP11	5.95	4.36	3.49	2.55	1.63	3.93	2.78	4.91	9.13	12.24	0.00	0.00	0.00	0.00	0.00	0.00
ALUP3	5.91	4.48	3.46	2.57	1.32	3.20	2.14	3.45	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALUP4	5.97	4.29	3.48	2.58	1.78	4.40	3.19	6.36	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AMAR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	1.35	0.75	0.62	1.17	3.97	0.00	0.00	0.00
AMBP3	0.93	1.45	1.41	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AMER3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ANDG3B	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ANDG4B	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ANIM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
APER3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
APTI3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
APTI4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ARML3	1.17	1.08	1.12	1.61	1.55	1.08	0.00	1.11	1.10	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ARZZ3	0.00	0.00	0.00	0.97	0.93	1.03	0.86	0.87	0.75	0.52	0.52	0.48	0.47	0.00	0.00	0.00
ASAI3	0.71	0.83	2.81	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ATMP3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ATOM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AURA33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AURE3	10.88	0.68	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AVLL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AZEV3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AZEV4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AZUL4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
B3SA3	3.26	3.66	15.28	3.47	2.70	2.62	1.99	3.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BAHI3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BALM3	2.11	23.50	2.18	5.70	0.00	0.27	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BALM4	2.27	27.26	3.16	7.52	0.00	0.21	0.43	5.63	6.14	39.42	1.29	0.29	0.77	0.00	0.00	0.00
BAUH4	1.68	0.00	0.00	0.89	0.62	2.38	3.34	2.95	6.08	1.74	0.00	0.00	0.00	0.00	0.00	0.00
BAZA3	6.59	13.75	6.29	8.49	4.27	2.68	2.53	0.11	15.19	8.10	6.78	8.40	5.00	0.00	0.00	0.00
BBAS3	9.01	12.01	7.86	3.81	4.84	3.26	2.96	2.65	11.42	6.97	9.68	6.33	7.93	0.00	0.00	0.00
BBDC3	6.86	2.86	5.76	2.66	5.48	3.08	3.05	1.12	6.29	3.44	2.45	2.72	3.85	0.00	0.00	0.00
BBDC4	6.65	2.80	5.34	2.61	5.68	2.97	3.18	1.24	7.36	3.70	2.97	2.89	3.48	0.00	0.00	0.00
BBML3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BBSE3	10.93	5.83	4.80	9.40	4.20	11.23	5.77	5.91	6.91	3.73	0.00	0.00	0.00	0.00	0.00	0.00
BDLL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	12.98	0.00	0.00	0.00	0.00	0.00
BDLL4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	31.56	10.75	13.90	8.70	22.34	8.28	0.00	0.00
BEEF11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BEEF3	6.84	4.33	10.18	2.95	0.00	0.00	2.48	0.00	0.00	0.00	0.00	2.81	1.20	0.00	0.00	0.00
BEES3	7.38	10.63	7.05	3.90	4.79	5.81	2.39	1.17	4.59	0.71	0.00	0.00	0.33	0.00	0.00	0.00
BEES4	6.73	9.02	5.94	3.53	4.46	4.04	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BFRE11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BFRE12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BGIP3	8.29	3.78	3.16	1.64	0.00	4.25	10.04	1.78	0.00	0.00	0.00	6.66	0.00	0.00	0.00	0.00
BGIP4	11.02	6.39	5.10	2.89	2.03	4.87	11.81	2.49	4.81	0.00	3.40	7.22	7.05	0.00	0.00	0.00
BHIA3	0.00	0.00	0.00	0.00	0.00	0.27	0.34	0.07	11.90	0.00	16.30	0.00	0.00	0.00	0.00	0.00
BIDI11	0.00	0.00	0.27	0.17	0.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BIDI3	0.00	0.00	0.27	0.17	0.25	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BIDI4	0.00	0.00	0.27	0.17	1.84	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BIOM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.09	0.09	0.00	0.00	0.00	0.00
BLAU3	2.78	3.23	0.68	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BLUT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BLUT4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BMEB3	4.46	5.21	9.83	3.78	0.41	0.00	0.00	11.57	4.71	4.95	4.78	3.75	5.76	0.00	0.00	0.00
BMEB4	5.65	5.72	11.97	4.22	5.12	18.85	6.62	15.79	24.44	7.36	7.74	5.66	8.01	0.00	0.00	0.00
BMGB4	6.03	16.61	10.11	2.87	2.55	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BMIN3	5.05	0.00	0.00	7.00	0.00	0.23	0.00	0.35	0.00	0.00	0.55	0.00	0.41	0.00	0.00	0.00
BMIN4	7.69	6.41	11.34	7.04	7.04	9.90	0.13	2.45	10.54	6.29	4.92	2.21	3.13	0.00	0.00	0.00
BMKS3	18.64	5.66	3.33	2.41	3.05	6.31	10.00	7.90	13.94	8.66	10.98	27.12	111.43	0.00	0.00	0.00
BMOB3	1.80	1.41	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BNBR3	3.85	5.89	6.54	3.54	3.88	4.55	6.00	3.29	20.42	7.45	6.67	0.42	3.12	0.00	0.00	0.00
BOAS3	3.20	3.68	1.45	0.43	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BOBR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BOBR4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAC11	2.27	2.74	4.10	1.29	1.85	2.86	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAC3	1.60	1.69	2.24	0.88	1.17	5.46	6.80	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAC5	2.91	3.91	5.51	1.75	2.04	6.11	8.88	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAN4	3.16	4.59	2.10	3.90	0.72	3.13	0.00	0.26	0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAR3	0.00	5.69	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAT33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPHA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.05	0.00	0.00	0.00	0.00
BRAP3	11.86	11.63	47.03	3.18	3.58	5.99	1.74	0.80	21.16	13.21	0.00	0.00	0.00	0.00	0.00	0.00
BRAP4	12.10	11.01	45.09	3.14	3.64	6.09	1.65	0.75	20.71	12.00	2.59	5.64	5.37	0.00	0.00	0.00
BRBI11	6.57	11.51	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRBI3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRBI4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRFS3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	1.58	2.16	1.49	2.20	0.27	1.99	0.00	0.00	0.00
BRGE11	2.45	4.91	4.83	3.50	2.10	0.00	6.83	0.00	0.00	2.06	0.00	0.00	0.00	0.00	0.00	0.00
BRGE12	0.00	0.00	0.01	0.00	0.02	0.05	0.14	0.15	1.18	0.00	0.70	0.00	0.00	0.00	0.00	0.00
BRGE3	0.00	0.00	0.01	0.00	0.01	0.04	0.21	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRGE5	2.00	0.00	0.00	2.41	0.64	10.96	0.00	9.43	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRGE6	4.87	6.30	8.17	3.81	5.97	0.00	0.00	0.00	3386.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRGE7	2.84	0.00	0.00	0.00	0.00	12.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRGE8	2.03	3.40	3.17	3.68	2.54	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRIN3	0.83	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.13	12.84	9.45	4.92	20.53	0.00	0.00	0.00
BRIT3	1.00	0.04	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRIV3	1.50	0.58	0.26	0.00	0.00	0.00	2.42	3.32	1.35	1.31	1.19	0.00	0.00	0.00	0.00	0.00
BRIV4	2.95	6.57	8.22	7.54	5.13	7.81	7.90	12.36	6.55	5.42	3.60	0.00	0.00	0.00	0.00	0.00
BRKM3	0.00	6.71	13.28	0.00	2.66	4.14	2.89	8.38	3.81	5.61	0.00	6.30	7.07	0.00	0.00	0.00
BRKM5	0.00	7.14	13.08	0.00	2.81	3.98	2.93	7.34	2.19	3.46	0.00	4.73	6.51	0.00	0.00	0.00
BRKM6	0.00	0.00	1.78	0.00	2.53	0.00	0.00	1.35	3.79	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRML3	0.00	0.65	0.00	0.00	4.93	0.73	0.52	0.00	4.12	2.86	2.79	0.56	0.91	0.00	0.00	0.00
BRPR3	0.00	1.62	2.69	0.87	0.00	1.99	0.44	0.00	29.14	63.90	5.52	1.52	0.59	0.00	0.00	0.00
BRQB3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRSR3	8.02	8.23	8.04	4.17	5.41	6.29	1.03	5.35	10.01	5.21	3.10	4.86	5.27	0.00	0.00	0.00
BRSR5	5.05	5.08	7.13	3.41	5.16	5.89	1.23	5.42	0.00	4.98	0.00	4.08	0.00	0.00	0.00	0.00
BRSR6	8.46	9.09	9.88	4.51	5.75	6.07	1.82	5.60	15.37	4.56	3.19	4.01	3.85	0.00	0.00	0.00
BSEV3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.09	0.00	0.00	0.00	0.00	0.00
BSLI3	0.34	5.81	1.75	2.56	0.50	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BSLI4	0.44	8.00	2.99	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BTTL4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CALI3	2.72	52.30	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CALI4	0.00	0.00	0.00	0.00	0.00	3.92	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CAMB3	1.99	2.96	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CAMB4	3.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	2.12	0.00	0.00	0.00	0.00
CAML3	3.89	4.41	2.17	5.27	1.99	2.28	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CASH3	0.00	0.00	1.14	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CASN3	0.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.05	0.00	0.00	0.00	0.00
CASN4	0.29	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CATA3	38.09	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CATA4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CBAV3	10.49	3.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CBEE3	0.00	2.65	0.30	2.00	1.23	0.00	0.00	0.00	1.33	3.78	4.63	0.53	0.70	0.00	0.00	0.00
CCRO3	0.29	3.51	1.43	3.58	4.02	5.30	3.94	4.44	4.74	5.15	4.15	3.07	14.88	0.00	0.00	0.00
CCXC3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEAB3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEBR3	9.98	34.76	594.84	1.33	0.09	0.00	0.00	0.00	0.00	0.00	15.41	0.00	0.00	0.00	0.00	0.00
CEBR5	9.97	31.62	600.49	2.53	6.02	11.06	0.00	0.00	0.00	0.00	18.38	0.00	0.00	0.00	0.00	0.00
CEBR6	10.60	38.54	676.39	1.26	0.10	0.00	0.00	0.00	0.00	0.00	22.07	0.00	0.00	0.00	0.00	0.00
CEDO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	2.38	0.00	4.36	19.87	0.00	0.00	0.00
CEDO4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	2.06	6.22	5.79	17.70	0.00	0.00	0.00
CEEB3	4.46	16.26	19.55	1.12	10.38	1.78	3.18	7.51	3.99	2.45	3.82	0.00	4.17	0.00	0.00	0.00
CEEB5	3.87	20.57	0.00	1.13	10.66	0.00	0.00	7.24	0.00	2.49	0.00	0.00	4.35	0.00	0.00	0.00
CEEB6	2.95	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEED3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEED4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEGR3	1.16	0.00	4.36	0.16	3.55	2.68	0.00	0.00	3.27	8.63	5.00	0.00	0.00	0.00	0.00	0.00
CEPE3	0.43	0.00	0.00	1.29	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEPE5	1.35	0.00	11.55	4.81	4.75	3.74	8.50	3.62	5.37	7.29	1.12	3.79	6.63	0.00	0.00	0.00
CEPE6	1.39	0.00	10.90	4.73	7.78	0.00	0.00	0.00	7.71	0.00	0.00	0.00	7.61	0.00	0.00	0.00
CESP3	0.00	0.00	9.86	8.19	2.73	0.18	4.35	3.86	47.59	14.19	7.12	9.31	2.58	0.00	0.00	0.00
CESP5	0.00	0.00	0.00	10.32	5.70	9.12	0.00	18.91	27.61	12.65	8.23	9.83	5.42	0.00	0.00	0.00
CESP6	0.00	0.00	10.09	7.86	2.78	0.17	3.66	3.57	36.23	11.86	6.32	7.92	2.13	0.00	0.00	0.00
CGAS3	2.67	10.77	8.18	4.82	10.39	7.04	17.49	26.51	13.50	3.25	1.77	3.01	8.65	0.00	0.00	0.00
CGAS5	2.76	11.89	8.88	5.34	11.47	8.16	17.63	25.75	13.88	3.52	1.74	3.07	9.23	0.00	0.00	0.00
CGRA3	8.16	11.96	3.46	4.92	4.36	4.85	4.75	6.91	15.13	4.05	3.18	3.30	7.02	0.00	0.00	0.00
CGRA4	7.85	12.66	3.61	4.92	4.41	4.65	4.51	7.10	17.22	4.16	2.99	3.30	7.08	0.00	0.00	0.00
CIEL3	7.69	4.80	7.70	1.62	6.14	15.95	3.75	2.00	2.29	4.57	3.58	4.14	3.43	0.00	0.00	0.00
CLSA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CLSC3	5.02	9.09	7.10	4.07	2.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CLSC4	5.24	9.18	6.96	4.63	2.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CMIG3	6.50	9.49	6.35	3.75	4.65	1.16	3.80	8.21	9.47	23.94	13.96	26.33	10.99	0.00	0.00	0.00
CMIG4	8.65	13.75	8.97	4.29	5.26	4.65	3.55	8.39	9.95	25.14	14.15	25.52	9.02	0.00	0.00	0.00
CMIN3	15.78	22.58	6.95	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CMSA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CMSA4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CNSY3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
COCE3	0.62	0.00	6.14	2.93	3.60	2.87	4.09	0.00	1.60	2.01	6.16	7.89	13.46	9.67	0.00	0.00
COCE5	0.71	4.31	6.23	3.54	3.00	2.27	3.64	1.85	1.49	2.50	6.54	7.88	12.40	9.68	0.00	0.00
COCE6	1.61	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
COGN3	0.00	0.00	0.00	0.00	1.05	4.42	2.31	2.62	1.69	11.64	1.47	0.00	0.00	0.00	0.00	0.00
CORR3	2762.62	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CORR4	91.30	0.00	0.00	0.00	0.00	0.00	4.24	0.00	5.31	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CPFE3	8.22	9.77	13.80	5.53	1.35	0.95	1.13	0.82	0.00	5.56	4.46	6.79	6.87	0.00	0.00	0.00
CPLE11	7.81	11.30	11.21	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CPLE3	7.59	11.72	19.45	4.03	3.74	3.55	12.57	5.96	5.27	8.64	7.24	2.70	4.46	0.00	0.00	0.00
CPLE5	3.41	3.83	3.82	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	7.83	0.00	0.00	0.00
CPLE6	7.84	11.20	20.33	4.14	4.12	3.81	11.87	4.59	3.82	6.59	5.81	2.36	4.16	0.00	0.00	0.00
CPRE3	0.00	0.00	0.00	0.00	0.00	0.04	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CREM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRFB3	2.05	2.34	5.95	1.28	1.21	1.94	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRIV3	0.00	0.48	0.00	0.64	0.34	1.05	0.00	0.00	0.00	0.00	3.71	0.00	0.00	0.00	0.00	0.00
CRIV4	4.30	8.96	7.96	7.54	4.43	6.66	7.50	9.72	9.15	8.69	7.07	0.00	0.00	0.00	0.00	0.00
CRPG3	21.63	0.00	7.60	0.41	2.72	14.17	1.53	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRPG5	23.71	16.40	8.35	0.40	3.05	13.57	2.68	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRPG6	24.38	17.11	8.06	0.40	3.06	14.28	1.99	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CSAB3	1.80	2.88	0.00	5.64	0.00	5.75	13.53	10.04	7.48	0.00	5.55	8.27	0.00	0.00	0.00	0.00
CSAB4	1.47	2.43	4.79	6.83	4.58	0.00	15.14	10.12	10.53	11.49	6.12	9.29	0.00	14.22	0.00	0.00
CSAN3	2.44	2.50	6.48	1.98	1.44	3.31	4.49	5.64	3.91	3.85	1.87	1.49	1.82	0.00	0.00	0.00
CSED3	1.66	3.41	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CSMG3	9.20	2.45	7.43	50.99	2.54	6.54	4.83	1.84	0.57	4.49	3.44	2.79	4.95	0.00	0.00	0.00
CSNA3	23.03	17.74	7.69	0.03	6.73	0.00	0.00	0.00	5.07	8.85	6.34	6.94	8.50	0.00	0.00	0.00
CSRN3	4.76	18.92	13.71	0.94	6.23	3.90	5.53	7.40	6.36	4.66	0.00	9.81	7.67	0.00	0.00	0.00
CSRN5	5.35	23.08	15.72	1.01	0.00	4.60	0.00	8.30	8.41	5.26	0.00	10.52	0.00	0.00	0.00	0.00
CSRN6	4.87	0.00	13.95	1.05	0.00	0.00	0.00	8.36	0.00	4.56	0.00	9.81	0.00	0.00	0.00	0.00
CSUD3	5.76	6.35	3.72	2.02	2.09	5.09	3.68	6.33	5.70	2.88	0.00	4.01	7.25	0.00	0.00	0.00
CTCA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CTKA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	4.20	0.00	0.00	0.00
CTKA4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	4.73	4.19	0.00	0.00
CTNM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.16	0.16	0.00	0.00
CTNM4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.16	0.16	0.00	0.00
CTSA3	0.00	0.00	0.00	1.20	0.62	46.34	0.82	0.00	0.49	10.14	3.15	3.55	4.02	3.89	0.00	0.00
CTSA4	0.00	0.00	0.00	1.49	0.63	33.37	0.97	0.00	0.64	10.66	4.01	3.64	4.38	4.24	0.00	0.00
CTSA8	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CURY3	4.86	4.07	8.08	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CVCB3	0.00	0.00	0.00	0.00	1.01	0.82	0.94	3.83	5.53	1.45	0.00	0.00	0.00	0.00	0.00	0.00
CXSE3	9.01	7.77	2.93	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CYRE3	2.50	4.32	6.89	6.16	6.13	7.24	0.71	2.72	5.53	3.83	3.50	1.61	2.27	0.00	0.00	0.00
DASA3	0.92	0.71	1.74	0.00	0.98	2.08	0.51	0.57	0.62	0.91	0.45	0.24	0.62	0.00	0.00	0.00
DESK3	0.13	0.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DEXP3	2.64	5.59	8.08	1.39	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DEXP4	2.94	6.52	9.94	6.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DIRR3	3.67	7.48	5.43	6.19	5.87	8.16	0.00	5.94	12.71	7.51	3.03	1.91	3.18	0.00	0.00	0.00
DMMO11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DMMO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DMVF3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DOHL3	0.00	0.00	0.98	2.07	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	5.93	0.00	0.00
DOHL4	0.00	3.06	3.39	8.59	0.00	5.64	6.83	0.00	2.12	4.40	4.36	5.83	6.09	5.22	0.00	0.00
DOTZ3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DTCY3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DTCY4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DXCO3	4.81	5.00	11.46	1.64	2.23	6.70	1.05	0.00	6.50	3.74	2.22	1.92	3.20	0.00	0.00	0.00
EALT3	2.79	12.69	2.95	0.43	0.91	21.21	0.00	0.00	5.20	10.28	0.00	0.00	0.00	0.00	0.00	0.00
EALT4	2.94	18.75	5.25	1.18	2.13	22.07	2.70	3.81	10.20	13.40	1.88	0.00	0.00	0.00	0.00	0.00
ECOR3	0.10	0.17	0.00	0.00	0.00	7.70	3.43	3.20	8.33	12.42	5.27	2.04	1.84	0.00	0.00	0.00
ECPR3	0.00	0.00	0.00	0.00	2.80	0.00	0.00	0.00	0.00	0.00	0.00	52.71	0.00	3.46	0.00	0.00
ECPR4	0.00	0.00	0.00	0.00	2.79	0.00	0.00	0.00	0.00	0.00	0.00	59.82	0.00	3.58	0.00	0.00
EEEL3	0.00	0.00	0.00	3.56	3.61	6.87	16.82	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EEEL4	0.00	0.00	0.00	5.24	3.38	7.14	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EGIE3	8.65	7.89	4.66	3.92	3.19	12.77	7.65	5.63	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EKTR3	4.15	22.30	9.45	1.42	4.16	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EKTR4	4.22	22.50	12.32	1.34	4.40	0.00	8.16	9.46	15.20	10.93	6.91	8.93	10.65	0.00	0.00	0.00
ELEK3	0.00	0.00	0.00	0.34	2.00	9.43	0.00	0.00	0.00	0.00	8.55	0.17	1.36	0.00	0.00	0.00
ELEK4	0.00	0.00	0.00	0.17	2.06	9.39	0.00	0.00	0.00	0.00	7.84	0.13	1.58	0.00	0.00	0.00
ELET3	0.58	1.84	7.18	4.43	2.14	0.00	0.00	0.00	0.00	20.88	13.76	39.68	4.90	0.00	0.00	0.00
ELET5	2.41	0.00	4.86	5.00	4.41	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ELET6	3.56	3.73	7.99	4.83	3.63	0.00	7.47	0.00	0.97	60.58	33.29	31.79	6.38	0.00	0.00	0.00
ELMD3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ELPL3	0.00	0.00	0.00	0.00	0.00	0.00	0.77	0.95	0.00	0.00	0.00	0.00	15.44	0.00	0.00	0.00
EMAE3	7.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EMAE4	3.37	1.30	10.64	1.92	1.77	8.26	4.91	1.19	0.00	4.26	0.00	0.00	1.28	0.00	0.00	0.00
EMBR3	0.00	0.00	0.00	0.00	0.00	0.61	1.56	0.63	0.60	1.38	1.33	1.45	2.13	0.00	0.00	0.00
ENAT3	0.91	12.65	1.46	9.64	11.92	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENBR3	5.90	10.55	4.78	0.99	2.04	8.20	0.86	8.59	1.36	11.11	7.40	4.03	1.91	0.00	0.00	0.00
ENEV3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENGI11	3.12	2.62	8.90	1.15	2.02	2.10	2.07	2.16	6.75	5.02	0.93	0.00	0.00	0.00	0.00	0.00
ENGI3	1.83	1.65	5.78	0.71	1.59	1.93	1.16	2.06	6.30	5.52	4.01	2.30	3.96	0.00	0.00	0.00
ENGI4	3.80	3.11	10.30	1.41	2.13	2.13	2.55	2.17	6.54	6.16	5.61	2.22	3.74	0.00	0.00	0.00
ENJU3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMA3B	5.53	0.00	0.00	0.00	10.21	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMA6B	3.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMT3	5.12	4.34	6.77	0.00	3.54	9.93	0.00	0.01	2.59	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMT4	4.78	4.32	6.11	1.72	3.46	10.70	0.00	0.00	2.59	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EPAR3	0.00	20.71	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA3	7.87	7.64	7.99	8.48	3.55	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA5	7.09	5.68	5.92	4.75	2.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA6	5.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA7	7.19	6.31	6.12	5.21	1.72	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQTL3	1.05	2.37	3.18	1.38	4.17	1.62	0.88	1.71	3.45	1.41	1.47	2.46	14.21	0.00	0.00	0.00
ESPA3	0.00	0.00	1.71	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ESTR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ESTR4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ETER3	4.42	9.38	1.15	0.00	0.00	0.00	0.00	0.00	14.59	20.68	9.12	9.85	10.15	0.00	0.00	0.00
EUCA3	5.06	0.00	5.29	0.00	0.06	0.00	0.70	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EUCA4	6.12	0.00	7.86	0.00	0.55	1.55	1.35	0.29	1.52	0.00	3.01	2.88	4.02	0.00	0.00	0.00
EVEN3	5.73	3.28	12.61	1.20	0.00	0.00	0.00	4.78	12.82	10.60	3.21	2.45	4.16	0.00	0.00	0.00
EZTC3	1.67	5.80	2.07	0.69	0.27	2.06	17.38	6.32	8.69	4.31	1.87	2.07	2.50	0.00	0.00	0.00
FBMC3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FBMC4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	11.91	6.27	8.59	0.04	0.00	0.00	0.00
FESA3	4.72	8.25	1.34	2.69	3.68	4.38	5.98	6.25	9.27	0.00	0.88	0.00	0.00	0.00	0.00	0.00
FESA4	6.81	10.18	1.72	4.86	6.74	5.73	6.11	10.27	13.00	3.19	1.40	1.88	4.21	0.00	0.00	0.00
FHER3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FIBR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FIEI3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	74.07	0.00	0.00	1.55	12.80	0.00	0.00	0.00
FIGE3	0.33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.14	0.00	0.00	0.00	0.00	0.00	0.00
FIGE4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.16	0.00	0.00	0.00	0.00	0.00	0.00
FIQE3	4.36	2.16	1.26	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FLEX3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FLRY3	2.80	6.50	5.32	2.73	3.32	4.86	2.16	6.87	0.39	7.86	1.33	1.00	0.94	0.00	0.00	0.00
FNCN3	3.75	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FRAS3	2.59	3.66	2.15	1.73	5.24	5.03	5.53	2.49	3.49	2.67	0.00	1.70	5.87	0.00	0.00	0.00
FRIO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	12.41	0.00	0.00	0.00
FRTA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FTRT3B	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
G2DI33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GBIO33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GEPA3	12.72	5.38	9.19	6.22	5.43	10.32	10.17	11.25	0.00	0.00	5.76	7.86	0.00	0.00	0.00	0.00
GEPA4	12.34	4.97	8.88	5.96	5.37	8.79	9.80	10.29	5.21	8.42	5.76	5.77	6.80	0.00	0.00	0.00
GETT11	0.00	8.79	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GETT3	0.00	8.39	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GETT4	0.00	9.02	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GFSA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	2.59	0.00	3.65	8.81	0.00	5.56	0.00	0.00	0.00
GGBR3	15.76	14.81	13.66	1.58	1.64	3.10	0.48	0.63	6.32	3.64	1.79	1.95	2.69	0.00	0.00	0.00
GGBR4	14.46	12.36	11.26	1.31	1.40	2.56	0.40	0.46	4.73	3.05	1.25	1.67	2.28	0.00	0.00	0.00
GGPS3	1.51	0.00	1.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GMAT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GNDI3	0.00	2.41	0.47	0.21	0.22	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GOAU3	10.44	10.36	21.83	1.83	1.73	2.71	0.39	0.00	7.28	3.48	0.79	2.27	3.46	0.00	0.00	0.00
GOAU4	10.48	9.64	20.39	1.60	1.62	2.88	0.35	0.00	6.63	2.65	0.64	1.79	2.96	0.00	0.00	0.00
GOLL4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	1.51	0.00	0.00	0.00
GPAR3	0.00	33.67	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GPIV33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GRAO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GRND3	19.58	5.07	10.01	2.00	2.61	10.84	4.40	5.93	4.10	5.14	5.42	5.55	7.93	0.00	0.00	0.00
GSHP3	0.00	0.00	0.00	0.00	109.63	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GUAR3	0.00	2.15	4.77	2.72	4.24	3.54	1.16	2.29	3.01	2.45	2.82	0.95	1.31	0.00	0.00	0.00
GUAR4	0.00	0.00	0.00	0.00	0.00	3.96	1.37	2.68	3.14	3.16	3.42	1.17	1.64	0.00	0.00	0.00
HAGA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HAGA4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HAPV3	0.00	0.00	0.60	2.13	0.43	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HBOR3	3.32	8.86	1.01	0.00	0.00	0.00	0.00	36.68	25.12	10.63	8.78	8.68	3.85	0.00	0.00	0.00
HBRE3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HBSA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HBTS5	5.57	4.85	0.32	0.20	0.65	0.53	6.63	9.07	47.49	15.50	8.54	21.17	13.77	0.00	0.00	0.00
HETA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HETA4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HGTX3	0.00	0.00	0.28	2.56	3.11	2.33	6.28	6.74	5.76	4.38	4.24	3.61	1.73	0.00	0.00	0.00
HOOT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HOOT4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HYPE3	3.76	2.73	4.36	3.43	3.00	6.25	1.81	1.91	0.00	0.00	0.92	0.00	1.42	0.00	0.00	0.00
IDVL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IDVL4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	1.51	7.84	0.00	0.00	0.00
IFCM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGBR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGSN3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGTA3	0.00	0.00	0.00	1.13	0.80	1.63	1.73	1.27	1.07	1.39	1.80	1.40	1.99	0.00	0.00	0.00
IGTI11	1.74	1.84	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGTI3	1.99	1.84	4.17	0.52	0.53	0.87	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGTI4	1.88	1.79	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
INEP3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	4.74	0.00	0.00	0.00
INEP4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	5.80	0.00	0.00	0.00
INNT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
INTB3	2.08	1.85	0.59	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IRBR3	0.00	0.00	0.00	0.38	6.52	2.63	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ITEC3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.05	2.99	0.00	0.00	0.00	0.00
ITSA3	7.86	6.90	4.24	5.23	8.48	7.15	3.62	6.26	7.58	1.83	1.71	2.86	2.91	0.00	0.00	0.00
ITSA4	7.96	7.22	4.41	5.50	8.45	7.87	3.52	6.07	7.75	1.89	2.44	4.27	3.30	0.00	0.00	0.00
ITUB3	6.04	4.65	4.76	4.67	8.76	7.38	0.86	2.78	5.36	1.62	2.93	3.23	3.48	0.00	0.00	0.00
ITUB4	5.13	4.07	4.34	4.12	7.56	6.25	0.76	2.47	5.01	1.51	2.75	3.01	2.77	0.00	0.00	0.00
JALL3	5.22	2.33	2.81	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
JBSS3	9.32	9.10	7.95	2.28	0.01	0.40	0.34	3.56	1.36	0.69	0.68	0.00	0.00	0.00	0.00	0.00
JFEN3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	3.04	2.05	2.26	1.49	0.00	0.00	0.00
JHSF3	10.14	4.16	7.06	1.87	2.80	0.00	0.00	0.00	0.00	2.46	4.36	2.17	4.28	5.23	0.00	0.00
JOPA3	3.91	3.68	2.97	0.82	2.40	0.00	3.30	0.00	4.81	4.30	24.75	2.56	1.64	0.00	0.00	0.00
JOPA4	2.67	2.43	2.69	0.99	3.10	0.00	3.62	4.77	3.53	3.16	21.03	2.43	2.12	0.00	0.00	0.00
JSLG3	2.64	8.21	3.90	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
KEPL3	10.80	18.28	4.28	1.44	1.18	0.00	0.00	0.57	8.40	1.95	1.73	1.72	0.00	0.00	0.00	0.00
KLBN11	5.37	7.56	1.43	0.08	4.67	6.52	2.52	2.76	1.76	5.18	0.00	0.00	0.00	0.00	0.00	0.00
KLBN3	5.39	7.49	1.30	0.08	4.04	4.72	1.76	1.61	0.97	4.61	2.90	2.37	3.15	0.00	0.00	0.00
KLBN4	5.37	7.51	1.46	0.08	4.85	7.32	2.83	3.43	2.17	5.25	2.86	2.50	3.01	0.00	0.00	0.00
KRSA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LAME3	0.00	0.00	3.64	0.07	1.23	0.50	0.19	0.91	0.90	0.95	0.77	0.60	0.81	0.00	0.00	0.00
LAME4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LAND3	8.06	0.71	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LAVV3	4.09	10.81	13.10	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LCAM3	0.00	0.00	1.74	1.26	4.04	2.43	1.51	10.78	6.88	3.88	2.57	1.14	0.00	0.00	0.00	0.00
LEVE3	31.79	14.60	4.79	0.44	7.88	7.14	2.39	3.01	6.88	9.45	4.78	7.08	10.24	0.00	0.00	0.00
LHER3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LHER4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LIGT3	0.00	5.48	3.75	0.00	0.81	0.88	0.00	0.28	7.80	10.51	4.42	9.62	9.47	0.00	0.00	0.00
LINX3	0.00	0.00	1.51	0.30	0.44	0.71	1.05	1.63	1.87	1.26	0.71	0.00	0.00	0.00	0.00	0.00
LIPR3	3.38	2.60	2.74	0.00	0.37	12.79	1.40	0.87	0.00	0.55	2.23	3.90	1.97	0.00	0.00	0.00
LJQQ3	0.00	0.00	1.26	0.41	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LOGG3	3.83	5.38	1.29	0.62	0.43	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LOGN3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LPSB3	1.04	4.15	0.00	0.00	0.00	0.00	0.00	0.00	0.39	7.63	2.15	3.38	3.57	0.00	0.00	0.00
LREN3	5.41	3.26	1.91	0.74	1.03	1.06	1.14	1.97	8.24	1.84	3.20	2.63	4.00	0.00	0.00	0.00
LTEL3B	1.41	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LUPA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LUXM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	1.81	1.43	0.00	0.00	0.00
LUXM4	0.00	0.85	1.96	7.30	7.20	2.20	0.00	0.00	0.00	5.45	3.10	2.32	2.59	0.00	0.00	0.00
LVTC3	0.32	2.95	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LWSA3	0.77	0.00	0.00	0.16	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MAGG3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MAPT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MAPT4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MATD3	0.86	1.25	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MBLY3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MDIA3	0.58	5.43	0.78	1.34	0.66	0.96	1.08	1.35	1.83	1.33	1.03	1.29	3.23	0.00	0.00	0.00
MDNE3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MEAL3	0.00	0.00	0.00	0.00	7.66	0.08	3.45	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MEGA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MELK3	13.15	6.37	7.26	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MERC3	0.00	0.00	0.00	0.51	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MERC4	6.43	6.21	4.89	4.35	3.55	14.50	8.10	0.00	0.00	0.00	9.29	7.60	11.05	0.00	0.00	0.00
MGEL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MGEL4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	6.69	2.34	0.00	0.00
MGLU3	0.00	0.00	0.21	0.48	1.01	0.47	1.76	0.00	1.06	2.24	0.00	0.24	0.00	0.00	0.00	0.00
MILS3	2.68	2.29	2.93	0.00	0.00	0.00	0.00	0.00	0.00	2.55	1.97	0.53	1.22	0.00	0.00	0.00
MLAS3	0.00	3.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MMAQ3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MMAQ4	503.40	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MMXM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	1.29	0.09	0.00	0.00	0.00	0.00
MNDL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	10.42	0.00	0.00	0.00
MNPR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MOAR3	0.92	2.65	11.16	2.65	7.20	10.10	6.01	4.69	0.00	5.07	14.14	5.26	6.83	0.00	0.00	0.00
MODL11	0.00	0.00	1.97	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MODL3	1.42	4.44	1.72	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MODL4	0.00	0.00	2.14	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MOSI3	0.00	0.00	0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MOVI3	2.69	18.96	3.30	0.65	1.24	4.30	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MPLU3	0.00	0.00	0.00	0.00	0.00	8.36	9.48	9.40	4.79	5.85	5.17	5.12	1.70	0.00	0.00	0.00
MRFG3	12.16	25.83	12.93	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.16	0.00	0.00	0.00
MRSA3B	2.33	0.00	0.74	0.94	1.74	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MRSA5B	2.73	2.33	0.70	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MRSA6B	2.73	2.23	0.75	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MRVE3	0.00	5.21	5.33	1.95	5.16	8.33	4.25	3.23	8.93	4.01	3.11	3.15	1.68	0.00	0.00	0.00
MSPA3	0.12	0.00	0.00	0.00	0.80	10.73	12.02	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MSPA4	0.15	0.00	0.00	0.00	0.00	11.75	14.81	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MSRO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MTIG3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.13	0.00	0.00	0.00	0.00
MTIG4	0.00	0.00	0.00	0.00	0.60	0.00	0.00	0.00	0.00	0.00	0.00	0.67	0.00	0.00	0.00	0.00
MTRE3	21.75	9.02	6.75	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MTSA3	2.22	0.00	0.00	0.00	0.00	0.00	0.00	0.00	2.50	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MTSA4	4.15	5.70	5.32	2.37	3.41	4.39	6.81	5.43	6.55	7.60	5.73	4.98	3.26	0.00	0.00	0.00
MULT3	4.21	3.27	2.67	1.93	1.42	3.32	1.70	0.85	3.42	1.74	2.10	2.55	1.51	0.92	0.00	0.00
MWET3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MWET4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MYPK3	2.51	7.07	6.55	4.28	0.79	3.21	0.33	1.89	2.46	2.46	2.19	4.34	2.73	0.00	0.00	0.00
NAFG3	0.00	0.00	0.00	0.00	0.00	0.00	0.55	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NAFG4	0.00	0.00	0.00	0.00	0.00	0.83	0.00	0.00	0.00	4.89	0.40	0.59	2.41	0.00	0.00	0.00
NEMO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NEMO5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NEMO6	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NEOE3	6.48	5.17	3.24	2.32	2.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NEXP3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	45.41	5.27	4.71	3.24	0.00	0.00	0.00
NGRD3	1.07	1.00	0.47	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NINJ3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NORD3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NRTQ3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NTCO3	0.00	1.13	0.00	0.00	1.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NUTR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ODER4	1.19	0.00	0.00	0.00	0.00	0.00	2.78	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ODPV3	2.39	3.47	3.74	3.48	2.14	2.04	3.30	2.80	4.54	4.00	3.49	5.88	2.18	0.00	0.00	0.00
OFSA3	3.15	2.78	1.86	1.15	0.45	0.73	0.46	0.80	0.98	0.00	0.00	0.00	0.00	0.00	0.00	0.00
OGXP3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
OIBR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	22.59	16.69	0.00	0.00	0.00	0.00
OIBR4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	22.72	18.38	0.00	0.00	0.00	0.00
OMGE3	0.00	0.00	0.00	0.00	0.00	0.52	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ONCO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
OPCT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ORVR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
OSXB3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PARD3	0.64	3.03	1.48	1.30	1.69	1.74	4.31	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PATI3	1.67	8.32	3.37	0.62	3.63	1.33	1.45	0.00	1.62	1.71	0.00	2.19	0.00	0.95	0.00	0.00
PATI4	6.39	0.00	4.02	7.47	5.57	4.41	0.00	0.00	9.53	7.25	5.70	5.92	7.13	3.69	0.00	0.00
PCAR3	0.00	2.15	10.02	0.78	0.91	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PCAR4	0.00	0.00	0.00	0.00	1.01	2.13	0.40	0.03	3.24	1.02	0.98	0.92	1.06	0.00	0.00	0.00
PDGR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	4.48	2.87	0.00	0.00	0.00
PDTC3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PEAB3	2.28	3.43	19.67	56.35	8.27	8.43	7.56	3.89	18.93	0.00	9.54	0.00	6.35	0.66	0.00	0.00
PEAB4	1.15	2.65	17.50	64.23	8.73	0.00	8.52	3.97	19.74	0.00	10.50	8.01	6.98	0.75	0.00	0.00
PETR3	25.20	59.84	18.41	0.83	1.57	0.98	0.00	0.00	0.00	5.44	1.70	2.68	3.87	0.00	0.00	0.00
PETR4	27.20	68.48	19.87	0.00	3.12	3.97	0.00	0.00	0.00	9.96	4.57	2.69	4.14	0.00	0.00	0.00
PETZ3	0.55	0.63	0.26	0.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PFRM3	4.34	4.72	4.59	0.00	0.00	0.00	0.00	0.00	0.00	2.97	1.10	0.96	1.22	1.69	0.00	0.00
PGMN3	5.92	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PINE3	3.90	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PINE4	4.13	0.00	0.00	0.00	0.00	0.00	0.00	10.64	16.28	13.54	2.64	4.73	7.45	0.00	0.00	0.00
PLAS3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	3.88	0.00	0.00	0.00	0.00
PLPL3	1.57	4.05	6.03	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PMAM3	0.00	0.00	0.00	0.00	0.30	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PNVL3	1.99	2.19	1.31	0.62	0.86	1.05	1.14	0.07	0.41	0.57	1.01	0.39	1.40	1.47	0.00	0.00
PNVL4	0.00	0.00	0.00	0.73	1.26	1.63	1.45	0.22	0.88	0.82	1.30	0.72	1.77	1.81	0.00	0.00
POMO3	8.31	5.92	4.28	3.42	1.35	3.40	0.57	6.09	4.85	4.46	0.00	2.70	5.78	0.00	0.00	0.00
POMO4	6.45	5.02	3.51	3.24	1.33	2.72	0.46	4.78	4.46	4.54	0.00	2.48	5.25	0.00	0.00	0.00
PORT3	5.65	26.26	5.29	6.54	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
POSI3	7.40	3.62	3.13	0.63	0.00	0.00	1.65	0.00	8.03	2.12	6.11	0.00	4.48	0.00	0.00	0.00
POWE3	0.00	0.00	0.50	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PPAR3	85.96	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PPLA11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PRIO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PRNR3	2.34	4.44	0.77	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PSSA3	3.28	5.00	12.49	4.37	3.38	7.74	4.14	4.94	6.06	4.05	3.73	4.17	4.93	0.00	0.00	0.00
PTBL3	4.01	4.04	11.70	0.58	2.88	6.35	1.40	4.79	25.52	3.95	1.97	1.01	0.00	0.00	0.00	0.00
PTCA11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PTCA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PTNT3	0.00	3.50	1.34	0.00	0.00	2.14	0.00	0.00	0.00	3.12	0.00	0.00	0.00	0.00	0.00	0.00
PTNT4	0.00	5.10	3.23	0.00	3.57	4.76	7.14	6.98	6.57	7.57	8.92	0.00	0.00	0.00	0.00	0.00
QGEP3	1.03	0.00	0.00	0.00	0.00	16.43	1.40	2.81	2.57	2.15	0.00	0.00	0.00	0.00	0.00	0.00
QUAL3	2.55	4.35	12.26	0.84	3.52	5.61	4.41	8.80	3.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
QUSW3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
QVQP3B	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RADL3	0.58	1.07	0.91	1.64	0.57	1.11	0.67	0.97	1.53	0.89	0.47	0.52	0.34	0.00	0.00	0.00
RAIL3	0.29	0.10	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RAIZ4	5.91	4.56	0.25	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RANI3	8.24	7.94	5.13	1.28	0.57	0.00	1.24	0.00	3.56	4.20	4.61	47.98	9.59	0.00	0.00	0.00
RANI4	0.00	0.00	0.00	1.25	0.53	0.00	1.28	0.00	0.00	4.19	4.68	0.00	0.00	0.00	0.00	0.00
RAPT3	5.20	10.76	5.21	2.07	1.70	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RAPT4	4.40	10.48	6.01	1.50	1.42	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RCSL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RCSL4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RDNI3	3.22	0.83	0.10	0.08	0.00	0.00	0.00	4.35	8.57	5.35	8.30	2.72	3.15	0.00	0.00	0.00
RDOR3	1.07	1.37	3.26	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RECV3	5.18	2.35	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
REDE3	9.24	9.67	14.95	0.83	3.24	0.18	0.62	2.50	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RENT3	2.68	2.48	0.84	0.50	0.88	0.91	2.78	2.15	3.33	1.12	4.83	0.96	1.46	0.00	0.00	0.00
RLOG3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	5.76	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RNEW11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RNEW3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RNEW4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ROMI3	8.01	5.84	4.22	15.53	6.38	8.81	1.04	0.89	1.45	0.16	0.00	0.00	4.90	0.00	0.00	0.00
RPAD3	0.00	0.01	0.00	0.01	0.00	0.00	0.02	0.00	0.58	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RPAD5	6.45	8.18	7.06	5.60	4.98	8.55	8.28	9.34	9.78	7.48	2.61	0.00	0.00	0.00	0.00	0.00
RPAD6	0.00	0.01	0.00	0.01	0.00	0.00	0.01	0.00	0.85	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RPMG3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RRRP3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RSID3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	6.75	3.90	0.00	0.00	0.00
RSUL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RSUL4	3.72	2.82	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SANB11	5.67	7.95	9.46	6.26	4.22	4.13	1.25	0.00	0.00	0.00	0.00	2.59	5.59	0.00	0.00	0.00
SANB3	5.73	8.03	9.50	6.17	3.91	3.78	3.81	2.29	5.57	31.16	1887.47	1123.53	4.75	0.00	0.00	0.00
SANB4	5.67	7.86	9.31	6.26	4.65	4.50	5.86	4.86	7.49	38.15	2076.22	1426.02	5.98	0.00	0.00	0.00
SAPR11	7.82	8.35	5.69	3.88	4.24	5.44	2.68	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SAPR3	7.40	8.05	5.32	3.06	4.58	3.69	4.89	0.00	11.82	5.89	0.00	0.00	0.00	0.00	0.00	0.00
SAPR4	7.96	8.42	5.75	4.04	4.16	6.36	5.66	5.86	15.52	8.81	5.88	3.47	6.60	0.00	0.00	0.00
SBFG3	1.70	0.92	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SBSP3	2.09	1.65	0.99	3.10	1.91	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SCAR3	0.00	0.79	0.89	0.14	0.78	0.00	2.64	0.80	3.31	2.58	2.76	2.26	0.00	0.00	0.00	0.00
SEDU3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.33	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SEER3	0.00	0.00	3.15	1.31	8.94	2.73	0.88	0.99	0.61	0.99	0.00	0.00	0.00	0.00	0.00	0.00
SEQL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SGPS3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SHOW3	0.00	0.00	0.00	0.00	0.95	4.24	1.27	0.52	0.00	0.00	0.00	2.63	0.00	0.00	0.00	0.00
SHUL3	0.24	0.00	0.00	0.00	0.00	0.00	0.00	0.00	1.93	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SHUL4	4.16	4.60	2.22	2.29	2.62	4.46	2.32	3.10	6.56	5.86	1.14	2.12	1.89	0.00	0.00	0.00
SIMH3	2.01	9.67	3.83	0.69	0.58	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SLCE3	7.66	5.91	2.36	3.59	3.82	5.10	8.31	4.14	1.70	2.75	0.76	3.20	1.03	0.00	0.00	0.00
SLED3	0.00	0.00	0.00	0.00	0.00	20.00	3.60	0.00	0.00	7.39	4.41	0.00	0.00	0.00	0.00	0.00
SLED4	0.00	0.00	0.00	0.00	0.00	20.00	4.25	0.00	17.98	13.75	3.40	3.54	4.20	0.00	0.00	0.00
SMFT3	1.70	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SMLS3	0.00	0.00	17.98	5.41	9.42	8.88	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SMTO3	4.68	4.27	6.77	1.98	2.77	2.82	1.45	2.52	1.31	0.99	0.93	1.15	1.60	0.00	0.00	0.00
SNSY3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SNSY5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SNSY6	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOJA3	0.61	1.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOMA3	1.75	0.89	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOND3	12.04	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOND5	11.08	21.30	23.65	1.85	0.00	0.00	0.00	0.00	10.34	45.66	156.17	4.19	4.49	0.00	0.00	0.00
SOND6	11.24	0.00	0.00	2.30	15.91	7.97	0.00	0.00	10.39	48.86	159.64	0.00	4.99	0.00	0.00	0.00
SPRI3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	20.08	22.20	0.00	0.00	0.00	0.00
SPRI5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	36.21	18.70	22.20	91.44	0.00	0.00	0.00
SPRI6	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	21.68	28.73	0.00	0.00	0.00	0.00
SPRT3B	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SQIA3	0.20	0.44	0.12	0.00	0.23	0.74	0.35	1.55	6.77	1.79	0.00	0.00	0.00	0.00	0.00	0.00
STBP3	5.65	8.44	4.04	0.33	0.05	0.07	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
STKF3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
STTR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SULA11	0.27	0.27	1.39	4.16	1.07	2.02	3.23	2.96	2.71	3.02	4.48	3.62	9.36	0.00	0.00	0.00
SULA3	0.27	0.27	1.35	3.47	0.86	1.60	3.37	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SULA4	0.26	0.26	1.41	4.61	1.20	2.45	3.24	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SUZB3	3.34	6.49	0.00	0.00	1.12	0.50	2.68	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SYNE3	0.00	12.63	114.83	6.81	0.00	23.05	64.92	0.94	3.27	3.45	4.18	1.31	1.59	0.00	0.00	0.00
TAEE11	9.47	14.00	12.38	9.63	6.06	11.81	8.27	13.04	11.26	15.57	12.11	7.84	0.00	0.00	0.00	0.00
TAEE3	9.53	13.91	12.39	9.56	6.13	10.97	8.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TAEE4	9.45	13.89	12.33	9.57	6.00	12.22	8.66	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TASA3	9.77	12.26	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	1.02	4.14	8.63	0.00	0.00	0.00
TASA4	9.84	12.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	1.19	4.64	9.04	0.00	0.00	0.00
TCNO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	7.74	0.00	0.00	4.62	0.00	0.82	0.00	0.00
TCNO4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	3.89	0.00	0.00	5.00	0.00	1.19	0.00	0.00
TCSA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	7.47	7.61	12.16	0.00	3.73	2.55	0.00	0.00	0.00
TECN3	2.31	3.82	0.00	0.00	0.00	0.00	0.00	2.70	8.29	4.75	0.99	1.79	0.00	0.00	0.00	0.00
TEKA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TEKA4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TELB3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TELB4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TEND3	0.00	0.00	1.06	1.63	1.98	1.59	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TESA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TFCO4	1.23	1.72	0.77	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TGMA3	4.73	5.79	5.03	1.26	4.17	4.16	2.33	0.00	1.61	1.62	5.06	2.77	3.90	0.00	0.00	0.00
TIET11	0.00	0.00	0.16	6.37	5.16	7.78	6.47	15.45	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TIET3	0.00	0.00	0.11	6.29	3.85	7.65	6.39	14.46	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TIET4	0.00	0.00	0.11	6.33	5.58	7.72	6.39	16.08	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TIMS3	4.79	4.66	3.29	3.75	1.97	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TKNO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TKNO4	5.25	10.06	5.19	4.24	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TOTS3	1.45	1.12	1.08	1.05	0.65	1.15	1.18	3.84	3.67	2.75	1.97	1.62	6.40	0.00	0.00	0.00
TOYB3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TOYB4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TPIS3	0.00	2.08	1.95	0.00	0.00	12.47	0.00	7.17	4.94	0.00	3.75	2.68	2.07	0.00	0.00	0.00
TRAD3	0.00	0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TRIS3	2.75	6.39	4.07	1.75	0.89	4.09	3.18	4.32	4.62	4.10	1.24	0.00	3.99	2.01	0.00	0.00
TRPL3	3.35	3.67	11.73	5.93	5.49	18.24	5.17	2.55	5.28	0.00	0.00	6.28	10.94	0.00	0.00	0.00
TRPL4	4.41	4.62	14.76	6.26	6.69	18.17	4.54	2.32	4.96	3.41	4.87	8.47	10.19	0.00	0.00	0.00
TRPN3	0.00	0.00	0.00	0.00	267.89	2.48	3.81	0.71	3.51	19.29	6.02	2.31	18.76	0.00	0.00	0.00
TTEN3	1.09	0.16	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TUPY3	4.84	1.65	2.17	0.00	4.45	4.30	3.80	3.43	3.97	1.96	1.18	2.99	4.07	0.00	0.00	0.00
TXRX3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TXRX4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
UCAS3	6.96	7.15	5.08	6.83	1.50	0.00	0.00	0.00	6.60	6.33	10.33	0.00	0.00	0.00	0.00	0.00
UGPA3	1.48	4.62	4.40	1.01	3.53	2.74	2.29	2.34	2.50	2.76	2.36	2.20	2.94	0.00	0.00	0.00
UNIP3	9.02	15.48	13.61	2.27	0.77	6.57	27.29	3.85	3.82	3.32	1.15	0.41	0.00	0.00	0.00	0.00
UNIP5	8.94	14.90	15.01	3.08	0.84	7.24	31.43	5.75	8.36	7.80	6.55	0.40	0.00	0.00	0.00	0.00
UNIP6	9.47	15.86	14.96	2.39	0.85	7.35	31.81	4.63	5.71	4.13	1.43	0.53	0.00	0.00	0.00	0.00
USIM3	4.38	7.72	8.93	0.25	1.47	0.38	0.00	0.00	0.74	0.00	0.00	0.58	0.80	0.00	0.00	0.00
USIM5	4.83	8.79	9.40	0.30	1.68	0.52	0.00	0.00	2.11	0.00	0.00	0.68	1.48	0.00	0.00	0.00
USIM6	2.02	4.67	7.50	0.37	1.69	0.00	0.00	0.00	0.00	0.00	0.00	0.72	1.49	0.00	0.00	0.00
VALE3	5.76	8.53	18.79	2.75	2.65	3.86	3.29	0.65	7.49	8.63	5.06	5.35	7.31	0.00	0.00	0.00
VAMO3	3.04	2.07	1.64	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VBBR3	3.75	5.51	9.51	4.25	8.91	5.71	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VITT3	3.51	2.81	0.68	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VIVA3	1.33	0.24	1.29	0.36	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VIVR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VIVT3	5.19	7.97	7.19	7.34	6.86	9.07	5.84	5.28	10.27	6.84	11.76	5.88	3.93	0.00	0.00	0.00
VIVT4	0.00	0.00	0.00	0.00	6.38	8.91	5.44	4.79	10.74	6.41	11.54	5.76	1.77	0.00	0.00	0.00
VLID3	5.51	3.16	0.00	0.00	4.12	5.41	1.98	3.88	2.42	3.17	3.62	3.92	3.83	0.00	0.00	0.00
VSPT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VSPT4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VSTE3	0.93	0.00	0.00	0.00	2.80	3.49	0.00	0.00	0.00	3.02	0.97	1.84	0.00	3.17	0.00	0.00
VULC3	4.81	2.96	3.83	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	5.35	0.00	0.00	0.00
VVAR11	0.00	0.00	0.00	0.00	0.00	0.00	0.33	0.07	15.83	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VVAR4	0.00	0.00	0.00	0.00	0.00	0.00	0.32	0.07	16.43	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VVEO3	1.84	2.69	1.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WEGE3	1.84	1.34	1.86	0.57	0.98	1.98	1.48	2.43	3.03	2.36	2.21	2.00	3.03	0.00	0.00	0.00
WEST3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WHRL3	4.47	3.91	8.75	16.57	5.24	3.15	10.88	0.00	4.84	17.95	9.01	6.51	5.38	0.00	0.00	0.00
WHRL4	4.94	4.12	8.07	16.35	6.62	2.92	11.15	0.00	5.89	19.99	9.27	6.85	5.13	0.00	0.00	0.00
WIZC3	8.23	8.39	7.65	8.32	7.87	7.30	6.04	6.51	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WLMM3	2.54	5.66	1.68	1.45	1.46	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WLMM4	2.07	3.32	1.58	1.11	1.57	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
YDUQ3	0.00	1.24	2.28	1.55	1.07	6.98	0.86	8.12	2.36	0.83	1.31	0.49	2.60	0.00	0.00	0.00
ZAMP3	0.00	0.00	0.00	0.47	0.50	0.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
\.


--
-- Data for Name: pegratio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pegratio (ticker, "2023", "2022", "2021", "2020", "2019", "2018", "2017", "2016", "2015", "2014", "2013", "2012", "2011", "2010", "2009", "2008") FROM stdin;
AALR3	-0.01	0.00	0.00	0.00	0.00	0.08	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ABCB4	0.38	0.14	0.00	0.00	0.00	-3.22	0.84	7.61	0.19	0.26	0.67	3.52	0.00	0.00	0.00	0.00
ABEV3	0.9	1.12	0.00	0.00	0.00	0.43	-1.09	20.78	7.61	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ADHM3	-0.58	-0.58	-0.58	-0.58	0.00	0.26	-0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AERI3	0.00	0.04	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AESB3	-0.61	-0.65	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AFLT3	-0.21	-0.25	0.00	0.00	0.00	0.19	-2.02	1.02	0.00	-0.59	1.15	-0.65	0.00	0.00	0.00	0.00
AGRO3	-0.19	-0.24	0.00	0.00	0.00	0.12	0.02	0.1	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AGXY3	0.00	-0.79	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AHEB3	0.00	-0.01	0.00	0.00	0.00	-0.04	0.00	0.00	0.00	0.00	0.00	-0.84	0.00	0.00	0.00	0.00
AHEB5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-0.84	0.00	0.00	0.00	0.00
AHEB6	0.00	-0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALLD3	-0.16	-0.1	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALOS3	0.00	-0.67	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALPA3	0.18	-0.81	0.00	0.00	0.00	-0.52	110.81	0.35	-5.93	-1.17	1.67	-2.29	0.00	0.00	0.00	0.00
ALPA4	0.18	-1.03	0.00	0.00	0.00	-0.54	113.48	0.4	-4.4	-1.26	1.9	-2.35	0.00	0.00	0.00	0.00
ALPK3	0.25	0.07	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALSC3	0.58	0.58	0.58	0.58	0.00	1.66	-0.06	1.17	-0.89	0.11	-0.01	1.01	0.00	0.00	0.00	0.00
ALUP11	-0.39	-0.51	0.00	0.00	0.00	0.82	2.16	0.28	-0.31	0.4	0.1	0.00	0.00	0.00	0.00	0.00
ALUP3	-0.39	-0.5	0.00	0.00	0.00	1.01	2.8	0.4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALUP4	-0.39	-0.52	0.00	0.00	0.00	0.74	1.88	0.22	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AMAR3	0.00	0.00	0.00	0.00	0.00	-0.25	0.78	-0.09	0.15	-1.31	-0.64	0.89	0.00	0.00	0.00	0.00
AMBP3	0.07	-0.66	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AMER3	-0.45	-5.27	0.00	0.00	0.00	14.08	1.47	-0.33	-0.06	-9.29	2.3	-0.17	0.00	0.00	0.00	0.00
ANDG3B	-0.78	-0.78	-0.78	-0.78	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ANDG4B	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ANIM3	0.15	-0.92	0.00	0.00	0.00	-6.28	0.09	-0.8	-0.29	0.00	0.00	0.00	0.00	0.00	0.00	0.00
APER3	0.04	0.00	0.00	0.00	0.00	-0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
APTI3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
APTI4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ARML3	0.47	0.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ARZZ3	-1.32	0.88	0.00	0.00	0.00	-4.53	0.95	-6.52	2.54	10.66	1.69	6.29	0.00	0.00	0.00	0.00
ASAI3	-0.43	-0.89	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ATMP3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ATOM3	-0.29	0.09	0.00	0.00	0.00	0.1	-0.01	-2.28	170.1	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AURA33	-0.24	0.14	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AURE3	0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AVLL3	-0.01	-0.04	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AZEV3	0.01	0.01	0.00	0.00	0.00	-0.03	0.00	0.00	-0.39	0.00	-0.69	0.00	0.00	0.00	0.00	0.00
AZEV4	0.01	0.01	0.00	0.00	0.00	0.00	0.00	0.00	-0.36	-0.89	-0.44	0.69	0.00	0.00	0.00	0.00
AZUL4	0.34	0.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
B3SA3	-2.71	-1.83	0.00	0.00	0.00	0.43	-3.49	-0.6	0.07	-1.98	30.1	10.29	0.00	0.00	0.00	0.00
BAHI3	-0.15	-0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BALM3	-1.3	-0.31	0.00	0.00	0.00	0.13	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BALM4	-1.2	-0.27	0.00	0.00	0.00	0.16	-1.65	-0.34	0.28	-0.82	0.14	0.42	0.04	0.00	0.00	0.00
BAUH4	0.68	2.56	0.00	0.00	0.00	1.47	0.27	0.15	-0.17	-4.83	0.04	0.06	-0.05	0.00	0.00	0.00
BAZA3	0.08	0.05	0.00	0.00	0.00	0.09	-0.23	-13.42	0.08	9.2	0.75	0.06	0.00	0.00	0.00	0.00
BBAS3	0.11	0.06	0.00	0.00	0.00	0.32	0.17	-0.23	0.16	0.42	-0.93	-0.58	0.00	0.00	0.00	0.00
BBDC3	-0.26	-0.73	0.00	0.00	0.00	-4.64	-2.55	-6.87	0.31	0.4	1.11	3.78	0.00	0.00	0.00	0.00
BBDC4	-0.29	-0.82	0.00	0.00	0.00	-5.3	-2.69	-6.84	0.29	0.41	1.01	3.91	0.00	0.00	0.00	0.00
BBML3	-384.83	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BBSE3	0.19	0.21	0.00	0.00	0.00	-1.24	15.96	-3.06	0.53	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BDLL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-0.03	0.00	0.00	0.00	0.00	0.00
BDLL4	0.00	0.00	0.00	0.00	0.00	0.15	0.15	0.00	0.03	-0.1	-0.03	0.03	0.02	0.00	0.00	0.00
BEEF11	-0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BEEF3	-0.26	1.35	0.00	0.00	0.00	0.00	0.04	-0.12	-0.03	-0.11	-0.09	0.01	0.11	0.00	0.00	0.00
BEES3	-1.65	0.1	0.00	0.00	0.00	-1.04	0.46	-0.84	0.38	0.17	0.01	-0.13	0.00	0.00	0.00	0.00
BEES4	-1.81	0.12	0.00	0.00	0.00	-1.07	0.49	-0.85	0.37	0.18	0.01	-0.12	0.00	0.00	0.00	0.00
BFRE11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BFRE12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BGIP3	0.3	-0.54	0.00	0.00	0.00	-0.33	0.22	0.03	0.00	0.00	0.00	-1.74	0.00	0.00	0.00	0.00
BGIP4	0.25	-0.35	0.00	0.00	0.00	-0.32	0.21	0.02	0.02	0.00	-0.27	-1.77	0.00	0.00	0.00	0.00
BHIA3	-0.01	-0.74	0.00	0.00	0.00	0.09	-0.17	0.06	-1.36	-0.4	0.01	0.09	0.00	0.00	0.00	0.00
BIDI11	0.13	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BIDI3	0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BIDI4	0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BIOM3	1.18	-0.39	0.00	0.00	0.00	-0.58	0.47	0.01	-0.13	-0.78	0.6	-0.03	0.00	0.00	0.00	0.00
BLAU3	-17.44	1.13	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BLUT3	0.2	0.2	0.00	0.00	0.00	0.00	0.03	0.00	4.94	0.05	-0.01	0.19	0.00	0.00	0.00	0.00
BLUT4	0.06	0.06	0.00	0.00	0.00	0.00	0.03	0.00	1.35	0.04	-0.01	0.12	0.00	0.00	0.00	0.00
BMEB3	0.66	-6.14	0.00	0.00	0.00	-0.3	0.01	-0.17	-0.02	0.00	-0.18	0.05	0.00	0.00	0.00	0.00
BMEB4	0.57	-6.15	0.00	0.00	0.00	-0.3	0.01	-0.14	-0.01	0.00	-0.12	0.03	0.00	0.00	0.00	0.00
BMGB4	0.5	-0.33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BMIN3	0.17	0.00	0.00	0.00	0.00	-0.13	0.00	0.00	0.00	0.00	-1.55	0.00	0.00	0.00	0.00	0.00
BMIN4	0.11	0.03	0.00	0.00	0.00	-0.11	0.05	0.00	0.36	0.17	-0.37	7.21	0.00	0.00	0.00	0.00
BMKS3	0.08	0.02	0.00	0.00	0.00	-0.64	-0.4	0.17	-1.16	0.22	-0.75	-0.29	0.00	0.00	0.00	0.00
BMOB3	0.39	1.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BNBR3	0.09	0.13	0.00	0.00	0.00	3.55	-2.08	0.02	-0.13	0.03	-0.12	0.01	0.00	0.00	0.00	0.00
BOAS3	5.59	0.19	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BOBR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BOBR4	-0.03	-0.21	0.00	0.00	0.00	-0.05	0.02	-0.02	0.00	0.04	0.00	-0.65	0.00	0.00	0.00	0.00
BPAC11	0.39	-1.19	0.00	0.00	0.00	-0.43	-0.15	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAC3	0.56	-1.92	0.00	0.00	0.00	-0.46	-0.19	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAC5	0.31	-0.83	0.00	0.00	0.00	-0.41	-0.15	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAN4	-1.93	-1.42	0.00	0.00	0.00	0.14	-0.1	0.05	0.14	-0.08	0.00	0.00	0.00	0.00	0.00	0.00
BPAR3	0.3	0.3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAT33	-0.11	-0.11	-0.11	-0.11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPHA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.26	-0.41	-0.01	0.00	0.00	0.00	0.00	0.00	0.00
BRAP3	-0.06	-0.05	0.00	0.00	0.00	-0.18	0.01	-0.06	0.00	-0.13	0.00	0.00	0.00	0.00	0.00	0.00
BRAP4	-0.06	-0.06	0.00	0.00	0.00	-0.19	0.02	-0.07	0.00	-0.16	1.67	-0.31	0.00	0.00	0.00	0.00
BRBI11	0.92	1.41	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRBI3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRBI4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRFS3	-0.05	0.00	0.00	0.00	0.00	-0.01	-0.13	0.94	0.39	0.23	1.06	-1.09	0.00	0.00	0.00	0.00
BRGE11	0.08	0.02	0.00	0.00	0.00	0.00	-0.39	0.00	0.00	-0.32	0.00	0.00	0.00	0.00	0.00	0.00
BRGE12	0.08	0.03	0.00	0.00	0.00	1.16	-0.24	-0.73	0.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRGE3	0.08	0.03	0.00	0.00	0.00	1.55	-0.31	0.00	0.00	-0.24	0.00	0.00	0.00	0.00	0.00	0.00
BRGE5	0.08	0.00	0.00	0.00	0.00	0.94	0.00	-0.63	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRGE6	0.08	0.04	0.00	0.00	0.00	0.00	0.00	0.00	0.11	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRGE7	0.08	0.00	0.00	0.00	0.00	1.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRGE8	0.08	0.03	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRIN3	0.08	0.00	0.00	0.00	0.00	-0.01	0.08	1.76	0.02	-0.36	-2.48	6.12	0.00	0.00	0.00	0.00
BRIT3	0.00	0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRIV3	0.01	0.11	0.00	0.00	0.00	1.26	-0.22	0.61	0.23	-0.27	0.00	0.00	0.00	0.00	0.00	0.00
BRIV4	0.01	0.11	0.00	0.00	0.00	1.56	-0.25	0.7	0.26	-0.35	0.00	0.00	0.00	0.00	0.00	0.00
BRKM3	0.03	0.59	0.00	0.00	0.00	-0.42	-0.01	0.51	0.01	0.3	-0.15	-0.22	0.00	0.00	0.00	0.00
BRKM5	0.03	0.55	0.00	0.00	0.00	-0.44	-0.01	0.58	0.02	0.48	-0.19	-0.3	0.00	0.00	0.00	0.00
BRKM6	0.02	0.59	0.00	0.00	0.00	0.00	0.00	0.77	0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRML3	0.29	0.06	0.00	0.00	0.00	-0.05	0.02	0.01	-10.74	-0.55	-0.19	0.03	0.00	0.00	0.00	0.00
BRPR3	0.01	0.00	0.00	0.00	0.00	-2.56	0.01	-0.75	0.01	0.05	-0.77	0.02	0.00	0.00	0.00	0.00
BRQB3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRSR3	-0.46	-0.23	0.00	0.00	0.00	-0.56	0.2	-0.37	0.1	-0.49	-0.7	-0.58	0.00	0.00	0.00	0.00
BRSR5	-0.74	-0.38	0.00	0.00	0.00	-0.63	0.16	-0.37	0.00	-0.52	0.00	-0.73	0.00	0.00	0.00	0.00
BRSR6	-0.43	-0.21	0.00	0.00	0.00	-0.58	0.11	-0.34	0.07	-0.56	-0.68	-0.71	0.00	0.00	0.00	0.00
BSEV3	-0.06	-0.06	-0.06	0.00	0.00	0.47	-0.01	0.08	-0.02	0.04	0.00	0.00	0.00	0.00	0.00	0.00
BSLI3	-0.73	-0.82	0.00	0.00	0.00	-1.95	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BSLI4	-0.61	-0.66	0.00	0.00	0.00	0.00	0.00	0.04	0.00	0.00	0.00	0.09	0.00	0.00	0.00	0.00
BTTL4	-542.06	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CALI3	0.00	-0.7	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CALI4	0.00	0.00	0.00	0.00	0.00	-0.24	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CAMB3	0.12	0.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CAMB4	0.07	0.00	0.00	0.00	0.00	-0.1	0.00	-0.31	0.00	0.00	-2.9	0.01	0.00	0.00	0.00	0.00
CAML3	0.02	-0.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CASH3	0.42	-0.36	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CASN3	-8.36	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	1.18	0.00	0.00	0.00	0.00
CASN4	-7.28	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CATA3	0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CATA4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CBAV3	0.02	0.47	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CBEE3	0.04	0.17	0.00	0.00	0.00	-0.09	18342.18	-1435.7	839.07	-352.97	2235.4	66.77	0.00	0.00	0.00	0.00
CCRO3	-0.35	0.01	0.00	0.00	0.00	-0.51	3.72	0.17	-0.72	-126.75	1.57	0.94	0.00	0.00	0.00	0.00
CCXC3	0.00	0.00	0.00	0.00	0.00	0.05	0.02	0.00	0.73	0.01	0.00	0.00	0.00	0.00	0.00	0.00
CEAB3	-0.69	-8.52	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEBR3	-4.14	-0.04	0.00	0.00	0.00	0.00	0.00	0.01	-0.05	0.00	0.01	0.02	0.00	0.00	0.00	0.00
CEBR5	-4.14	-0.05	0.00	0.00	0.00	-0.18	0.2	0.01	0.00	-0.02	0.01	0.03	0.00	0.00	0.00	0.00
CEBR6	-4.28	-0.04	0.00	0.00	0.00	0.00	0.17	0.01	-0.05	-0.02	0.01	0.02	0.00	0.00	0.00	0.00
CEDO3	-0.02	0.00	0.00	0.00	0.00	0.00	-0.01	0.00	0.00	0.05	0.00	4.1	0.00	0.00	0.00	0.00
CEDO4	-0.01	0.00	0.00	0.00	0.00	-0.03	-0.01	0.00	0.00	0.06	-28.93	3.09	0.00	0.00	0.00	0.00
CEEB3	-0.27	-1.09	0.00	0.00	0.00	0.00	-0.8	-0.74	-0.49	-1.74	-0.48	-1.01	0.00	0.00	0.00	0.00
CEEB5	-0.31	-0.86	0.00	0.00	0.00	0.00	0.00	-0.8	0.00	-1.71	0.00	0.00	0.00	0.00	0.00	0.00
CEEB6	-0.45	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEED3	-0.08	0.3	0.00	0.00	0.00	0.00	0.04	-8.61	-0.02	0.00	0.00	-0.38	0.00	0.00	0.00	0.00
CEED4	-0.06	0.28	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEGR3	-2.46	0.00	0.00	0.00	0.00	-1.01	0.00	0.00	-1604.02	-2988.05	738.16	0.00	0.00	0.00	0.00	0.00
CEPE3	-2.5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEPE5	-0.8	0.00	0.00	0.00	0.00	0.12	0.00	40.74	-1.13	2.68	-0.02	0.47	0.00	0.00	0.00	0.00
CEPE6	-0.86	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-0.87	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CESP3	0.00	0.00	0.00	0.00	0.00	-0.08	0.15	-0.02	0.49	-0.03	0.24	0.03	0.00	0.00	0.00	0.00
CESP5	0.00	0.00	0.00	0.00	0.00	-0.08	0.26	-0.03	0.63	-0.04	0.27	0.03	0.00	0.00	0.00	0.00
CESP6	0.00	0.00	0.00	0.00	0.00	-0.09	0.17	-0.02	0.64	-0.04	0.27	0.03	0.00	0.00	0.00	0.00
CGAS3	-0.46	-0.66	0.00	0.00	0.00	0.06	-0.39	0.2	0.45	-8.1	0.15	0.31	0.00	0.00	0.00	0.00
CGAS5	-0.49	-0.65	0.00	0.00	0.00	0.05	-0.42	0.22	0.48	-8.23	0.17	0.33	0.00	0.00	0.00	0.00
CGRA3	-0.12	-0.14	0.00	0.00	0.00	-0.68	-2.27	0.16	-0.22	0.36	0.21	1.42	0.00	0.00	0.00	0.00
CGRA4	-0.13	-0.14	0.00	0.00	0.00	-0.71	-2.39	0.15	-0.2	0.35	0.23	1.42	0.00	0.00	0.00	0.00
CIEL3	0.15	0.22	0.00	0.00	0.00	-0.41	12.46	1.12	1.66	1	1.29	0.47	0.00	0.00	0.00	0.00
CLSA3	0.7	0.57	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CLSC3	0.08	-0.91	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CLSC4	0.09	-1	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CMIG3	0.46	0.96	0.00	0.00	0.00	0.18	0.04	-0.34	-0.15	5.24	-0.16	0.06	0.00	0.00	0.00	0.00
CMIG4	0.34	0.66	0.00	0.00	0.00	0.17	0.04	-0.34	-0.15	4.99	-0.16	0.06	0.00	0.00	0.00	0.00
CMIN3	-0.6	-0.14	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CMSA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CMSA4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CNSY3	0.14	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
COCE3	1.36	0.00	0.00	0.00	0.00	-0.5	0.8	0.00	0.16	0.25	-0.35	-0.77	-34.34	0.00	0.00	0.00
COCE5	1.18	0.18	0.00	0.00	0.00	-0.63	0.9	1.2	0.17	0.2	-0.33	-0.77	-37.26	0.00	0.00	0.00
COCE6	0.52	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
COGN3	4.38	-0.92	0.00	0.00	0.00	-0.41	16.76	0.35	0.28	0.04	0.13	0.44	0.00	0.00	0.00	0.00
CORR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CORR4	0.00	0.00	0.00	0.00	0.00	0.00	-0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CPFE3	0.77	1.01	0.00	0.00	0.00	0.19	0.54	6.85	-1.96	7.77	-0.97	-0.7	0.00	0.00	0.00	0.00
CPLE11	-0.32	-0.24	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CPLE3	-0.31	-0.22	0.00	0.00	0.00	0.16	0.37	-0.23	-3.35	0.45	0.11	-0.25	0.00	0.00	0.00	0.00
CPLE5	-0.84	-0.73	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CPLE6	-0.33	-0.25	0.00	0.00	0.00	0.16	0.43	-0.34	-5.09	0.66	0.15	-0.31	0.00	0.00	0.00	0.00
CPRE3	3.21	0.00	0.00	0.00	0.00	0.09	-5.44	-0.22	1.57	-0.15	0.13	0.00	0.00	0.00	0.00	0.00
CREM3	22.14	22.14	22.14	22.14	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRFB3	-0.42	-0.4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRIV3	-0.03	-0.28	0.00	0.00	0.00	1.37	0.08	3.76	1.39	-0.34	0.00	0.00	0.00	0.00	0.00	0.00
CRIV4	-0.03	-0.27	0.00	0.00	0.00	1.8	0.12	3.77	1.84	-0.32	0.00	0.00	0.00	0.00	0.00	0.00
CRPG3	-0.44	0.00	0.00	0.00	0.00	0.05	-1	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRPG5	-0.4	-0.16	0.00	0.00	0.00	0.05	-0.77	0.00	7.09	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRPG6	-0.39	-0.16	0.00	0.00	0.00	0.05	-0.77	0.00	7.06	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CSAB3	0.5	0.16	0.00	0.00	0.00	-0.8	-0.34	0.3	0.33	0.00	-0.96	-0.33	0.41	0.00	0.00	0.00
CSAB4	0.67	0.2	0.00	0.00	0.00	0.00	-0.33	0.32	0.26	0.03	-0.96	-0.32	0.39	0.00	0.00	0.00
CSAN3	0.23	-0.34	0.00	0.00	0.00	0.32	0.48	0.19	0.18	1.63	-1.1	-0.36	0.00	0.00	0.00	0.00
CSED3	-2.15	-2.41	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CSMG3	0.05	0.12	0.00	0.00	0.00	4.14	0.34	0.00	1.54	-0.39	-0.82	2.83	0.00	0.00	0.00	0.00
CSNA3	0.24	-0.14	0.00	0.00	0.00	0.00	-11.2	0.7	0.00	0.64	-0.19	0.37	0.00	0.00	0.00	0.00
CSRN3	1.91	0.69	0.00	0.00	0.00	0.42	1.64	-1.77	-0.73	5.58	0.00	-0.58	0.00	0.00	0.00	0.00
CSRN5	1.87	0.62	0.00	0.00	0.00	0.39	0.00	-1.73	-0.61	5.44	0.00	-0.59	0.00	0.00	0.00	0.00
CSRN6	2.06	0.00	0.00	0.00	0.00	0.00	0.00	-1.72	0.00	6.27	0.00	-0.64	0.00	0.00	0.00	0.00
CSUD3	0.38	0.32	0.00	0.00	0.00	-0.32	0.31	0.07	0.09	0.00	-8.18	-4.41	0.00	0.00	0.00	0.00
CTCA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CTKA3	0.01	0.05	0.00	0.00	0.00	0.00	0.00	-0.07	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CTKA4	0.01	0.02	0.00	0.00	0.00	0.00	0.33	-0.01	0.01	0.00	0.00	0.09	0.00	0.00	0.00	0.00
CTNM3	0.00	-0.01	0.00	0.00	0.00	0.01	-0.03	-0.01	0.00	0.00	0.16	0.07	0.00	0.00	0.00	0.00
CTNM4	0.00	0.00	0.00	0.00	0.00	0.01	-0.03	-0.01	-2	0.00	0.17	0.06	0.00	0.00	0.00	0.00
CTSA3	0.00	-0.15	0.00	0.00	0.00	0.01	-0.01	0.24	0.00	-1.36	0.65	0.19	0.72	0.00	0.00	0.00
CTSA4	0.00	-0.1	0.00	0.00	0.00	0.01	-0.01	0.26	0.00	-1.43	0.56	0.2	0.73	0.00	0.00	0.00
CTSA8	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CURY3	0.51	1.11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CVCB3	0.64	0.32	0.00	0.00	0.00	1.6	1.12	4.7	0.61	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CXSE3	0.21	0.15	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CYRE3	0.39	-0.56	0.00	0.00	0.00	6.54	0.34	-0.41	-0.21	-0.87	0.95	0.35	0.00	0.00	0.00	0.00
DASA3	-0.03	-0.28	0.00	0.00	0.00	1.13	1.68	0.2	-1.86	-1.13	0.64	-1.17	0.00	0.00	0.00	0.00
DESK3	0.16	0.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DEXP3	-0.45	-0.2	0.00	0.00	0.00	-5.41	1.33	-0.7	-0.01	0.09	-0.01	0.27	-0.05	0.00	0.00	0.00
DEXP4	-0.41	-0.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DIRR3	0.09	0.42	0.00	0.00	0.00	0.32	-0.01	0.54	-0.11	-0.63	5.82	0.34	0.00	0.00	0.00	0.00
DMMO11	0.49	0.47	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DMMO3	2.52	2.75	0.00	0.00	0.00	0.06	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DMVF3	-0.94	0.04	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DOHL3	0.47	0.00	0.00	0.00	0.00	0.00	0.00	-0.69	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DOHL4	0.38	-0.98	0.00	0.00	0.00	0.21	0.09	-0.38	-0.3	1.2	0.07	-0.61	0.01	0.00	0.00	0.00
DOTZ3	0.17	-0.11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DTCY3	-0.21	2.17	0.00	0.00	0.00	-0.26	0.00	3.28	0.98	1.21	0.00	-51.46	0.00	0.00	0.00	0.00
DTCY4	-2.6	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DXCO3	-0.19	-0.13	0.00	0.00	0.00	0.14	0.05	-2.28	-0.4	-0.55	1.16	0.78	0.00	0.00	0.00	0.00
EALT3	-0.16	2.88	0.00	0.00	0.00	-0.12	0.00	0.00	-4.32	-0.29	0.00	0.00	0.00	0.00	0.00	0.00
EALT4	-0.16	2.15	0.00	0.00	0.00	-0.13	0.00	0.00	-2.49	-0.23	0.32	-0.71	0.14	0.00	0.00	0.00
ECOR3	0.06	-0.37	0.00	0.00	0.00	-3.06	-0.12	0.00	-0.34	0.68	-3.62	2.25	0.00	0.00	0.00	0.00
ECPR3	0.14	0.14	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.07	0.00	0.00	0.00	0.00
ECPR4	0.14	0.14	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.07	0.00	0.00	0.00	0.00
EEEL3	0.00	0.00	0.00	0.00	0.00	-0.21	-0.07	0.04	-0.02	-0.03	-0.03	0.05	0.00	0.00	0.00	0.00
EEEL4	0.01	0.00	0.00	0.00	0.00	-0.22	0.00	0.03	-0.03	-0.04	-0.03	0.05	0.00	0.00	0.00	0.00
EGIE3	0.12	0.17	0.00	0.00	0.00	0.6	0.39	4.72	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EKTR3	-0.36	0.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EKTR4	-0.39	0.34	0.00	0.00	0.00	0.85	1.82	-2.1	-0.76	0.16	-2.49	-0.47	0.00	0.00	0.00	0.00
ELEK3	-0.35	-0.35	-0.35	-0.35	0.00	0.15	-0.04	0.00	0.00	0.04	0.00	-4.47	0.00	0.00	0.00	0.00
ELEK4	-0.68	-0.68	-0.68	-0.68	0.00	0.15	-0.06	0.00	0.00	0.05	0.00	-5.95	0.00	0.00	0.00	0.00
ELET3	-0.74	-0.75	0.00	0.00	0.00	0.00	0.1	-0.07	0.00	0.05	0.13	0.00	0.00	0.00	0.00	0.00
ELET5	-1.65	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ELET6	-0.81	-0.77	0.00	0.00	0.00	0.00	0.11	-0.08	0.00	0.07	0.22	0.01	0.00	0.00	0.00	0.00
ELMD3	-0.05	-0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ELPL3	0.07	0.00	0.00	0.00	0.00	0.26	0.00	11.41	-0.09	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EMAE3	-0.33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EMAE4	-0.76	-0.68	0.00	0.00	0.00	-0.45	0.02	-0.72	-0.01	0.03	-0.03	-0.06	0.00	0.00	0.00	0.00
EMBR3	0.49	-0.04	0.00	0.00	0.00	0.13	0.38	0.14	-1.33	9.61	1.57	0.04	0.00	0.00	0.00	0.00
ENAT3	-0.19	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENBR3	-0.25	-0.22	0.00	0.00	0.00	0.07	-1.69	-0.2	0.06	0.06	1.53	-0.57	0.00	0.00	0.00	0.00
ENEV3	-0.64	-0.74	0.00	0.00	0.00	0.01	-0.18	0.1	-0.01	-0.01	-0.02	0.00	0.00	0.00	0.00	0.00
ENGI11	-0.31	-0.48	0.00	0.00	0.00	0.11	0.06	-0.61	0.68	0.31	-0.5	0.26	0.00	0.00	0.00	0.00
ENGI3	-0.53	-0.76	0.00	0.00	0.00	0.12	0.12	-0.64	0.73	0.28	-0.63	0.25	0.00	0.00	0.00	0.00
ENGI4	-0.25	-0.4	0.00	0.00	0.00	0.1	0.05	-0.61	0.7	0.25	-0.45	0.26	0.00	0.00	0.00	0.00
ENJU3	0.15	0.07	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMA3B	0.73	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMA6B	1.21	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMT3	-0.74	0.87	0.00	0.00	0.00	0.00	0.00	0.24	-0.47	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMT4	-0.79	0.87	0.00	0.00	0.00	0.00	0.00	0.00	-0.47	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EPAR3	-0.75	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA3	0.27	0.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA5	0.3	0.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA6	0.42	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA7	0.29	0.21	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQTL3	-0.47	-0.35	0.00	0.00	0.00	-2.03	0.33	-1.27	0.31	0.01	-1.35	-1.02	0.00	0.00	0.00	0.00
ESPA3	0.04	0.07	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ESTR3	-0.01	0.00	0.00	0.00	0.00	0.02	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ESTR4	-0.01	0.00	0.00	0.00	0.00	0.01	0.14	0.00	0.00	0.01	0.00	0.01	0.00	0.00	0.00	0.00
ETER3	-0.1	-0.1	0.00	0.00	0.00	0.07	0.00	0.03	-0.19	-0.2	-0.8	0.39	0.00	0.00	0.00	0.00
EUCA3	-0.15	-0.11	0.00	0.00	0.00	0.00	0.62	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EUCA4	-0.14	-0.08	0.00	0.00	0.00	-0.45	0.35	0.04	-0.39	-0.16	12.97	35.96	0.00	0.00	0.00	0.00
EVEN3	-0.67	-0.17	0.00	0.00	0.00	0.16	0.00	0.00	0.00	-0.47	0.67	0.63	0.00	0.00	0.00	0.00
EZTC3	-0.39	-0.37	0.00	0.00	0.00	-0.58	0.18	-0.23	-0.71	-0.36	0.1	5.13	0.00	0.00	0.00	0.00
FBMC3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FBMC4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.2	0.00	-8.2	0.00	0.00	0.00	0.00
FESA3	-0.21	0.08	0.00	0.00	0.00	0.48	0.02	-0.25	0.05	0.00	-1.65	0.00	0.00	0.00	0.00	0.00
FESA4	-0.16	0.07	0.00	0.00	0.00	0.41	0.02	-0.16	0.04	0.34	-1.14	-2.21	0.00	0.00	0.00	0.00
FHER3	0.01	0.05	0.00	0.00	0.00	0.00	0.00	-0.02	0.00	-0.26	-0.01	1.97	0.00	0.00	0.00	0.00
FIBR3	0.07	0.07	0.07	0.07	0.07	-0.71	0.03	0.7	-0.95	-89.04	0.92	0.00	0.00	0.00	0.00	0.00
FIEI3	-0.04	-0.02	0.00	0.00	0.00	-0.25	0.18	-0.05	-0.46	-0.28	-0.25	0.02	0.00	0.00	0.00	0.00
FIGE3	-0.11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.2	0.00	0.00	0.00	0.00	0.00	0.00
FIGE4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.2	0.00	0.00	0.00	0.00	0.00	0.00
FIQE3	1.78	0.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FLEX3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FLRY3	-2.07	-1.53	0.00	0.00	0.00	5.5	0.36	0.22	0.93	0.74	-1.1	5.73	0.00	0.00	0.00	0.00
FNCN3	-0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FRAS3	0.31	-4.19	0.00	0.00	0.00	0.1	-23.05	0.36	0.57	0.91	0.00	-0.57	0.00	0.00	0.00	0.00
FRIO3	-0.01	0.00	0.00	0.00	0.00	0.58	0.03	-0.01	-0.01	0.00	0.02	0.00	0.00	0.00	0.00	0.00
FRTA3	0.00	0.00	0.00	0.00	0.00	0.02	-0.09	0.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FTRT3B	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
G2DI33	-0.11	0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GBIO33	0.06	0.06	0.06	0.06	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GEPA3	0.02	0.00	0.00	0.00	0.00	2.43	-0.46	0.09	0.00	0.00	0.49	1.1	0.00	0.00	0.00	0.00
GEPA4	0.02	0.00	0.00	0.00	0.00	2.85	-0.47	0.1	-0.57	-0.64	0.49	1.29	0.00	0.00	0.00	0.00
GETT11	0.13	0.13	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GETT3	0.07	0.07	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GETT4	0.07	0.07	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GFSA3	0.00	0.02	0.00	0.00	0.00	0.04	0.02	0.00	-0.04	0.21	0.00	0.19	0.00	0.00	0.00	0.00
GGBR3	-0.09	-0.14	0.00	0.00	0.00	-0.01	0.57	0.13	0.00	-0.86	1.48	-0.64	0.00	0.00	0.00	0.00
GGBR4	-0.1	-0.16	0.00	0.00	0.00	-0.01	0.68	0.18	0.00	-1.03	1.8	-0.75	0.00	0.00	0.00	0.00
GGPS3	0.66	0.53	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GMAT3	0.44	0.34	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GNDI3	35.34	35.34	31.6	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GOAU3	-0.09	-0.13	0.00	0.00	0.00	-0.02	0.29	0.07	0.00	-0.29	1.46	-0.41	0.00	0.00	0.00	0.00
GOAU4	-0.09	-0.14	0.00	0.00	0.00	-0.02	0.33	0.08	0.00	-0.38	1.8	-0.52	0.00	0.00	0.00	0.00
GOLL4	1.9	0.19	0.00	0.00	0.00	0.01	-41.62	-0.24	-0.01	-0.06	0.08	-0.02	0.00	0.00	0.00	0.00
GPAR3	-0.54	0.01	0.00	0.00	0.00	0.00	0.00	0.00	-0.25	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GPIV33	0.00	0.00	0.00	0.00	0.00	0.00	0.06	-0.09	0.00	-0.31	0.00	0.00	0.00	0.00	0.00	0.00
GRAO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GRND3	-0.95	-1.75	0.00	0.00	0.00	-1.11	3.11	0.55	0.74	0.72	11.86	0.29	0.00	0.00	0.00	0.00
GSHP3	0.02	0.01	0.00	0.00	0.00	0.01	0.05	-0.02	0.00	-0.02	-0.09	-0.04	0.00	0.00	0.00	0.00
GUAR3	0.27	-0.71	0.00	0.00	0.00	0.07	0.21	-1.28	-0.3	0.76	1.03	44.41	0.00	0.00	0.00	0.00
GUAR4	7.23	0.00	0.00	0.00	0.00	0.07	0.19	-1.2	-0.32	0.65	0.94	40.14	0.00	0.00	0.00	0.00
HAGA3	0.06	-0.25	0.00	0.00	0.00	-0.01	0.3	0.00	-0.25	0.05	0.00	0.04	0.09	0.00	0.00	0.00
HAGA4	0.03	-0.08	0.00	0.00	0.00	-0.01	0.13	2.76	-0.17	0.05	-0.09	0.05	0.11	0.00	0.00	0.00
HAPV3	-0.2	0.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HBOR3	-0.24	-0.11	0.00	0.00	0.00	-0.2	-0.01	0.02	-0.09	-0.19	0.56	0.33	0.00	0.00	0.00	0.00
HBRE3	-0.13	-0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HBSA3	-0.28	2.16	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HBTS5	-0.37	-0.06	0.00	0.00	0.00	0.18	0.00	0.5	0.3	-3.86	0.03	-10.67	-0.95	0.00	0.00	0.00
HETA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HETA4	0.00	0.00	0.00	0.00	0.00	-0.03	0.00	-0.14	0.17	0.00	-0.02	0.00	0.00	0.00	0.00	0.00
HGTX3	-1.23	-1.23	-1.23	0.00	0.00	-2.15	0.49	-0.42	-0.75	48.49	6.71	4.78	0.00	0.00	0.00	0.00
HOOT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HOOT4	0.01	0.00	0.00	0.00	0.00	0.00	0.00	1.75	-0.01	0.92	0.00	0.09	-0.01	0.00	0.00	0.00
HYPE3	1.29	0.61	0.00	0.00	0.00	0.00	-1.31	0.13	0.63	0.46	1.68	-0.11	0.7	0.00	0.00	0.00
IDVL3	0.00	0.00	0.00	0.00	0.00	0.04	-0.01	0.06	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IDVL4	0.00	0.00	0.00	0.00	0.00	0.02	-0.01	0.06	0.00	0.97	0.00	-0.78	0.00	0.00	0.00	0.00
IFCM3	-0.02	-0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGBR3	0.00	0.02	0.00	0.00	0.00	0.00	0.00	-0.01	0.00	0.03	0.03	-0.01	-0.04	0.00	0.00	0.00
IGSN3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGTA3	0.31	0.00	0.00	0.00	0.00	1.64	0.91	-1.89	-1.05	0.78	-0.61	0.11	0.00	0.00	0.00	0.00
IGTI11	0.02	-10.38	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGTI3	0.01	-4.46	0.00	0.00	0.00	0.44	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGTI4	0.02	-13.73	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
INEP3	0.00	0.00	0.00	0.00	0.00	2.85	0.02	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
INEP4	0.00	0.00	0.00	0.00	0.00	2.65	0.02	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
INNT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
INTB3	0.51	0.65	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IRBR3	0.18	0.44	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ITEC3	1.36	1.36	1.36	1.36	0.00	0.00	-0.14	0.00	0.17	0.05	0.00	-6.26	0.00	0.00	0.00	0.00
ITSA3	-229.02	0.52	0.00	0.00	0.00	0.66	-11.91	-0.98	0.44	0.19	0.47	-2.51	0.00	0.00	0.00	0.00
ITSA4	-226.35	0.5	0.00	0.00	0.00	0.6	-12.25	-1.01	0.43	0.19	0.33	-1.68	0.00	0.00	0.00	0.00
ITUB3	0.65	0.66	0.00	0.00	0.00	1.07	1.48	-0.52	0.3	0.27	0.3	-1.3	0.00	0.00	0.00	0.00
ITUB4	0.77	0.75	0.00	0.00	0.00	1.26	1.67	-0.59	0.32	0.28	0.32	-1.39	0.00	0.00	0.00	0.00
JALL3	0.00	-0.88	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
JBSS3	-0.13	-0.13	0.00	0.00	0.00	-13.17	0.39	-1.47	0.06	0.14	0.96	-0.02	0.00	0.00	0.00	0.00
JFEN3	0.02	0.02	0.00	0.00	0.00	0.23	0.13	-0.03	0.00	0.01	0.34	-0.42	0.00	0.00	0.00	0.00
JHSF3	-0.14	-0.14	0.00	0.00	0.00	-0.01	0.44	0.01	0.04	-0.28	0.42	0.47	3.52	0.00	0.00	0.00
JOPA3	-0.25	-11.81	0.00	0.00	0.00	0.00	-0.37	0.00	0.28	0.89	-0.22	0.08	0.00	0.00	0.00	0.00
JOPA4	-0.4	-19.63	0.00	0.00	0.00	0.00	-0.37	0.26	0.42	1.34	-0.28	0.09	0.00	0.00	0.00	0.00
JSLG3	0.05	-0.29	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
KEPL3	-0.28	0.03	0.00	0.00	0.00	-0.38	-0.27	0.05	-0.72	0.09	0.18	47.66	0.00	0.00	0.00	0.00
KLBN11	-0.23	0.09	0.00	0.00	0.00	-1.69	-0.4	-0.02	0.07	0.12	0.00	0.00	0.00	0.00	0.00	0.00
KLBN3	-0.23	0.09	0.00	0.00	0.00	-2.33	-0.57	-0.04	0.12	0.14	-0.57	0.05	0.00	0.00	0.00	0.00
KLBN4	-0.23	0.09	0.00	0.00	0.00	-1.5	-0.36	-0.02	0.05	0.12	-0.63	0.05	0.00	0.00	0.00	0.00
KRSA3	-0.04	-0.08	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LAME3	-46.97	-46.97	-42.06	0.00	0.00	0.94	6.43	-5.39	-1.46	-4.02	2.28	2.1	0.00	0.00	0.00	0.00
LAME4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LAND3	0.02	0.08	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LAVV3	0.39	-0.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LCAM3	-0.58	0.00	0.00	0.00	0.00	0.11	0.19	0.24	-0.48	0.21	0.08	0.00	0.00	0.00	0.00	0.00
LEVE3	0.15	-24.47	0.00	0.00	0.00	0.48	0.01	-1.23	-4.64	3.93	1.4	-3.56	0.00	0.00	0.00	0.00
LHER3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LHER4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LIGT3	0.00	0.00	0.00	0.00	0.00	0.61	-0.2	0.01	-0.57	0.41	0.2	0.45	0.00	0.00	0.00	0.00
LINX3	0.13	0.13	0.13	0.00	0.00	-4.69	1.75	1.62	-5.83	4.2	0.00	0.00	0.00	0.00	0.00	0.00
LIPR3	-5.77	1.31	0.00	0.00	0.00	-0.75	1.52	0.03	-0.39	1.1	-2.31	-1.01	0.00	0.00	0.00	0.00
LJQQ3	0.02	0.33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LOGG3	-0.24	0.92	0.00	0.00	0.00	1.76	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LOGN3	0.09	0.03	0.00	0.00	0.00	-0.3	0.00	-0.02	0.00	0.00	-0.53	1.43	0.00	0.00	0.00	0.00
LPSB3	-0.59	-0.31	0.00	0.00	0.00	0.64	-0.16	0.13	0.00	-2.11	0.33	-1.06	0.00	0.00	0.00	0.00
LREN3	-1.17	0.15	0.00	0.00	0.00	0.76	2	2.97	0.17	1.3	1.27	5.02	0.00	0.00	0.00	0.00
LTEL3B	-0.42	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LUPA3	0.00	-0.01	0.00	0.00	0.00	0.00	0.04	-0.01	0.00	0.00	0.01	0.00	0.00	0.00	0.00	0.00
LUXM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-0.53	0.00	0.00	0.00	0.00
LUXM4	0.75	-1.73	0.00	0.00	0.00	0.25	0.00	0.00	0.00	-2.53	-2.3	-0.45	0.00	0.00	0.00	0.00
LVTC3	-0.3	-0.24	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LWSA3	0.56	-0.47	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MAGG3	1.04	1.04	1.04	1.04	0.1	-0.02	0.00	0.02	-4.66	-1.03	0.00	0.00	0.00	0.00	0.00	0.00
MAPT3	17.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-0.11	0.00	0.00	0.00
MAPT4	6.31	0.00	0.00	0.00	0.00	0.00	0.77	0.00	-0.02	0.00	6.72	0.42	-0.07	0.00	0.00	0.00
MATD3	-2.27	-0.93	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MBLY3	0.27	-0.6	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MDIA3	-1.2	-5.5	0.00	0.00	0.00	-1.4	2.75	0.55	16.05	1.21	1.89	0.66	0.00	0.00	0.00	0.00
MDNE3	0.21	0.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MEAL3	-0.03	-0.06	0.00	0.00	0.00	1.3	-3.77	0.48	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MEGA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MELK3	-0.41	4.66	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MERC3	0.58	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MERC4	0.27	0.16	0.00	0.00	0.00	-0.27	0.00	0.00	0.00	0.00	0.2	0.04	0.00	0.00	0.00	0.00
MGEL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MGEL4	0.00	0.00	0.00	0.00	0.00	-0.02	0.01	-0.38	0.00	0.01	0.02	0.00	0.03	0.00	0.00	0.00
MGLU3	-0.01	0.2	0.00	0.00	0.00	1.08	0.01	-0.12	0.32	0.84	-0.01	0.00	0.00	0.00	0.00	0.00
MILS3	0.31	0.12	0.00	0.00	0.00	0.25	-0.13	-1.14	0.01	-0.3	1.75	0.44	0.00	0.00	0.00	0.00
MLAS3	0.02	-0.42	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MMAQ3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MMAQ4	-0.03	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MMXM3	0.03	0.03	0.03	0.00	0.00	0.00	0.01	0.00	0.00	-0.04	0.00	0.00	0.00	0.00	0.00	0.00
MNDL3	0.00	0.00	0.00	0.00	0.00	-0.21	-0.01	0.03	0.00	0.00	-0.03	0.08	0.00	0.00	0.00	0.00
MNPR3	0.78	-0.08	0.00	0.00	0.00	0.00	-0.01	-8.07	-0.01	0.21	0.01	0.00	0.05	0.00	0.00	0.00
MOAR3	0.00	-0.42	0.00	0.00	0.00	-0.7	-0.39	0.07	0.00	0.1	-0.48	-1.92	0.00	0.00	0.00	0.00
MODL11	0.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MODL3	0.19	-0.56	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MODL4	0.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MOSI3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MOVI3	0.78	-0.15	0.00	0.00	0.00	0.08	0.34	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MPLU3	-0.39	-0.39	-0.39	-0.39	0.00	-0.37	16.63	1.5	0.27	0.4	6.02	-1.88	0.00	0.00	0.00	0.00
MRFG3	0.04	-0.34	0.00	0.00	0.00	-0.01	0.33	-0.32	0.27	0.23	-0.01	0.19	0.00	0.00	0.00	0.00
MRSA3B	0.08	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MRSA5B	0.07	0.34	0.00	0.00	0.00	0.00	0.00	0.09	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MRSA6B	0.07	0.36	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MRVE3	0.37	0.14	0.00	0.00	0.00	1.41	0.59	5.01	-0.3	0.07	-0.49	-0.36	0.00	0.00	0.00	0.00
MSPA3	-0.12	0.00	0.00	0.00	0.00	-0.75	-0.09	0.00	0.00	0.00	0.08	-0.28	0.00	0.00	0.00	0.00
MSPA4	-0.1	-1.66	0.00	0.00	0.00	-0.75	-0.08	0.00	0.00	0.00	0.08	0.00	0.00	0.00	0.00	0.00
MSRO3	2451.84	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MTIG3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.18	-0.01	0.13	0.00	0.00	0.00	0.00
MTIG4	-0.09	0.00	0.00	0.00	0.00	-0.85	-0.04	6.04	0.00	0.07	0.00	0.02	0.00	0.00	0.00	0.00
MTRE3	0.02	0.26	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MTSA3	0.19	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-0.7	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MTSA4	0.11	0.06	0.00	0.00	0.00	0.34	-5.14	-0.36	-0.3	-0.57	5.58	0.36	0.00	0.00	0.00	0.00
MULT3	0.58	0.25	0.00	0.00	0.00	0.37	2.09	-1.1	-5.27	0.35	-1.18	0.92	0.63	0.00	0.00	0.00
MWET3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MWET4	0.00	-0.01	0.00	0.00	0.00	0.00	-0.01	0.00	-0.01	0.00	-0.05	0.00	0.00	0.00	0.00	0.00
MYPK3	0.61	-0.13	0.00	0.00	0.00	0.01	-7.08	-0.91	-0.87	-0.28	0.09	-0.55	0.00	0.00	0.00	0.00
NAFG3	-1.14	-1.14	-1.14	-1.14	0.00	0.00	0.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NAFG4	-0.34	-0.34	-0.34	-0.34	0.00	0.16	0.00	0.00	0.00	0.07	-2.18	-0.4	0.00	0.00	0.00	0.00
NEMO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NEMO5	0.03	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NEMO6	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NEOE3	0.18	0.2	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NEXP3	0.00	0.00	0.00	0.00	0.00	0.11	0.09	-0.05	-0.01	0.14	-5.98	-0.7	0.00	0.00	0.00	0.00
NGRD3	0.04	-9.63	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NINJ3	-0.68	0.14	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NORD3	2.78	-2.29	0.00	0.00	0.00	0.00	0.00	0.00	-13.96	-38.6	-0.52	0.07	0.00	0.00	0.00	0.00
NRTQ3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NTCO3	-0.01	0.02	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NUTR3	-0.25	0.00	0.00	0.00	0.00	0.02	0.02	0.00	0.00	-0.02	0.00	0.00	0.00	0.00	0.00	0.00
ODER4	0.56	0.00	0.00	0.00	0.00	0.00	-0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ODPV3	1.25	0.6	0.00	0.00	0.00	-0.59	0.13	-13.82	1.69	7.65	0.95	223.17	0.00	0.00	0.00	0.00
OFSA3	-0.74	0.69	0.00	0.00	0.00	0.33	0.00	2.7	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
OGXP3	0.02	0.02	0.02	0.02	0.00	-0.1	3.32	0.00	0.00	0.00	-0.09	0.00	0.00	0.00	0.00	0.00
OIBR3	0.00	0.00	0.00	0.00	0.00	0.00	0.02	0.00	-0.02	0.01	-0.27	0.12	0.00	0.00	0.00	0.00
OIBR4	0.00	0.00	0.00	0.00	0.00	0.00	0.02	0.00	-0.02	0.01	-0.26	0.11	0.00	0.00	0.00	0.00
OMGE3	-0.52	0.00	0.00	0.00	0.00	-0.84	0.06	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ONCO3	0.97	-0.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
OPCT3	-0.11	-0.06	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ORVR3	-0.14	-0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
OSXB3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.25	-0.04	0.00	0.00	0.00
PARD3	-1.04	-0.83	0.00	0.00	0.00	-4.02	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PATI3	-0.34	-0.19	0.00	0.00	0.00	0.01	0.66	0.00	-0.59	-0.2	0.00	0.53	0.00	0.00	0.00	0.00
PATI4	-0.38	0.00	0.00	0.00	0.00	0.03	0.00	0.00	-0.6	-0.22	0.01	0.64	-0.26	0.00	0.00	0.00
PCAR3	0.00	0.21	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PCAR4	0.03	0.00	0.00	0.00	0.00	0.17	-0.16	0.11	-0.54	1.47	337.89	0.49	0.00	0.00	0.00	0.00
PDGR3	0.00	0.01	0.00	0.00	0.00	0.00	-0.01	0.00	0.00	-0.02	0.1	0.00	0.00	0.00	0.00	0.00
PDTC3	-0.02	-0.4	0.00	0.00	0.00	-0.21	-0.11	0.00	0.00	1.37	0.53	-0.23	0.00	0.00	0.00	0.00
PEAB3	0.05	-0.23	0.00	0.00	0.00	-3	-0.29	0.04	0.15	0.00	0.07	0.00	1.9	0.00	0.00	0.00
PEAB4	0.1	-0.33	0.00	0.00	0.00	0.00	-0.29	0.04	0.16	0.00	0.07	-0.58	1.89	0.00	0.00	0.00
PETR3	-0.96	0.03	0.00	0.00	0.00	0.00	5.1	0.26	-0.05	0.03	0.78	-0.33	0.00	0.00	0.00	0.00
PETR4	-0.89	0.02	0.00	0.00	0.00	0.00	4.85	0.23	-0.04	0.03	0.84	-0.33	0.00	0.00	0.00	0.00
PETZ3	-1.03	-1.75	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PFRM3	-0.24	1.64	0.00	0.00	0.00	0.55	-0.04	-0.08	0.17	0.02	-0.62	0.22	-1.13	0.00	0.00	0.00
PGMN3	0.03	0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PINE3	0.04	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PINE4	0.03	0.00	0.00	0.00	0.00	0.08	0.00	0.1	-0.19	-0.23	-0.29	1.36	0.00	0.00	0.00	0.00
PLAS3	-0.04	0.06	0.00	0.00	0.00	0.00	0.01	0.00	-0.02	0.48	-0.06	0.00	0.00	0.00	0.00	0.00
PLPL3	0.12	-5.84	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PMAM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PNVL3	-84.46	2.03	0.00	0.00	0.00	0.74	2.4	3.34	-3.53	-1.65	0.94	1.05	0.62	0.00	0.00	0.00
PNVL4	-141.04	0.00	0.00	0.00	0.00	0.53	2.07	1.17	-1.83	-1.26	0.81	0.62	0.54	0.00	0.00	0.00
POMO3	0.03	0.22	0.00	0.00	0.00	0.1	-0.62	0.06	-0.29	-0.59	-2.02	-1.41	0.00	0.00	0.00	0.00
POMO4	0.03	0.27	0.00	0.00	0.00	0.13	-0.76	0.07	-0.31	-0.58	-2.1	-1.53	0.00	0.00	0.00	0.00
PORT3	0.27	0.28	0.00	0.00	0.00	-0.57	-0.58	0.05	2.28	-107.62	-28.15	0.00	0.00	0.00	0.00	0.00
POSI3	13.78	0.09	0.00	0.00	0.00	4.31	0.01	-0.25	0.00	0.16	-0.33	-0.1	0.00	0.00	0.00	0.00
POWE3	-1.77	-1.77	-1.72	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PPAR3	0.02	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PPLA11	-16.98	-110.71	0.00	0.00	0.00	0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PRIO3	0.29	0.06	0.00	0.00	0.00	0.02	-0.27	0.05	-0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PRNR3	-7.5	0.33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PSSA3	0.09	-0.5	0.00	0.00	0.00	0.68	0.53	-1.11	0.65	-0.3	0.06	0.64	0.00	0.00	0.00	0.00
PTBL3	0.15	-0.26	0.00	0.00	0.00	0.06	0.00	-1.58	-0.14	2.49	0.23	0.06	0.00	0.00	0.00	0.00
PTCA11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PTCA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PTNT3	-0.3	0.15	0.00	0.00	0.00	0.4	0.00	0.00	0.00	0.21	0.00	0.00	0.00	0.00	0.00	0.00
PTNT4	-0.22	0.11	0.00	0.00	0.00	0.18	-0.35	0.02	-0.28	0.09	0.04	-0.08	0.00	0.00	0.00	0.00
QGEP3	-0.14	0.00	0.00	0.00	0.00	0.31	0.06	0.15	-0.32	-0.74	0.00	-0.16	0.00	0.00	0.00	0.00
QUAL3	43.34	-0.24	0.00	0.00	0.00	1.29	-2.84	0.17	0.21	-0.12	0.78	0.00	0.00	0.00	0.00	0.00
QUSW3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
QVQP3B	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RADL3	1.85	1.21	0.00	0.00	0.00	-22.04	4.18	1.43	0.64	0.32	-13.1	1.38	0.00	0.00	0.00	0.00
RAIL3	-0.17	0.28	0.00	0.00	0.00	-0.5	0.88	0.41	0.09	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RAIZ4	-1.22	-0.71	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RANI3	0.19	0.16	0.00	0.00	0.00	-1.59	0.00	0.02	-10.23	-0.6	0.05	0.05	0.00	0.00	0.00	0.00
RANI4	0.1	0.00	0.00	0.00	0.00	-1.56	0.00	0.02	0.00	-0.6	0.05	0.00	0.00	0.00	0.00	0.00
RAPT3	-0.23	-0.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RAPT4	-0.27	-0.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RCSL3	-0.05	-0.01	0.00	0.00	0.00	0.02	-0.13	-0.21	0.68	0.00	0.04	0.01	0.00	0.00	0.00	0.00
RCSL4	-0.03	0.00	0.00	0.00	0.00	0.01	-0.03	-0.12	0.47	0.00	0.04	0.01	0.00	0.00	0.00	0.00
RDNI3	0.44	0.09	0.00	0.00	0.00	0.13	-0.13	0.00	-0.33	-0.22	0.33	0.16	0.00	0.00	0.00	0.00
RDOR3	1.36	-2.35	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RECV3	0.1	0.02	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
REDE3	-0.57	0.88	0.00	0.00	0.00	0.14	-1.77	-0.1	-0.02	0.00	0.04	-0.01	0.00	0.00	0.00	0.00
RENT3	-1.21	-2.91	0.00	0.00	0.00	0.99	0.41	12.6	-6.57	2.7	0.31	-1.81	0.00	0.00	0.00	0.00
RLOG3	-2.42	-2.42	-2.42	-1.97	0.00	-0.42	0.00	-0.04	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RNEW11	0.00	0.00	0.00	0.00	0.00	0.14	-0.19	0.00	-0.05	0.12	-2.93	6.88	0.00	0.00	0.00	0.00
RNEW3	0.00	0.00	0.00	0.00	0.00	0.15	-0.22	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RNEW4	0.00	0.00	0.00	0.00	0.00	0.14	-0.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ROMI3	0.34	1.04	0.00	0.00	0.00	0.05	-0.07	0.01	-1.53	0.07	-3.15	0.01	0.00	0.00	0.00	0.00
RPAD3	0.1	0.04	0.00	0.00	0.00	-3.94	-0.31	0.00	0.07	-0.2	0.00	0.00	0.00	0.00	0.00	0.00
RPAD5	0.1	0.04	0.00	0.00	0.00	-9.29	-0.74	-5.25	0.12	-0.43	0.00	0.00	0.00	0.00	0.00	0.00
RPAD6	0.1	0.04	0.00	0.00	0.00	-5.58	-0.37	-2.96	0.05	-0.18	0.00	0.00	0.00	0.00	0.00	0.00
RPMG3	0.00	0.00	0.00	0.00	0.00	0.05	0.54	-0.69	0.00	0.02	-0.02	0.00	0.00	0.00	0.00	0.00
RRRP3	-0.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RSID3	-0.01	0.00	0.00	0.00	0.00	0.00	0.01	0.01	0.01	0.00	-0.18	0.02	0.00	0.00	0.00	0.00
RSUL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RSUL4	0.77	-0.25	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-0.01	0.00	0.00	0.00	0.00	0.00	0.00
SANB11	-0.29	-0.94	0.00	0.00	0.00	0.31	0.62	-0.61	0.1	-292.09	110.92	-18.68	0.00	0.00	0.00	0.00
SANB3	-0.28	-0.89	0.00	0.00	0.00	0.32	0.72	-0.8	0.11	-290.78	2.22	-0.37	0.00	0.00	0.00	0.00
SANB4	-0.31	-1	0.00	0.00	0.00	0.3	0.52	-0.41	0.09	-261.27	2.22	-0.32	0.00	0.00	0.00	0.00
SAPR11	0.24	-2.14	0.00	0.00	0.00	0.23	0.93	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SAPR3	0.24	-2.06	0.00	0.00	0.00	0.31	0.95	0.00	1.09	1.92	0.00	0.00	0.00	0.00	0.00	0.00
SAPR4	0.24	-2.16	0.00	0.00	0.00	0.2	0.91	0.19	0.91	1.41	0.35	0.62	0.00	0.00	0.00	0.00
SBFG3	-0.2	-0.26	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SBSP3	0.4	0.35	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SCAR3	-0.25	0.04	0.00	0.00	0.00	-1.38	0.37	-0.36	0.23	-0.3	0.68	0.09	0.00	0.00	0.00	0.00
SEDU3	0.01	0.01	0.01	0.01	0.00	0.00	-2.93	0.33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SEER3	-0.03	0.00	0.00	0.00	0.00	5.57	-1.39	0.24	-0.24	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SEQL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SGPS3	0.00	0.00	0.00	0.00	0.00	0.03	-0.27	0.85	-0.14	0.1	0.11	0.08	0.00	0.00	0.00	0.00
SHOW3	-0.68	0.18	0.00	0.00	0.00	-0.73	0.17	0.53	0.00	0.00	-0.21	0.00	0.00	0.00	0.00	0.00
SHUL3	2.85	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-1.44	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SHUL4	0.18	0.16	0.00	0.00	0.00	0.08	0.35	-0.24	-0.47	-0.51	0.32	-1.75	0.00	0.00	0.00	0.00
SIMH3	-0.44	-0.28	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SLCE3	-0.24	0.41	0.00	0.00	0.00	1.5	0.01	-0.63	0.17	-0.71	0.14	-0.97	0.00	0.00	0.00	0.00
SLED3	-0.02	0.00	0.00	0.00	0.00	0.00	-0.58	0.04	0.00	-1.07	-0.53	0.00	0.00	0.00	0.00	0.00
SLED4	-0.01	0.00	0.00	0.00	0.00	0.00	-0.49	0.01	0.00	-0.57	-0.69	0.52	0.00	0.00	0.00	0.00
SMFT3	-0.16	1.04	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SMLS3	-0.33	-0.33	-0.33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SMTO3	-0.37	-0.29	0.00	0.00	0.00	-0.58	0.2	0.21	-0.91	0.13	0.28	-1.02	0.00	0.00	0.00	0.00
SNSY3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SNSY5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SNSY6	-0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOJA3	0.17	0.22	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOMA3	-0.79	2.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOND3	1.73	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOND5	2.07	1.34	0.00	0.00	0.00	0.00	-0.08	0.00	0.03	-0.33	-0.1	0.00	0.00	0.00	0.00	0.00
SOND6	2.04	0.00	0.00	0.00	0.00	0.05	-0.07	0.00	0.03	-0.3	-0.1	0.00	0.00	0.00	0.00	0.00
SPRI3	-0.01	-0.01	-0.01	-0.01	0.00	0.00	0.00	0.08	-0.26	-0.09	-0.01	0.03	0.00	0.00	0.00	0.00
SPRI5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.07	-0.49	-0.12	-0.01	0.03	0.00	0.00	0.00	0.00
SPRI6	0.00	0.00	0.00	0.00	0.00	0.15	0.00	0.00	-0.41	-0.09	-0.01	0.03	0.00	0.00	0.00	0.00
SPRT3B	-16.21	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SQIA3	-28.82	-4.68	0.00	0.00	0.00	-1.72	-4.27	-1.27	-0.94	0.12	0.00	0.00	0.00	0.00	0.00	0.00
STBP3	14.31	0.23	0.00	0.00	0.00	-6.07	5.24	-2.54	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
STKF3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
STTR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SULA11	-0.94	-0.94	0.00	0.00	0.00	0.73	0.85	-1.66	0.27	0.54	63.69	1.24	0.00	0.00	0.00	0.00
SULA3	-0.95	-0.95	0.00	0.00	0.00	0.92	0.81	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SULA4	-0.97	-0.97	0.00	0.00	0.00	0.6	0.85	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SUZB3	-0.63	0.02	0.00	0.00	0.00	-1.61	1.68	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SYNE3	0.16	0.11	0.00	0.00	0.00	11.68	-0.01	0.29	0.00	-0.31	-4.33	0.39	0.00	0.00	0.00	0.00
TAEE11	-0.24	-0.24	0.00	0.00	0.00	0.12	-0.46	-1.59	12.54	5.34	0.14	0.17	0.00	0.00	0.00	0.00
TAEE3	-0.24	-0.24	0.00	0.00	0.00	0.13	-0.46	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TAEE4	-0.24	-0.24	0.00	0.00	0.00	0.11	-0.44	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TASA3	-0.13	-0.18	0.00	0.00	0.00	0.07	0.00	0.04	0.00	0.00	0.15	0.01	0.00	0.00	0.00	0.00
TASA4	-0.13	-0.18	0.00	0.00	0.00	0.06	0.00	0.05	0.00	0.00	0.13	0.01	0.00	0.00	0.00	0.00
TCNO3	-0.28	-0.28	0.00	0.00	0.00	1.3	-0.01	1.05	-0.35	-0.21	-0.01	0.00	-0.05	0.00	0.00	0.00
TCNO4	-0.2	-0.2	0.00	0.00	0.00	1.45	-0.01	0.94	-0.33	-0.13	-0.01	0.00	-0.03	0.00	0.00	0.00
TCSA3	-0.07	-1.86	0.00	0.00	0.00	0.04	-0.08	0.00	0.04	-0.15	-0.03	0.04	0.00	0.00	0.00	0.00
TECN3	0.1	0.09	0.00	0.00	0.00	-0.06	-0.04	1.34	-0.25	0.28	-0.79	0.00	0.00	0.00	0.00	0.00
TEKA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-0.85	0.01	0.01	0.00	0.00	0.00	0.00	0.00	0.00
TEKA4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-1.05	0.01	0.01	0.00	0.00	0.00	0.00	0.00	0.00
TELB3	3.98	-15.46	0.00	0.00	0.00	0.00	1.85	-0.79	-0.01	0.11	0.01	-0.18	0.00	0.00	0.00	0.00
TELB4	2.86	-9.75	0.00	0.00	0.00	0.64	1.07	-0.66	0.00	0.06	0.00	-0.12	0.00	0.00	0.00	0.00
TEND3	-0.04	0.00	0.00	0.00	0.00	0.1	0.11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TESA3	0.83	0.83	0.83	0.00	0.00	0.01	-0.35	0.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TFCO4	6.42	4.13	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TGMA3	0.21	0.17	0.00	0.00	0.00	3.88	0.02	0.94	-0.22	0.31	-0.59	-1.93	0.00	0.00	0.00	0.00
TIET11	0.02	0.02	0.02	0.00	0.00	-3.96	-1	-1.67	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TIET3	0.03	0.03	0.03	0.00	0.00	-4.03	-1.01	-1.79	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TIET4	0.03	0.03	0.03	0.00	0.00	-3.99	-1.01	-1.61	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TIMS3	2.69	-0.41	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TKNO3	-0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TKNO4	-0.11	-0.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TOTS3	0.39	0.97	0.00	0.00	0.00	-2.1	-1.36	-1.19	0.00	1.2	3.63	1.38	0.00	0.00	0.00	0.00
TOYB3	0.47	0.47	0.47	0.47	0.00	0.29	0.00	0.02	-5543.82	-0.86	103.15	-48.31	-23.4	0.00	0.00	0.00
TOYB4	0.52	0.52	0.52	0.52	0.00	0.27	0.00	0.03	-2969.9	-0.86	103.15	-72.47	-23.4	0.00	0.00	0.00
TPIS3	0.00	-0.63	0.00	0.00	0.00	0.00	-0.86	0.00	-0.1	-0.01	0.18	0.00	0.00	0.00	0.00	0.00
TRAD3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TRIS3	0.6	-0.22	0.00	0.00	0.00	0.08	0.01	-0.95	-2.2	-0.35	0.82	-0.05	0.03	0.00	0.00	0.00
TRPL3	-1.04	-0.34	0.00	0.00	0.00	0.16	-0.1	0.00	0.41	0.00	0.00	-1.03	0.00	0.00	0.00	0.00
TRPL4	-0.79	-0.27	0.00	0.00	0.00	0.16	-0.11	0.00	0.44	0.02	-1.34	-0.76	0.00	0.00	0.00	0.00
TRPN3	0.00	0.00	0.00	0.00	0.00	0.00	0.29	-0.64	0.52	-0.45	0.11	-0.28	0.00	0.00	0.00	0.00
TTEN3	0.39	0.25	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TUPY3	4.66	0.05	0.00	0.00	0.00	0.14	-0.09	0.05	0.08	8.61	0.46	-0.63	0.00	0.00	0.00	0.00
TXRX3	0.08	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.01	0.00	0.00	0.00	0.00	0.00
TXRX4	0.03	-0.12	0.00	0.00	0.00	0.00	0.00	0.03	0.00	0.00	0.01	0.00	0.00	0.00	0.00	0.00
UCAS3	-0.19	0.19	0.00	0.00	0.00	-0.36	0.36	0.02	-0.01	0.56	0.00	0.00	0.00	0.00	0.00	0.00
UGPA3	-1.12	0.07	0.00	0.00	0.00	-0.96	32.54	6.31	1.06	17.2	1.82	1.8	0.00	0.00	0.00	0.00
UNIP3	-0.14	-0.19	0.00	0.00	0.00	0.08	0.59	0.01	0.17	-0.08	0.00	0.01	0.00	0.00	0.00	0.00
UNIP5	-0.15	-0.22	0.00	0.00	0.00	0.08	0.58	0.01	0.15	-0.09	0.00	0.01	0.00	0.00	0.00	0.00
UNIP6	-0.14	-0.21	0.00	0.00	0.00	0.08	0.56	0.01	0.12	-0.07	0.00	0.01	0.00	0.00	0.00	0.00
USIM3	0.22	-0.07	0.00	0.00	0.00	0.09	-0.43	0.04	0.00	-0.5	1.11	0.05	0.00	0.00	0.00	0.00
USIM5	0.22	-0.07	0.00	0.00	0.00	0.08	-0.36	0.02	0.00	-0.21	1.27	0.05	0.00	0.00	0.00	0.00
USIM6	0.53	-0.13	0.00	0.00	0.00	0.00	-0.36	0.00	0.00	0.00	1	0.04	0.00	0.00	0.00	0.00
VALE3	-0.12	-0.21	0.00	0.00	0.00	0.23	0.37	-0.08	0.00	0.17	-16.84	-0.31	0.00	0.00	0.00	0.00
VAMO3	0.74	0.29	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VBBR3	6.41	-0.31	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VITT3	1.99	0.31	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VIVA3	2.3	0.7	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VIVR3	-0.05	0.09	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VIVT3	-1.55	-0.46	0.00	0.00	0.00	0.08	1.18	0.77	-0.36	0.28	-0.73	4.89	0.00	0.00	0.00	0.00
VIVT4	-1.41	0.00	0.00	0.00	0.00	0.09	1.39	0.94	-0.38	0.33	-0.82	5.49	0.00	0.00	0.00	0.00
VLID3	0.01	-0.53	0.00	0.00	0.00	0.05	-0.69	-0.54	0.86	1.07	-1.81	-3.12	0.00	0.00	0.00	0.00
VSPT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VSPT4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VSTE3	-0.07	-0.3	0.00	0.00	0.00	-0.18	-0.03	-0.07	-0.13	0.00	0.00	0.00	25.55	0.00	0.00	0.00
VULC3	0.13	0.13	0.00	0.00	0.00	-0.59	0.08	-0.29	0.22	0.07	0.02	0.4	0.00	0.00	0.00	0.00
VVAR11	-0.31	0.00	0.00	0.00	0.00	0.00	-0.53	0.19	-3.06	-1.24	0.03	0.00	0.00	0.00	0.00	0.00
VVAR4	-2.02	0.00	0.00	0.00	0.00	0.00	-0.18	0.06	-0.98	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VVEO3	-0.87	-0.52	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WEGE3	0.68	2.21	0.00	0.00	0.00	1.6	15.53	-6.73	0.99	1.96	0.8	2.17	0.00	0.00	0.00	0.00
WEST3	-0.09	0.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WHRL3	-0.31	-0.3	0.00	0.00	0.00	-0.61	0.4	1.66	-0.23	-0.66	0.21	0.12	0.00	0.00	0.00	0.00
WHRL4	-0.31	-0.31	0.00	0.00	0.00	-0.72	0.43	1.76	-0.21	-0.66	0.23	0.13	0.00	0.00	0.00	0.00
WIZC3	-0.5	-0.29	0.00	0.00	0.00	0.55	1.19	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WLMM3	0.69	0.61	0.00	0.00	0.00	-0.03	0.62	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WLMM4	0.93	0.64	0.00	0.00	0.00	-0.03	0.44	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
YDUQ3	0.06	0.39	0.00	0.00	0.00	0.23	1.6	-0.83	0.47	0.41	0.07	0.56	0.00	0.00	0.00	0.00
ZAMP3	-0.38	0.34	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
\.


--
-- Data for Name: pl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pl (ticker, "2023", "2022", "2021", "2020", "2019", "2018", "2017", "2016", "2015", "2014", "2013", "2012", "2011", "2010", "2009", "2008") FROM stdin;
AALR3	-3.90	-11.22	-314.82	-13.48	52.01	39.28	263.19	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ABCB4	5.50	5.62	6.37	10.16	8.86	8.25	7.64	6.19	3.57	6.21	6.85	7.95	7.18	0.00	0.00	0.00
ABEV3	13.59	15.82	19.16	21.64	24.93	21.99	46.01	20.54	22.58	21.24	0.00	0.00	0.00	0.00	0.00	0.00
ADHM3	-4.09	-4.09	-4.09	-4.09	0.37	-2.30	-2.85	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AERI3	-5.96	-9.34	72.53	67.69	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AESB3	42.19	38.84	14.55	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AFLT3	15.85	15.60	5.61	33.25	27.67	15.48	25.05	13.33	0.00	13.60	11.36	10.70	14.70	0.00	0.00	0.00
AGRO3	9.39	11.42	5.67	4.89	9.05	5.01	5.77	23.02	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AGXY3	-3.39	60.25	15.40	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AHEB3	1.82	2.64	-3.15	-8.15	-1.92	-7.06	0.00	0.00	0.00	0.00	0.00	106.01	0.00	0.00	0.00	0.00
AHEB5	1.89	0.00	-2.52	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	106.01	0.00	0.00	0.00	0.00
AHEB6	1.94	2.55	0.00	-7.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALLD3	8.69	7.31	5.50	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALOS3	4.14	29.00	20.94	45.85	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALPA3	-25.75	66.92	26.44	159.81	59.17	4.44	22.13	11.55	16.59	11.25	17.92	20.41	14.08	0.00	0.00	0.00
ALPA4	-25.72	84.80	31.57	176.17	71.23	4.62	22.66	13.02	12.30	12.17	20.42	20.97	14.26	0.00	0.00	0.00
ALPK3	-7.08	-2.08	-3.93	-10.54	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALSC3	38.57	38.57	38.57	38.57	36.58	34.01	38.69	-132.36	13.42	16.75	0.75	26.64	19.32	0.00	0.00	0.00
ALUP11	11.32	9.01	6.33	8.43	9.08	13.89	13.96	13.77	13.10	10.13	3.06	0.00	0.00	0.00	0.00	0.00
ALUP3	11.39	8.77	6.38	8.36	11.26	17.05	18.11	19.62	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ALUP4	11.28	9.14	6.34	8.31	8.34	12.41	12.14	10.63	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AMAR3	-0.34	-0.83	-10.69	0.00	-24.12	37.34	-24.48	-13.82	-25.16	52.66	40.36	26.24	17.78	0.00	0.00	0.00
AMBP3	-14.13	37.01	33.04	66.57	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AMER3	17.47	203.01	52.48	-200.85	-90.32	-47.97	-22.54	-5.40	-9.30	-21.85	-14.98	-15.92	-11.46	0.00	0.00	0.00
ANDG3B	59.95	59.95	59.95	59.95	318.25	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ANDG4B	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ANIM3	-9.82	-15.25	-38.70	-117.90	-243.95	611.31	26.90	54.18	17.81	17.76	0.00	0.00	0.00	0.00	0.00	0.00
APER3	14.27	0.00	0.00	0.00	89.03	-0.84	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
APTI3	-0.16	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
APTI4	-2.77	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ARML3	28.97	27.36	155.96	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ARZZ3	18.77	20.30	22.16	139.82	35.64	34.65	31.46	19.15	15.56	21.19	23.84	36.15	22.42	0.00	0.00	0.00
ASAI3	17.47	21.53	10.84	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ATMP3	0.08	0.08	-0.51	-0.26	0.00	-0.03	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ATOM3	21.77	5.89	10.33	5.46	16.52	7.28	17.58	-6441.47	-16928.19	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AURA33	10.52	6.17	13.24	3.04	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AURE3	6.80	5.51	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AVLL3	-0.26	-0.38	-1.66	-1.72	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
AZEV3	-3.82	-1.40	1.40	-3.11	-5.07	-1.82	0.00	0.00	32.53	0.00	8.76	0.00	0.00	0.00	0.00	0.00
AZEV4	-3.84	-1.30	1.25	-1.80	-3.36	-0.20	-0.34	-0.69	29.28	7.02	5.56	6.08	0.01	0.00	0.00	0.00
AZUL4	-11.16	-19.27	-7.30	-4.57	-30.46	107.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
B3SA3	17.37	19.06	14.47	30.47	32.60	26.45	36.19	20.71	8.98	19.15	20.25	25.80	19.11	0.00	0.00	0.00
BAHI3	-2.86	-2.84	-6.22	-4.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BALM3	125.32	19.82	9.57	11.92	18.03	39.16	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BALM4	116.38	17.09	7.97	9.03	15.36	49.73	127.76	26.38	6.31	10.23	7.84	9.27	5.72	0.00	0.00	0.00
BAUH4	-98.23	-308.52	65.64	21.54	15.17	9.85	6.10	6.08	7.09	5.86	5.52	5.53	7.48	-3.05	0.00	0.00
BAZA3	3.63	2.49	1.66	4.71	4.31	6.49	11.49	637.46	2.98	4.04	5.36	6.44	15.09	0.00	0.00	0.00
BBAS3	4.49	3.33	4.19	8.36	9.23	9.64	8.58	11.45	3.00	5.75	6.70	6.52	5.35	0.00	0.00	0.00
BBDC3	8.72	6.77	6.73	13.39	13.07	13.72	11.46	9.04	5.71	9.43	10.84	11.50	8.83	0.00	0.00	0.00
BBDC4	9.90	7.61	7.99	15.01	13.87	15.66	12.10	9.00	5.37	9.63	9.87	11.91	10.73	0.00	0.00	0.00
BBML3	48754.69	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BBSE3	8.88	11.15	10.55	15.39	11.32	15.59	14.07	14.10	11.57	18.61	0.00	0.00	0.00	0.00	0.00	0.00
BDLL3	0.29	0.29	-1.10	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-1.84	0.00	0.00	0.00	0.00	0.00
BDLL4	0.28	0.19	-1.05	-0.27	-0.06	-0.29	-0.49	-0.58	-6.61	11.76	-1.71	-4.40	3.65	22.14	0.00	0.00
BEEF11	6.26	0.00	3.67	3.62	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BEEF3	13.93	12.06	10.74	8.01	299.39	-0.88	-8.71	14.95	-2.96	-3.53	-5.37	-6.06	12.35	35.36	0.00	0.00
BEES3	8.22	5.04	6.65	7.77	9.25	8.49	6.81	5.70	3.64	4.42	0.67	1.11	14.25	0.00	0.00	0.00
BEES4	9.01	5.94	7.89	8.58	9.94	8.73	7.25	5.77	3.54	4.53	0.61	1.01	11.51	0.00	0.00	0.00
BFRE11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BFRE12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BGIP3	7.42	5.34	6.53	12.19	0.00	9.03	6.87	4.34	0.00	0.00	0.00	5.69	0.00	0.00	0.00	0.00
BGIP4	6.14	3.47	4.45	7.63	7.04	8.68	6.42	3.42	6.30	0.00	9.03	5.77	5.72	0.00	0.00	0.00
BHIA3	-1.17	-11.22	-28.26	25.71	-10.09	-21.24	52.51	-48.92	133.68	10.08	2.09	18.11	0.00	0.00	0.00	0.00
BIDI11	-238.07	0.00	-337.96	-3485.69	20.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BIDI3	-233.49	0.00	-333.58	-3505.17	19.10	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BIDI4	-234.18	0.00	-338.55	-3494.54	20.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BIOM3	-4.78	-5.96	-10.96	-15.51	-10.62	-6.78	-7.68	-4.36	20.84	-20.61	-17.22	-5.58	-12.94	0.00	0.00	0.00
BLAU3	9.98	13.02	20.08	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BLUT3	-5.63	-5.63	-7.11	-1.93	-0.10	2.44	-3.31	-0.03	-290.29	-24.49	1.78	-13.12	-2.45	0.00	0.00	0.00
BLUT4	-1.66	-1.66	-2.84	-1.06	-0.07	2.50	-2.86	-0.02	-79.24	-20.32	1.54	-8.74	-2.45	0.00	0.00	0.00
CEEB6	11.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BMEB3	7.25	5.25	6.25	4.74	6.19	6.51	4.12	14.60	3.11	-1.52	6.87	4.20	7.51	0.00	0.00	0.00
BMEB4	6.30	5.26	5.64	4.67	6.13	6.49	3.18	11.77	1.87	-1.02	4.69	3.06	5.94	0.00	0.00	0.00
BMGB4	10.90	21.26	10.73	11.75	5.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BMIN3	12.31	0.00	0.00	39.31	0.00	17.21	0.00	0.41	0.00	0.00	94.57	0.00	57.88	0.00	0.00	0.00
BMIN4	8.08	6.56	24.58	39.11	43.10	14.06	-10.46	0.17	5.85	10.97	22.35	9.41	12.94	0.00	0.00	0.00
BMKS3	5.25	5.47	13.46	32.90	46.56	34.66	19.53	8.24	9.05	10.58	19.21	16.38	6.34	0.00	0.00	0.00
BMOB3	11.90	15.20	18.38	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BNBR3	3.56	3.21	3.89	6.44	4.72	4.52	4.46	3.00	7.77	2.83	6.94	2.01	9.67	0.00	0.00	0.00
BOAS3	15.22	12.98	18.20	130.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BOBR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BOBR4	5.66	14.19	6.54	14.47	-2.72	2.02	2.11	1.86	-0.28	-2.28	-2.24	-17.56	-25.48	0.00	0.00	0.00
BPAC11	14.99	11.71	9.26	25.91	17.84	16.46	8.36	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAC3	21.28	18.96	16.97	37.75	28.11	17.41	10.72	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAC5	11.68	8.22	6.88	19.03	16.17	15.54	8.21	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAN4	16.29	11.56	17.69	18.31	19.46	11.23	17.47	-9.08	10.46	15.24	0.00	0.00	0.00	0.00	0.00	0.00
BPAR3	7.28	7.28	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPAT33	6.98	6.98	6.98	6.98	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BPHA3	0.06	0.06	0.06	0.06	0.06	0.16	-0.25	-0.80	-2.75	-1.53	-11.45	896.32	0.00	0.00	0.00	0.00
BRAP3	3.21	2.70	1.06	13.58	-30.53	8.57	3.71	6.99	-0.60	40.68	0.00	0.00	0.00	0.00	0.00	0.00
BRAP4	3.46	3.13	1.22	15.11	-33.04	9.26	4.31	8.25	-0.67	49.25	-183.75	23.61	5.47	0.00	0.00	0.00
BRBI11	8.83	8.56	10.94	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRBI3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRBI4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRFS3	-6.18	-2.83	43.62	12.94	96.10	-4.01	-26.42	-105.27	15.54	24.88	40.44	47.80	23.24	0.00	0.00	0.00
BRGE11	9.88	6.76	26.14	18.04	23.49	0.00	6.30	0.00	0.00	6.88	5.35	0.00	0.00	0.00	0.00	0.00
BRGE12	9.97	8.32	24.01	11.65	12.01	4.18	3.97	3.48	2.98	0.00	5.61	0.00	0.00	0.00	0.00	0.00
BRGE3	10.15	8.46	24.39	18.40	22.02	5.58	5.08	0.00	0.00	5.18	0.00	0.00	0.00	0.00	0.00	0.00
BRGE5	10.07	0.00	0.00	21.86	63.77	3.37	0.00	3.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRGE6	9.95	10.53	30.91	33.17	16.48	0.00	0.00	0.00	6.19	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRGE7	9.94	0.00	0.00	0.00	0.00	4.24	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRGE8	9.93	8.12	33.15	14.34	16.15	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRIN3	28.92	0.00	0.00	0.00	0.00	-0.86	-1.14	-21.60	-19.00	31.87	17.44	17.45	0.15	0.00	0.00	0.00
BRIT3	11.88	20.20	995.54	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRIV3	9.27	6.92	8.75	10.52	11.29	8.79	10.08	4.86	6.53	7.51	6.73	0.00	0.00	0.00	0.00	0.00
BRIV4	9.25	6.89	8.77	10.70	11.45	10.88	11.20	5.58	7.42	9.54	5.64	0.00	0.00	0.00	0.00	0.00
BRKM3	-3.90	-60.01	3.24	-3.00	-8.99	12.66	8.49	-58.11	4.23	12.03	25.81	-10.53	-19.02	0.00	0.00	0.00
BRKM5	-4.14	-56.43	3.29	-2.81	-8.51	13.18	8.37	-66.36	7.34	19.49	32.85	-14.03	-20.67	0.00	0.00	0.00
BRKM6	-3.28	-60.56	1.94	-2.15	-6.84	0.00	0.00	-87.17	4.25	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRML3	10.65	12.00	38.81	-29.41	12.63	11.26	-9.93	32.59	1063.03	15.50	11.42	7.03	15.63	0.00	0.00	0.00
BRPR3	-0.92	-2.03	108.26	23.59	18.93	243.60	11.41	77.54	-3.26	12.12	71.65	6.51	7.71	0.00	0.00	0.00
BRQB3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
BRSR3	5.84	5.20	4.47	10.39	7.41	9.64	9.86	6.36	4.18	8.37	7.10	6.28	6.40	0.00	0.00	0.00
BRSR5	9.44	8.54	6.34	13.05	8.02	10.81	8.22	6.29	0.00	8.85	0.00	7.80	0.00	0.00	0.00	0.00
BRSR6	5.53	4.71	3.64	9.61	6.98	9.99	5.57	5.80	2.72	9.55	6.88	7.61	8.76	0.00	0.00	0.00
BSEV3	10.22	10.22	10.22	33.60	-1.86	-2.60	-0.78	-2.72	-1.19	-2.93	-1.38	0.00	0.00	0.00	0.00	0.00
BSLI3	50.77	71.89	14.38	14.66	4.90	4.98	0.00	0.00	0.00	0.00	0.00	0.00	8.44	0.00	0.00	0.00
BSLI4	42.18	57.47	9.24	0.00	0.00	0.00	0.00	3.63	0.00	0.00	0.00	4.96	8.60	0.00	0.00	0.00
BTTL4	3316.69	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CALI3	3.35	4.39	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CALI4	10.21	0.00	0.00	9.58	0.00	11.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CAMB3	5.56	4.85	7.58	10.85	1.31	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CAMB4	3.47	0.00	0.00	0.00	1.19	6.46	0.74	-5.78	-1.34	4.09	292.60	-2.71	15.50	0.00	0.00	0.00
CAML3	5.33	8.43	8.81	8.85	15.42	7.98	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CASH3	-14.05	-18.03	-68.87	96.19	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CASN3	111.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	200.99	0.00	0.00	0.00	0.00
CASN4	96.88	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CATA3	0.49	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CATA4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CBAV3	-2.81	7.93	10.96	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CBEE3	-19.58	-35.07	45.95	67.78	11.81	25.20	-982752.56	-760341.99	-99081.55	21944.99	9824.21	8983.90	34870.62	0.00	0.00	0.00
CCRO3	26.99	5.29	33.66	142.43	26.66	28.90	18.15	16.44	25.34	20.17	23.22	29.17	6.00	0.00	0.00	0.00
CCXC3	-0.18	-0.10	0.00	0.00	-0.82	-3.75	-1.83	-0.08	-40.45	-1.06	-0.31	-6.37	0.00	0.00	0.00	0.00
CEAB3	60.73	849.44	5.76	-23.89	35.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEBR3	5.72	3.74	0.92	4.17	6.59	0.00	0.00	3.71	5.23	0.00	-1.54	2.66	7.12	0.00	0.00	0.00
CEBR5	5.72	4.11	0.91	5.17	7.90	5.69	3.21	3.84	0.00	-1.21	-2.40	3.83	7.84	0.00	0.00	0.00
CEBR6	5.92	3.71	0.89	4.87	6.48	0.00	2.76	2.95	5.88	-1.03	-1.64	2.66	7.26	0.00	0.00	0.00
CEDO3	3.75	-3.54	46.93	-2.78	-5.13	0.00	1.33	0.00	0.00	-8.73	0.00	8.43	7.57	0.00	0.00	0.00
CEDO4	3.48	-2.14	32.64	-1.36	-4.95	1.23	0.82	-0.20	0.00	-10.07	8.65	6.36	8.51	0.00	0.00	0.00
CEEB3	6.73	6.63	5.26	9.56	1.11	1.26	25.40	16.88	14.53	10.07	11.55	11.78	12.04	0.00	0.00	0.00
CEEB5	7.75	5.24	0.00	9.50	1.09	0.00	0.00	18.12	0.00	9.89	0.00	0.00	11.53	0.00	0.00	0.00
CEED3	-8.41	-9.74	-8.31	-0.35	-0.89	0.00	-3.32	-21.66	-0.38	0.00	0.00	-3.33	-4.77	0.00	0.00	0.00
CEED4	-6.83	-8.98	0.00	-0.43	-0.89	-0.37	0.00	0.00	0.00	0.00	0.00	0.00	-4.77	0.00	0.00	0.00
CEGR3	68.03	0.00	31.71	44.25	32.65	49.49	0.00	0.00	18260.97	17800.10	12934.07	0.00	0.00	0.00	0.00	0.00
CEPE3	194.71	0.00	0.00	43.71	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CEPE5	62.36	0.00	5.09	11.69	10.70	12.00	20.51	-4145.13	96.86	7.93	10.50	-52.27	12.50	0.00	0.00	0.00
CEPE6	66.84	0.00	5.93	13.07	7.18	0.00	0.00	0.00	74.24	0.00	0.00	0.00	11.98	0.00	0.00	0.00
CESP3	4.45	0.00	16.34	5.27	9.15	23.30	-21.59	11.67	-54.44	13.10	-33.36	10.71	0.00	0.00	0.00	0.00
CESP5	4.35	0.00	0.00	6.75	9.01	22.26	-38.87	18.01	-69.39	14.73	-37.19	12.06	0.00	0.00	0.00	0.00
CESP6	4.40	0.00	15.98	5.49	8.99	24.25	-25.65	12.59	-71.52	15.68	-37.59	12.59	0.00	0.00	0.00	0.00
CGAS3	35.48	9.51	9.32	20.05	13.85	6.10	11.17	5.73	6.45	9.56	10.07	17.56	21.56	0.00	0.00	0.00
CGAS5	37.79	9.47	9.44	19.89	13.81	5.79	12.19	6.49	6.91	9.72	11.28	18.92	22.23	0.00	0.00	0.00
CGRA3	5.26	4.59	4.39	9.93	4.63	8.48	9.24	5.82	4.82	6.50	7.12	9.19	8.42	0.00	0.00	0.00
CGRA4	5.47	4.34	4.20	9.93	4.59	8.85	9.74	5.67	4.24	6.34	7.57	9.19	8.34	0.00	0.00	0.00
CIEL3	5.30	10.09	6.38	22.17	14.36	7.23	15.75	15.76	15.04	20.35	19.30	13.37	14.54	0.00	0.00	0.00
CLSA3	-64.24	-28.55	-22.70	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CLSC3	3.72	3.67	4.15	4.34	9.21	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CLSC4	3.91	4.00	4.66	4.20	9.88	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CMIG3	5.65	8.69	8.36	8.70	7.27	12.90	8.06	29.67	3.28	5.54	4.40	4.37	7.71	0.00	0.00	0.00
CMIG4	4.24	5.99	5.92	7.59	6.43	11.89	8.64	29.03	3.13	5.27	4.35	4.51	9.40	0.00	0.00	0.00
CMIN3	13.21	7.59	5.92	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CMSA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CMSA4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CNSY3	-86.19	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
COCE3	7.10	0.00	9.39	21.31	10.00	8.12	8.69	0.00	7.21	15.17	22.18	8.33	5.25	4.67	0.00	0.00
COCE5	6.15	5.48	9.26	17.62	12.00	10.25	9.78	9.90	7.72	12.24	20.89	8.34	5.69	4.66	0.00	0.00
COCE6	2.72	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
COGN3	-12.01	-7.52	-9.44	-1.50	79.89	10.39	15.90	11.62	11.09	4.16	20.42	193.05	0.00	0.00	0.00	0.00
CORR3	0.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CORR4	0.24	0.00	0.00	0.00	0.00	0.00	-1.93	0.00	-0.99	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CPFE3	7.32	7.50	6.51	10.29	13.39	14.27	16.70	28.48	17.43	9.74	19.60	17.51	7.96	0.00	0.00	0.00
CPLE11	13.65	18.94	3.54	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CPLE3	12.99	16.91	3.38	4.91	9.50	5.80	5.67	5.83	3.67	5.65	5.69	9.84	7.81	0.00	0.00	0.00
CPLE5	35.60	56.90	19.89	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	9.25	0.00	0.00	0.00
CPLE6	13.84	19.47	3.56	5.25	9.50	5.94	6.61	8.36	5.58	8.15	7.79	12.38	9.20	0.00	0.00	0.00
CPRE3	7.76	0.00	0.00	0.00	96.46	74.40	585.14	-38.73	-106.31	-30.61	-100.54	0.00	0.00	0.00	0.00	0.00
CREM3	32.70	32.70	32.70	32.70	32.70	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRFB3	29.50	17.88	9.63	14.41	45.72	21.60	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRIV3	31.77	13.80	6.29	10.33	8.84	6.51	5.16	9.54	7.15	10.45	7.80	0.00	0.00	0.00	0.00	0.00
CRIV4	30.50	13.72	7.60	12.20	10.42	8.56	7.62	9.56	9.45	9.65	7.82	0.00	0.00	0.00	0.00	0.00
CRPG3	12.34	0.00	7.95	5.29	5.92	5.00	5.94	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRPG5	11.26	12.31	7.23	5.45	5.29	5.22	4.61	1.66	-421.93	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CRPG6	10.95	11.80	7.50	5.43	5.27	4.96	4.58	1.71	-419.71	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CSAB3	15.85	14.87	0.00	8.27	0.00	24.34	21.67	6.29	9.15	0.00	21.73	16.80	8.45	0.00	0.00	0.00
CSAB4	21.28	19.38	35.26	7.52	19.93	0.00	21.29	6.87	7.15	6.81	21.76	16.52	7.88	9.17	0.00	0.00
CSAN3	-28.44	27.28	6.64	35.05	11.44	8.26	12.87	14.99	17.69	40.23	68.83	27.14	4.22	0.00	0.00	0.00
CSED3	31.32	221.95	35.44	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CSMG3	5.34	7.07	8.99	7.64	11.42	13.48	9.81	10.06	-160.03	9.47	10.61	10.47	8.29	0.00	0.00	0.00
CSNA3	-28.43	12.42	2.83	11.65	10.94	2.42	1131.96	-16.11	-4.57	-77.32	41.19	-41.16	6.11	0.00	0.00	0.00
CSRN3	7.50	6.19	5.01	8.59	11.51	11.93	16.34	14.13	8.58	6.45	0.00	8.49	10.14	0.00	0.00	0.00
CSRN5	7.35	5.58	4.81	8.84	0.00	11.12	0.00	13.86	7.13	6.29	0.00	8.71	0.00	0.00	0.00	0.00
CSRN6	8.07	0.00	5.42	8.46	0.00	0.00	0.00	13.76	0.00	7.25	0.00	9.34	0.00	0.00	0.00	0.00
CSUD3	8.81	6.93	9.02	13.48	19.10	8.78	9.11	5.87	6.55	12.88	811.74	8.79	9.87	0.00	0.00	0.00
CTCA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CTKA3	3.92	-6.30	3.34	2.00	-5.39	0.00	0.00	-6.43	0.00	-0.20	-0.83	0.00	-0.83	0.00	0.00	0.00
CTKA4	3.49	-2.93	1.92	1.62	-6.44	-0.40	-32.98	-1.13	-0.43	-0.05	-0.31	-9.16	-0.81	5.17	0.00	0.00
CTNM3	-0.88	-0.77	-3.51	-1.75	-6.12	1.68	3.69	-0.72	0.00	0.00	-13.00	-4.45	-1.62	288.86	0.00	0.00
CTNM4	-0.15	-0.29	-1.38	-0.88	-5.50	1.52	3.84	-0.80	-3.53	-1.12	-13.86	-3.56	-1.65	290.48	0.00	0.00
CTSA3	-1.73	11.92	7.80	-74.99	23.72	2.56	7.17	-20.04	-4.39	132.77	6.80	5.94	5.24	4.55	0.00	0.00
CTSA4	-1.24	7.38	5.67	-60.47	26.02	3.75	6.70	-22.40	-3.73	138.92	5.89	6.38	5.29	4.58	0.00	0.00
CTSA8	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CURY3	11.98	11.20	6.82	18.88	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CVCB3	-3.04	-2.87	-6.34	-2.97	144.44	33.14	29.10	17.91	10.59	13.80	0.00	0.00	0.00	0.00	0.00	0.00
CXSE3	9.96	8.48	13.23	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
CYRE3	8.71	6.46	6.90	6.69	28.54	-73.30	-55.63	27.12	6.70	6.97	8.47	11.46	12.60	0.00	0.00	0.00
DASA3	-10.58	-19.89	-81.60	-231.16	145.71	45.68	65.23	58.29	132.25	42.21	34.58	48.28	33.23	0.00	0.00	0.00
DESK3	22.73	14.55	61.85	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DEXP3	6.44	4.32	5.10	5.82	10.03	495.77	72.21	160.42	-0.79	-7.11	-1.85	-1.57	-4.91	-4.37	0.00	0.00
DEXP4	5.89	3.90	4.41	6.70	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DIRR3	10.92	12.35	13.00	17.76	22.90	-14.85	-6.03	-58.97	4.35	6.12	8.17	9.76	7.23	0.00	0.00	0.00
DMMO11	-49.97	-48.50	1.42	-0.52	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DMMO3	-258.65	-282.17	2.84	-1.30	-6.25	-3.89	-0.06	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DMVF3	17.65	18.23	107.65	5257.76	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DOHL3	-56.38	0.00	18.58	18.01	18.99	0.00	0.00	31.28	0.00	0.00	0.00	0.00	0.00	12.24	0.00	0.00
DOHL4	-45.51	93.63	5.90	4.76	14.41	9.52	10.28	17.03	10.04	6.45	6.82	7.93	0.68	15.30	0.00	0.00
DOTZ3	-1.64	-1.79	-4.30	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DTCY3	29.38	-204.62	-17.44	246.72	-3.66	9.19	8.35	-239.67	-59.22	-18.88	-15.50	5164.13	-33.85	0.00	0.00	0.00
DTCY4	363.49	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
DXCO3	8.65	7.51	6.60	29.18	28.52	18.96	34.43	198.94	21.40	13.69	15.30	17.79	13.11	0.00	0.00	0.00
EALT3	5.52	5.47	7.71	11.44	18.69	7.46	0.00	0.00	424.18	7.64	0.00	0.00	0.00	0.00	0.00	0.00
EALT4	5.76	4.07	4.71	4.55	8.75	7.88	0.00	0.00	244.55	6.15	6.27	8.15	6.73	11.39	0.00	0.00
ECOR3	11.74	12.61	13.70	-17.62	-49.10	13.99	17.51	-4.77	26.10	12.62	20.78	22.90	20.35	0.00	0.00	0.00
ECPR3	-9.87	-9.87	0.00	0.00	-7.73	0.00	0.00	0.00	0.00	0.00	0.00	-8.57	0.00	4.72	0.00	0.00
ECPR4	-9.92	-9.92	0.00	0.00	-8.54	0.00	0.00	0.00	0.00	0.00	0.00	-8.31	0.00	5.02	0.00	0.00
EEEL3	3.39	0.00	0.00	17.92	9.90	11.73	4.04	34.59	2.74	-1.56	-3.24	-9.28	11.42	0.00	0.00	0.00
EEEL4	4.71	0.00	0.00	19.92	11.63	12.42	0.00	29.33	4.29	-2.03	-3.44	-10.99	11.64	0.00	0.00	0.00
EGIE3	10.33	11.61	20.04	12.82	17.94	9.31	11.57	14.77	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EKTR3	7.45	6.31	8.03	7.56	9.79	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EKTR4	8.07	6.88	6.78	8.83	10.17	9.07	11.80	11.01	11.75	5.87	10.18	14.91	9.84	0.00	0.00	0.00
ELEK3	24.46	24.46	24.46	24.46	9.77	5.70	4.62	-0.34	0.00	-6.81	7.99	432.84	23.36	0.00	0.00	0.00
ELEK4	47.34	47.34	47.34	47.34	9.47	5.73	6.34	-0.39	0.00	-8.37	8.72	576.20	20.15	0.00	0.00	0.00
ELET3	51.75	26.66	9.28	9.08	4.78	2.47	-14.83	9.01	-0.54	-2.59	-1.28	-1.24	6.47	0.00	0.00	0.00
ELET5	115.13	0.00	17.92	11.37	5.31	3.03	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ELET6	56.78	27.37	9.17	9.16	4.84	2.87	-17.41	10.22	-0.98	-3.65	-2.17	-2.06	9.73	0.00	0.00	0.00
ELMD3	38.44	44.49	-121.22	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ELPL3	1.04	0.00	0.00	0.00	0.00	-16.61	-3.12	-1180.72	16.55	0.00	0.00	0.00	4.69	0.00	0.00	0.00
EMAE3	13.51	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EMAE4	31.44	36.93	18.73	14.04	14.73	6.65	2.82	5.77	2.59	-5.10	5.06	-3.98	-6218.95	0.00	0.00	0.00
EMBR3	-27.43	-11.11	-66.87	-1.81	-11.09	-24.00	17.41	20.24	92.53	22.73	17.99	15.33	55.71	0.00	0.00	0.00
ENAT3	12.11	0.00	0.00	0.00	19.74	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENBR3	11.69	11.83	5.63	7.91	10.02	7.03	13.89	9.58	4.53	5.75	14.39	17.32	13.38	0.00	0.00	0.00
ENEV3	28.53	50.30	15.27	19.47	22.91	5.71	34.81	-17.81	0.82	-0.38	-1.84	0.00	0.00	0.00	0.00	0.00
ENGI11	12.29	8.44	6.21	12.94	42.66	11.18	16.91	32.10	10.73	12.21	15.47	9.74	12.10	0.00	0.00	0.00
ENGI3	20.88	13.42	9.57	21.01	54.27	12.20	30.35	33.69	11.50	11.10	19.49	9.19	11.67	0.00	0.00	0.00
ENGI4	10.07	7.11	5.37	10.50	40.45	11.03	13.75	31.88	11.08	9.95	13.92	9.53	12.34	0.00	0.00	0.00
ENJU3	-10.52	-2.92	-4.75	-80.07	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMA3B	10.16	0.00	0.00	0.00	10.25	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMA6B	16.90	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMT3	13.64	15.00	17.46	9.66	11.46	10.15	0.00	44.64	26.92	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ENMT4	14.59	15.08	17.37	10.66	11.75	9.87	0.00	0.00	26.92	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EPAR3	4.58	0.00	0.00	10.61	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA3	7.85	9.03	11.05	10.15	15.92	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA5	8.71	12.15	14.91	16.17	30.37	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA6	12.33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQPA7	8.59	10.93	14.43	16.51	32.92	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EQTL3	23.30	22.20	6.18	7.87	1.90	16.14	13.08	15.17	8.40	8.62	66.93	15.06	8.65	0.00	0.00	0.00
ESPA3	-12.15	-9.58	11.46	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ESTR3	-1.50	0.00	0.00	0.00	0.00	-0.57	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ESTR4	-0.75	-0.70	0.00	-1.39	-0.70	-0.35	-4.12	-0.16	-0.16	-0.22	-0.12	-0.32	-0.20	0.00	0.00	0.00
ETER3	6.96	4.80	4.81	4.12	-10.05	-3.36	-0.60	-6.27	12.72	3.42	7.65	6.42	8.20	0.00	0.00	0.00
EUCA3	5.07	4.30	2.57	14.90	90.11	0.00	15.44	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
EUCA4	4.61	3.05	1.91	4.57	11.70	13.78	8.72	7.75	24.24	10.99	7.09	8.28	6.92	0.00	0.00	0.00
EVEN3	9.87	9.30	6.04	173.54	28.33	-8.40	-3.83	0.00	0.00	5.03	6.72	8.54	6.38	0.00	0.00	0.00
EZTC3	14.41	9.14	10.79	24.03	36.93	42.32	9.96	11.22	4.51	6.81	7.30	11.22	7.04	0.00	0.00	0.00
FBMC3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FBMC4	-0.09	-0.09	-0.09	-0.09	0.00	-0.07	0.00	0.00	0.00	-9.10	-6.72	807.10	14.59	0.00	0.00	0.00
FESA3	8.15	4.99	7.83	39.65	13.31	6.96	6.22	14.71	4.59	0.00	22.84	0.00	0.00	0.00	0.00	0.00
FESA4	6.22	4.45	6.71	24.19	7.99	5.85	6.70	9.84	3.60	8.40	15.85	12.89	8.00	0.00	0.00	0.00
FHER3	-0.90	-6.18	1.48	-0.80	0.30	-0.31	-1.09	2.56	-0.22	32.08	-10.01	-204.81	8.42	0.00	0.00	0.00
FIBR3	12.03	12.03	12.03	12.03	12.27	24.42	10.67	84.00	115.75	-21.68	-17.74	-7.44	0.00	0.00	0.00	0.00
FIEI3	6.93	5.16	-5.76	-4.34	-9.18	-61.54	-15.97	-1.43	-1.76	-3.59	-5.81	-8.86	38.29	0.00	0.00	0.00
FIGE3	3.22	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	8.76	0.00	0.00	0.00	0.00	0.00	0.00
FIGE4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	8.76	0.00	0.00	0.00	0.00	0.00	0.00
FIQE3	10.84	10.84	29.67	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FLEX3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FLRY3	30.71	18.43	16.35	33.37	30.90	18.81	14.54	24.36	23.30	29.66	47.03	33.80	31.89	0.00	0.00	0.00
FNCN3	2.65	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FRAS3	14.69	12.67	14.35	11.69	14.31	4.56	7.75	8.40	9.11	11.39	0.00	25.12	7.21	0.00	0.00	0.00
NEMO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FRIO3	-1.11	0.00	-3.30	-1.70	11.50	-13.12	-7.21	1.57	-0.75	-0.78	-5.19	0.00	0.00	0.00	0.00	0.00
FRTA3	-0.62	-0.95	36.37	5.77	26.98	-1.38	-0.86	-1.92	-0.94	0.00	0.00	0.00	0.00	0.00	0.00	0.00
FTRT3B	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
G2DI33	2.83	-1.23	1.31	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GBIO33	-14.97	-14.97	-14.97	-14.97	661.76	13.93	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GEPA3	7.04	9.67	-343.39	5.64	18.01	11.99	14.83	9.15	0.00	0.00	14.01	16.91	0.00	0.00	0.00	0.00
GEPA4	7.25	10.46	-355.20	5.89	18.21	14.08	15.39	9.42	20.68	20.37	14.00	19.90	17.19	0.00	0.00	0.00
GETT11	15.12	15.12	15.09	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GETT3	7.55	7.55	7.53	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GETT4	7.55	7.55	7.53	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GFSA3	-1.93	-4.51	8.35	-17.09	-75.71	-1.80	-0.75	-0.60	12.34	-22.52	1.76	-16.05	-1.88	0.00	0.00	0.00
GGBR3	3.84	3.59	2.49	14.74	24.44	9.14	-49.62	-4.70	-1.31	9.86	16.39	18.59	2.52	0.00	0.00	0.00
GGBR4	4.18	4.30	3.03	17.77	28.57	11.06	-59.24	-6.42	-1.76	11.74	19.91	21.63	2.98	0.00	0.00	0.00
GGPS3	20.17	15.44	26.50	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GMAT3	12.57	13.27	17.55	25.45	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GNDI3	-3584.81	-3584.81	-3205.27	64.89	85.20	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GOAU3	3.59	3.33	2.28	12.26	20.08	9.08	-24.55	-2.86	-0.27	17.62	15.50	16.31	8.32	0.00	0.00	0.00
GOAU4	3.58	3.58	2.44	14.02	21.54	8.54	-27.93	-3.18	-0.29	23.07	19.12	20.69	9.72	0.00	0.00	0.00
GOLL4	-185.54	-15.04	-7.49	-13.07	-982.78	-72.39	4069.87	28.49	-2.92	-3.40	-3.67	-2.31	-4.48	0.00	0.00	0.00
GPAR3	49.08	4.13	0.00	12.88	0.00	0.00	0.00	0.20	-0.21	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GPIV33	-0.32	-0.18	0.49	-0.84	2.99	-1.68	4.93	10.89	-3.60	35.38	-3.90	0.00	0.00	0.00	0.00	0.00
GRAO3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
GRND3	10.99	9.58	12.98	18.66	22.38	12.63	12.94	8.33	9.19	9.39	12.55	11.56	7.57	0.00	0.00	0.00
GSHP3	-1.61	-0.50	-0.26	-0.23	-5.67	-1.28	1.73	2.07	-0.26	-1.49	-3.77	-5.97	-15.08	0.00	0.00	0.00
GUAR3	-31.76	62.62	10.85	-274.11	20.38	8.21	16.42	11.95	8.20	10.79	15.58	20.74	14.23	0.00	0.00	0.00
GUAR4	-861.00	0.00	0.00	0.00	0.00	8.09	15.32	11.20	8.63	9.23	14.17	18.74	12.52	0.00	0.00	0.00
HAGA3	4.36	7.64	10.29	7.04	22.67	5.69	-42.33	0.00	9.04	3.56	0.00	2.08	6.79	12.18	0.00	0.00
HAGA4	1.96	2.47	2.88	4.39	11.36	3.19	-18.62	10.88	6.24	3.20	5.79	2.39	8.37	9.61	0.00	0.00
HAPV3	-41.71	-46.78	81.15	72.36	50.53	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HBOR3	8.75	5.35	6.20	61.73	0.00	-2.03	-2.07	-3.85	5.87	5.81	6.61	9.01	6.32	0.00	0.00	0.00
HBRE3	8.10	7.38	5.81	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HBSA3	38.99	-210.52	-7.74	-49.71	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HBTS5	3.97	4.36	2.41	155.97	-7.29	-8.84	-4.14	-90.26	55.65	323.03	72.49	1010.10	45.17	15.12	0.00	0.00
HETA3	0.24	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-0.52	0.00	0.00	0.00
HETA4	0.02	0.01	9.15	-0.02	1.34	2.59	-0.08	21.00	-18.62	0.06	-0.15	-0.08	-0.15	-0.42	0.00	0.00
HGTX3	101.99	101.99	101.99	8.14	25.70	19.76	15.66	12.22	8.86	10.45	15.43	22.07	17.77	0.00	0.00	0.00
HOOT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
HOOT4	0.37	0.11	-1.29	-0.57	-0.32	-0.37	-1.23	-144.00	-27.00	-92.75	1.36	-3.89	-2.27	-11.05	0.00	0.00
HYPE3	11.73	16.87	13.46	16.75	0.00	0.00	23.59	14.03	24.51	26.14	43.46	51.14	-85.21	47.13	0.00	0.00
IDVL3	-0.99	-0.99	-0.99	-0.99	-3.32	-2.25	-0.91	-1.86	-0.88	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IDVL4	-1.22	-1.22	-1.22	-1.22	-3.67	-1.01	-0.87	-1.86	-0.54	-94.79	-3.44	83.05	-9.28	0.00	0.00	0.00
IFCM3	-2.02	-5.12	-110.86	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGBR3	0.56	-1.06	-0.59	-1.47	-0.63	-0.29	0.33	-0.18	-0.41	-1.67	-1.25	-1.65	-4.78	-6.41	0.00	0.00
IGSN3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGTA3	68.93	0.00	0.00	32.44	30.13	28.66	31.89	29.15	17.48	18.95	19.15	8.05	18.08	0.00	0.00	0.00
IGTI11	30.79	1004.78	29.49	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGTI3	11.58	431.78	13.37	30.20	25.82	18.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IGTI4	36.71	1329.57	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
INEP3	-0.48	-0.63	0.20	-0.19	-0.13	-1.79	-0.93	-0.63	-0.12	-0.03	-0.26	-0.96	-147.48	0.00	0.00	0.00
INEP4	-0.36	-0.52	0.19	-0.18	-0.14	-1.66	-0.91	-0.48	-0.09	-0.02	-0.22	-0.98	-132.60	0.00	0.00	0.00
INNT3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
INTB3	12.28	20.77	25.14	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
IRBR3	-11.46	-3.37	-7.47	-6.82	10.04	21.37	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ITEC3	-35.12	-35.12	-35.12	-35.12	0.00	0.00	-7.64	0.00	-8.71	-4.66	-0.81	616.17	7.48	0.00	0.00	0.00
ITSA3	6.90	6.31	6.73	14.71	11.46	10.53	9.72	7.27	5.36	7.49	11.88	15.47	13.02	0.00	0.00	0.00
ITSA4	6.82	6.04	6.46	13.98	11.49	9.57	10.00	7.49	5.24	7.25	8.33	10.35	10.20	0.00	0.00	0.00
ITUB3	7.62	7.23	6.99	14.49	11.58	7.89	10.70	8.30	5.81	8.29	9.02	11.28	8.92	0.00	0.00	0.00
ITUB4	8.97	8.25	7.68	16.40	13.42	9.32	12.08	9.37	6.22	8.88	9.60	12.08	11.23	0.00	0.00	0.00
JALL3	3.23	11.72	7.93	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
JBSS3	10.25	3.16	4.40	13.50	11.60	1255.06	50.11	139.44	7.84	16.19	27.85	24.74	-206.20	0.00	0.00	0.00
JFEN3	-1.67	-0.60	-0.53	0.00	-0.75	-0.88	-0.50	-1.62	0.00	-3.17	15.77	20.14	13.91	0.00	0.00	0.00
JHSF3	6.77	5.51	3.82	8.34	11.73	5.54	-40.61	-2.85	6.15	24.30	5.76	13.18	10.67	7.02	0.00	0.00
JOPA3	15.52	7.80	9.91	11.64	26.74	0.00	13.81	0.00	5.03	6.19	9.37	6.18	11.32	0.00	0.00	0.00
JOPA4	24.98	12.96	12.05	10.66	22.78	0.00	13.87	6.89	7.53	9.28	12.13	7.18	9.63	0.00	0.00	0.00
JSLG3	6.88	8.13	7.97	16.78	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
KEPL3	7.17	4.73	7.68	14.78	20.62	47.49	-15.00	-21.41	68.34	9.93	17.29	510.62	10.66	0.00	0.00	0.00
KLBN11	8.95	4.78	9.55	-11.95	29.47	125.00	31.31	6.76	-17.70	18.90	0.00	0.00	0.00	0.00	0.00	0.00
KLBN3	8.92	4.83	10.47	-12.17	34.10	172.78	44.92	11.56	-32.08	21.24	34.80	15.01	34.91	0.00	0.00	0.00
NEMO5	2.81	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
KLBN4	8.95	4.81	9.30	-11.76	28.42	111.38	27.93	5.44	-14.38	18.65	38.78	15.61	40.18	0.00	0.00	0.00
KRSA3	-3.28	-5.60	-62.48	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LAME3	21.15	21.15	18.94	96.93	44.79	56.41	78.91	83.10	60.55	30.43	29.30	43.04	28.64	0.00	0.00	0.00
LAME4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LAND3	10.97	20.17	56.89	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LAVV3	9.27	8.28	6.08	21.09	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LCAM3	37.5	0.00	11.92	38.66	10.02	23.29	20.62	13.44	11.96	11.18	28.06	213.03	0.00	0.00	0.00	0.00
LEVE3	5.97	6.98	6.97	21.61	14.27	11.05	12.91	108.03	15.8	12.92	17.45	17.9	9.64	0.00	0.00	0.00
LHER3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LHER4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LIGT3	-0.39	-0.3	11	10.67	5.8	20.3	27.4	-11.31	53.36	5.24	7.68	10.74	17177.11	0.00	0.00	0.00
LINX3	-90.95	-90.95	-90.95	-88.61	151.52	76.26	41.86	11.92	32.47	34.8	35.71	0.00	0.00	0.00	0.00	0.00
LIPR3	35.99	30.33	39.39	20.54	-370.95	50	15.88	18.02	108.34	-205.41	172.99	44.11	24.28	0.00	0.00	0.00
LJQQ3	-23.64	-42.06	30.72	45.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LOGG3	15.01	4.27	7	24.97	26.55	28.62	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LOGN3	11.94	9.19	25.62	131.79	43.86	30.35	-0.13	2.5	-0.3	-3.7	113.22	-132.37	-8.16	0.00	0.00	0.00
LPSB3	52.79	22.45	7.51	-143.38	-279.92	-16.98	-11.02	-11.92	-0.7	205.89	10.53	18.11	0.01	0.00	0.00	0.00
LREN3	12.72	15.72	38.17	31.62	40.49	29.64	34.45	23.73	3.76	20.44	18.6	27.56	17.58	0.00	0.00	0.00
LTEL3B	16.5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LUPA3	2.4	2.18	-3.75	3.09	-1.22	-0.29	-4.96	1.62	-0.26	-0.01	-0.21	-0.14	-0.88	0.00	0.00	0.00
LUXM3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	18.76	11.59	0.00	0.00	0.00
LUXM4	24.73	37.95	29.61	39.49	10.41	15.01	0.00	0.00	0.00	9.41	12.85	16.06	7.05	0.00	0.00	0.00
LVTC3	20.16	16.44	15.2	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
LWSA3	-212.37	137.36	-492.66	513.19	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MAGG3	-119.99	-119.99	-119.99	-119.99	-14.03	2.76	-0.77	-6.31	31.07	40.55	17.21	0.00	0.00	0.00	0.00	0.00
MAPT3	-189.13	0.00	0.00	-270.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-25.52	-206.96	0.00	0.00
MAPT4	-69.23	0.00	-139.38	-259.45	-183.16	0.00	-22.81	0.00	-1.1	0.00	-46.98	-26.35	-15.8	-153.98	0.00	0.00
MATD3	25.15	26.63	35.62	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MBLY3	-5.61	-3.56	-6.13	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MDIA3	23.44	25.21	17.11	15.12	23.22	20.05	20.92	16.57	12.49	17.23	21.63	18.83	14.76	0.00	0.00	0.00
MDNE3	7.16	4.66	5.98	-9.84	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MEAL3	5.25	11.03	-8.65	-2.55	-88.3	149.57	394.75	-10.83	-3.47	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MEGA3	112.06	-542.68	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MELK3	10.29	8.11	9.78	37.62	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MERC3	-76.53	0.00	34.08	50.01	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MERC4	-35.06	-22.63	14.41	23.37	13.91	5.09	3.51	0.00	0.00	0.00	4.41	4.17	9.49	0.00	0.00	0.00
MGEL3	0.5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MGEL4	0.43	0.26	0.57	-1.56	-22.11	-1.83	-8.22	39.57	-0.32	-0.56	-0.19	-0.93	-7.24	24.39	0.00	0.00
MGLU3	-13.94	-37.06	82.5	413.95	84.07	57.76	4.46	27.29	-48.83	10.88	12.37	-335.94	0.00	0.00	0.00	0.00
MILS3	10.99	13	15.72	-326.42	-58.46	-7.91	-5.23	-1.87	-3.48	18.94	24.3	28.31	24.1	0.00	0.00	0.00
MLAS3	-3.63	36.76	8.84	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MMAQ3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MMAQ4	0.06	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MMXM3	-2.17	-2.17	-2.17	-1.36	-0.14	-0.13	-0.68	0.09	0.39	-0.31	-0.33	-3.48	-203.11	0.00	0.00	0.00
MNDL3	0.12	0.11	-0.15	-6.92	-8.41	21.86	-0.71	-0.63	-0.29	-0.64	5.92	-6.42	-0.51	0.00	0.00	0.00
MNPR3	-80.11	6.7	1.34	3	-1.27	-0.24	-0.8	-162.58	-3.2	-19.8	-1	-0.26	-3.05	-1.26	0.00	0.00
MOAR3	5.9	25.35	8.18	-294.96	20.8	49.99	12.96	8.99	0.00	7.71	18.38	8.9	5.43	0.00	0.00	0.00
MODL11	-27.27	0.00	22.37	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MODL3	-29.78	31.82	25.54	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MODL4	-26.3	0.00	20.5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MOSI3	32.29	32.29	33.58	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MOVI3	-82.17	4.97	6.98	56.62	22.11	11.49	22.64	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MPLU3	12.2	12.2	12.2	12.2	12.2	11.45	10.98	10.67	12.63	15.95	20.88	34.31	18.97	0.00	0.00	0.00
MRFG3	-4.43	1.38	3.51	3.13	28.37	2.43	-9.41	-5.07	-5.64	-4.3	-2.28	-13.14	-3.97	0.00	0.00	0.00
MRSA3B	8.13	0.00	18.81	28.45	13.51	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MRSA5B	7.64	8.58	22.08	0.00	0.00	0.00	0.00	3.87	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MRSA6B	7.64	8.97	20.41	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MRVE3	-44.51	-18.13	7.2	16.6	13.87	7.95	10.22	8.72	7.12	4.97	9.63	10.96	6.79	0.00	0.00	0.00
MSPA3	17.74	0.00	-9.55	0.00	-8.75	65.59	7.89	0.00	0.00	0.00	-23.46	49.1	0.00	0.00	0.00	0.00
MSPA4	15.34	173.68	-9.06	0.00	0.00	65.92	7.05	0.00	0.00	0.00	-23.46	0.00	0.00	0.00	0.00	0.00
MSRO3	1733.91	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MTIG3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-14.25	-8.18	-57.41	418.47	0.00	0.00	0.00
MTIG4	-49.52	0.00	-1	-0.89	1.28	53.11	4.47	-22.19	-0.53	-5.18	-1.64	-10.76	65.29	0.00	0.00	0.00
MTRE3	4.37	11.02	36.4	37.22	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MTSA3	7.35	0.00	0.00	0.00	0.00	0.00	0.00	0.00	11.77	0.00	0.00	0.00	0.00	0.00	0.00	0.00
MTSA4	4.31	4.43	7.29	5.1	11.92	8.28	11.23	6.88	4.94	6.74	7.88	9.2	14.85	0.00	0.00	0.00
MULT3	16.51	17.1	24.82	14.66	42.22	10.29	38.44	15.28	8.42	10.35	31.42	27.8	23	30.28	0.00	0.00
MWET3	0.89	0.00	0.36	4.81	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-22.2	0.00	0.00	0.00
MWET4	0.53	0.69	0.27	0.54	0.00	0.00	0.84	-0.15	-0.39	-0.25	6.85	-1.3	-10.38	0.00	0.00	0.00
MYPK3	-64.08	6.49	4.39	-4.85	10.56	17.81	497.54	51.37	23.64	17.08	14.56	38.8	10.72	0.00	0.00	0.00
NAFG3	11.8	11.8	11.8	11.8	0.00	0.00	4.9	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NAFG4	3.49	3.49	3.49	3.49	0.00	7.56	0.00	0.00	0.00	12.41	32.45	28.57	6.53	0.00	0.00	0.00
NEMO6	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NEOE3	4.18	3.97	5.01	7.61	13.55	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NEXP3	-0.09	-0.27	-1.18	-0.45	-2.4	-2.98	-1.8	-2.27	-2.77	-19.03	14	15.89	10.09	0.00	0.00	0.00
NGRD3	25.93	24.99	42.96	138.07	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NINJ3	76.84	-8.78	-6.64	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NORD3	-4.76	-5.6	-10.95	-61.52	-96.51	0.00	0.00	0.00	-1381.2	-2748.08	-5.88	-4.1	-1.5	0.00	0.00	0.00
NRTQ3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NTCO3	-6.66	-5.62	33.47	-111.03	67.97	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
NUTR3	13.78	0.00	0.00	8.24	0.17	-1.41	-0.54	-0.15	0.00	-5.1	0.00	0.00	0.00	0.00	0.00	0.00
ODER4	9.34	0.00	0.00	0.00	0.00	0.00	7.58	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ODPV3	14.69	11.35	17.6	21.41	31.48	25.65	16.81	30.99	22.72	26.9	27.77	39.16	32.42	0.00	0.00	0.00
OFSA3	62.83	10.05	12.07	22.85	50.13	26.41	0.00	-290.12	27.28	0.00	0.00	0.00	0.00	0.00	0.00	0.00
OGXP3	-2.15	-2.15	-2.15	-2.15	0.00	28.54	-79.52	-0.41	0.03	-0.04	-12.45	-91.34	0.00	0.00	0.00	0.00
OIBR3	-0.02	-0.06	-0.48	-1.24	-0.57	0.04	-0.47	-0.27	-0.4	-3.73	4.35	9.22	0.00	0.00	0.00	0.00
OIBR4	-0.05	-0.17	-0.81	-1.59	-0.81	0.04	-0.45	-0.23	-0.32	-3.51	4.32	8.38	0.00	0.00	0.00	0.00
OMGE3	33.53	0.00	18.04	160.21	184.25	49.08	54.5	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ONCO3	37.43	64.52	-118.82	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
OPCT3	16.92	-6.15	-12.66	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ORVR3	-21.23	-16.25	-30.99	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
OSXB3	-0.06	-0.07	0.18	-0.07	-0.02	-0.03	-0.04	-0.03	-0.08	-0.02	-0.08	-113.56	4.66	-19.19	0.00	0.00
PARD3	36.76	15.97	11.84	23.38	22.54	19.89	33.77	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PATI3	28.36	15.04	5.74	2.9	23.47	3.93	11.1	0.00	16.95	15.23	0.00	8.64	0.00	10.17	0.00	0.00
PATI4	32.27	0.00	4.81	3.75	25.62	7.41	0.00	0.00	17.39	16.58	2.83	10.39	8.66	10	0.00	0.00
PCAR3	-0.35	-25.95	7.3	9.24	30.02	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PCAR4	-6.62	0.00	0.00	0.00	29.61	18.1	36.23	-30.18	41.96	21.65	26.33	22.57	24.25	0.00	0.00	0.00
PDGR3	-0.01	-0.49	-0.6	-0.07	-0.07	-0.07	0.64	-0.01	-0.91	-2.15	-8.95	-1.74	9.24	0.00	0.00	0.00
PDTC3	10.24	24.61	21.49	29.72	9.77	8.58	9.01	0.67	-4.44	-18.13	-14.5	-11.54	-23.99	0.00	0.00	0.00
PEAB3	19.1	15.99	5.46	1.58	13.25	13.54	13.2	5.97	13.25	0.00	-33.8	0.00	-203.14	13.39	0.00	0.00
PEAB4	41.5	22.8	6.75	1.52	13.81	0.00	12.89	6.43	13.98	0.00	-33.8	138.1	-203.01	13.1	0.00	0.00
PETR3	3.07	1.94	3.75	52.95	10.4	12.85	-494.58	-14.91	-3.21	-5.8	8.85	12.04	9.01	0.00	0.00	0.00
PETR4	2.84	1.7	3.48	52.01	9.81	11.48	-470.89	-13.09	-2.51	-6.05	9.45	12.02	8.41	0.00	0.00	0.00
PETZ3	43.96	57.12	94.91	121.97	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PFRM3	16.08	5.62	9.34	14.43	66.88	-49.99	-5.04	-10.95	-9.92	-5.81	30.72	11.9	13.52	17.15	0.00	0.00
PGMN3	-8.46	7.37	25.23	41.68	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PINE3	7.81	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PINE4	7.38	6.47	107.81	-5.26	-4.4	-6.21	-1.86	-16.83	11.15	8.15	7.15	7.62	6.14	0.00	0.00	0.00
PLAS3	4.18	-1.22	-1.09	-0.6	-13.56	-0.16	-0.4	-0.08	-2.61	-0.82	-1.47	-1.06	27.18	0.00	0.00	0.00
PLPL3	10.28	6.08	4.91	11.74	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PMAM3	-0.06	-0.07	-0.55	-0.5	5.33	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PNVL3	20.29	17.66	25.22	58.81	34.65	18.83	30.5	57.49	29.25	19.89	18.06	27.17	13.47	13.73	0.00	0.00
PNVL4	33.89	0.00	0.00	55.14	25.89	13.37	26.3	20.11	15.13	15.22	15.46	16.11	11.73	12.24	0.00	0.00
POMO3	5.35	5.06	6.46	24.8	20.88	16.15	41.28	8.79	17.54	13.69	7.61	17.71	8.42	0.00	0.00	0.00
POMO4	6.89	5.97	7.88	26.17	21.16	20.22	51.15	11.2	19.08	13.44	7.92	19.28	9.27	0.00	0.00	0.00
PORT3	16.79	14.54	18.86	28.88	27.58	18.12	12.35	8.15	22.33	23.78	22.92	0.00	0.00	0.00	0.00	0.00
POSI3	4.63	4.39	7.72	3.79	54.36	-426.62	-5.74	27.72	-1.87	8.07	16.16	14.66	-7.47	0.00	0.00	0.00
POWE3	23.92	23.92	23.28	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PPAR3	0.83	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PPLA11	2037.82	6642.61	3371.97	-1603.23	-28.1	-0.81	-1.96	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PRIO3	8.84	9.58	13.62	22.43	7.3	6.46	21.22	5.95	0.66	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PRNR3	20.43	12.88	18.87	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PSSA3	9.31	13.19	8.76	9.38	14.71	12.86	10.67	9.5	9.29	11.22	6.84	11.28	12.03	0.00	0.00	0.00
PTBL3	-18.34	7.58	6.58	8.48	64.83	6.13	13.57	151.4	6.2	8.17	8.75	10.82	11.48	0.00	0.00	0.00
PTCA11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PTCA3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
PTNT3	12.32	6.27	10.75	5.24	0.00	13.86	0.00	0.00	0.00	12.93	0.00	0.00	-16.87	0.00	0.00	0.00
PTNT4	9.2	4.3	4.46	4.87	-108.94	6.23	9.34	3.49	9.12	5.34	7.3	14.78	-11.69	0.00	0.00	0.00
QGEP3	10.72	0.00	0.00	0.00	0.00	5.84	8	9.27	16.55	9.82	0.45	1.65	1.86	0.00	0.00	0.00
QUAL3	-4337.16	17.96	13.12	25.34	26.75	9.19	23.83	13.05	17.07	59.06	-188.69	248.27	0.00	0.00	0.00	0.00
QUSW3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
QVQP3B	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RADL3	41.69	39.34	53.38	85.39	47.76	37.58	59.33	45.16	34.46	37.83	48.35	72.69	35.56	0.00	0.00	0.00
RAIL3	52.8	67.01	218.75	120.05	52.29	100.26	-66.59	-3.94	-3.65	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RAIZ4	15.69	15.86	21.2	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RANI3	5.71	5.24	6.21	14.92	-8.38	163.34	-3.07	-36.8	1013.79	9.61	7.94	9.83	16.47	0.00	0.00	0.00
RANI4	2.93	0.00	0.00	15.22	-9.01	160.57	-2.99	-42.37	0.00	9.64	7.82	0.00	0.00	0.00	0.00	0.00
RAPT3	6.81	5.58	5.92	6.09	13.15	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RAPT4	8.04	5.73	5.13	8.37	15.8	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RCSL3	-16.14	-5.02	-263.87	-577.28	-38.59	-1.08	-2.98	-15.58	-40.54	-0.22	-2.12	-0.64	-1.27	0.00	0.00	0.00
RCSL4	-9.56	-1.77	-65.85	-98.25	-38.59	-0.52	-0.74	-8.92	-27.98	-0.16	-1.82	-0.36	-0.54	0.00	0.00	0.00
RDNI3	-56.41	14.12	52.74	344.48	428.72	-9.23	-2.89	-3.15	29.33	6.96	6.33	7.28	9.34	0.00	0.00	0.00
RDOR3	33.25	56.67	57.21	316.57	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RECV3	6.01	8.42	26.27	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
REDE3	9.44	7.67	10.1	25.86	24.58	35.74	53.65	6.22	1.26	0.21	-3.97	-0.76	-1.87	0.00	0.00	0.00
RENT3	45.24	28.39	19.67	49.89	41.07	30.11	9.7	21.57	13.06	18.42	18.34	31.39	17.71	0.00	0.00	0.00
RLOG3	82.76	82.76	82.76	66.37	50.23	80.99	-0.18	-25.46	-14.33	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RNEW11	0.44	0.64	8.44	8.68	-1.65	-3.52	-0.64	-0.58	23.28	-80.94	599.14	-344.71	-104.87	0.00	0.00	0.00
RNEW3	0.44	0.64	8.81	9.3	-2.11	-3.62	-0.75	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RNEW4	0.44	0.64	8.17	8.2	-1.51	-3.41	-0.58	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
ROMI3	4.74	5.72	6.63	6.49	8.51	6.31	13.42	-4.22	20.75	29.66	325.87	-9.09	141.22	0.00	0.00	0.00
RPAD3	10.84	9.11	27.08	15.09	12.66	4.74	4.47	0.00	3.8	5.37	5.81	0.00	0.00	0.00	0.00	0.00
RPAD5	10.77	8.8	33.94	23.42	16.99	11.18	10.6	7.69	7.08	11.61	12.99	0.00	0.00	0.00	0.00	0.00
RPAD6	10.71	8.53	19.99	15.26	18.42	6.71	5.25	4.34	2.81	4.8	5.33	0.00	0.00	0.00	0.00	0.00
RPMG3	-0.16	-0.12	-0.52	-0.46	-1.52	-1.14	-31.19	-11.88	-0.35	-1.3	-0.54	-0.66	-7.91	0.00	0.00	0.00
RRRP3	16.35	51.26	-7510.49	-15.71	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RSID3	-0.2	-0.13	-0.85	7.61	-0.5	-0.15	-0.36	-0.09	-0.1	-2.35	21.29	-5.94	27.25	0.00	0.00	0.00
RSUL3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
RSUL4	7.29	6.26	5.06	-19.2	4.33	0.00	0.54	0.00	0.00	2.27	0.00	-1.59	0.00	0.00	0.00	0.00
SANB11	11.79	7.37	7.22	12.53	11.32	12.72	13.51	15.23	7.45	477.01	487.35	544.79	385.68	0.00	0.00	0.00
SANB3	11.12	6.96	6.85	12.1	11.63	13.24	15.67	19.96	8.2	474.88	9.76	10.92	8.25	0.00	0.00	0.00
SANB4	12.35	7.81	7.69	13.13	10.75	12.23	11.2	10.36	6.72	426.68	9.76	9.46	7.22	0.00	0.00	0.00
SAPR11	5.18	4.74	4.92	7.76	9.46	6.94	8.79	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SAPR3	5.07	4.55	4.88	9.1	8.12	9.47	9.04	0.00	4.35	8.91	0.00	0.00	0.00	0.00	0.00	0.00
SAPR4	5.18	4.79	4.97	7.6	9.83	6.04	8.59	8.17	3.64	6.56	6.97	11.16	6.74	0.00	0.00	0.00
SBFG3	15.76	15.18	10.98	-63.76	27.48	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SBSP3	12.95	12.52	11.91	31.21	10.84	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SCAR3	44.24	-13.06	78.18	29.31	31.46	119.8	20.82	19.16	8.14	15.62	8.58	11.75	14.94	0.00	0.00	0.00
SEDU3	-13.36	-13.36	-13.36	-13.36	0.00	-14.44	339.57	-28.91	-5.87	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SEER3	-4.74	-2.59	25.73	12.18	26.19	10.72	19.85	10.14	5.99	17.32	0.00	0.00	0.00	0.00	0.00	0.00
SEQL3	-0.41	-6.17	-110.38	411.56	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SGPS3	-0.1	-0.15	-1.6	-1.21	53.76	12.37	102.74	-113.61	25.73	-4.51	-6.71	-5.35	-1.11	0.00	0.00	0.00
SHOW3	74.43	-14.56	-3.92	-2.47	-5.96	59.42	11.19	14.21	0.07	-0.02	-28.3	-0.14	0.00	0.00	0.00	0.00
SHUL3	125.98	0.00	0.00	0.00	0.00	0.00	0.00	0.00	15.92	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SHUL4	8.04	6.23	7.8	8.5	9.32	6.35	10.96	8.81	5.15	6.18	10.74	11.17	13.01	0.00	0.00	0.00
SIMH3	31.68	11.76	11.56	26.49	21.41	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SLCE3	9.46	7.86	8.19	10.71	15.17	10.46	7.4	47.79	13.28	20.54	21.11	51.52	18.77	0.00	0.00	0.00
SLED3	0.45	0.55	0.54	-0.17	-0.39	-0.19	-2.57	-5.36	0.00	59.64	43.92	0.00	0.00	0.00	0.00	0.00
SLED4	0.22	0.2	0.24	-0.1	-0.18	-0.19	-2.18	-1.99	1.5	32.06	57.03	9.64	9.21	0.00	0.00	0.00
SMFT3	30.45	-89.09	-14.78	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SMLS3	10.78	10.78	10.78	14.86	7.78	8.4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SMTO3	12.26	9.24	8.23	10.45	13.51	21.08	14.29	7.79	25.08	14.32	24.02	43.37	14.95	0.00	0.00	0.00
SNSY3	-0.15	-0.1	-0.62	-1.57	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SNSY5	-0.1	-0.08	-0.36	-0.35	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SNSY6	-0.36	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOJA3	8.83	7.19	14.54	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOMA3	14.76	23.74	33.32	-91.64	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOND3	6.9	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SOND5	8.25	5.34	6.42	5.81	0.00	0.00	12.28	0.00	-5.28	7.48	8.82	1.47	13.1	0.00	0.00	0.00
SOND6	8.13	0.00	0.00	4.66	22.41	5.64	11.5	0.00	-5.25	6.99	8.63	0.00	11.79	0.00	0.00	0.00
SPRI3	-3.32	-3.32	-3.32	-3.32	-4.45	0.00	-1.15	-6.65	-1.45	-2.29	-3.48	-3.52	0.16	16.35	0.00	0.00
SPRI5	-1.3	-1.3	-1.3	-1.3	-4.66	0.00	0.00	-5.8	-2.68	-3.13	-3.87	-3.52	0.15	13.21	0.00	0.00
SPRI6	-1.68	-1.68	-1.68	-1.68	-4.54	-12.83	0.00	0.00	-2.24	-2.29	-3.87	-3.06	0.13	11.62	0.00	0.00
SPRT3B	1816.79	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	-35.11	0.00	0.00	0.00
SQIA3	2744.55	78.75	72.04	334.52	-63.07	109.44	42.15	19.71	10.94	9.09	0.00	0.00	0.00	0.00	0.00	0.00
STBP3	18.32	15.71	21.64	-329.05	354.95	946.13	-424.36	-57.26	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
STKF3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
STTR3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SULA11	52.23	52.23	35.2	7.59	19.97	12.46	9.51	8.82	8.64	7.92	10.41	10.48	9.53	0.00	0.00	0.00
SULA3	52.32	52.32	36.3	9.08	24.78	15.68	9.11	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SULA4	53.73	53.73	34.73	6.84	17.83	10.26	9.48	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SUZB3	4.17	2.81	9.49	-7.43	-19.17	132.28	11.43	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
SYNE3	-16.06	-11.11	0.85	41.28	92.67	-1173.7	6.11	-55.55	0.00	10.5	11.71	13.52	12.36	0.00	0.00	0.00
TAEE11	10.54	8.24	5.66	5.07	10.72	7.59	11.34	8.29	6.35	7.17	7.02	3.25	0.00	0.00	0.00	0.00
TAEE3	10.47	8.29	5.66	5.12	10.6	8.17	11.4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TAEE4	10.56	8.31	5.69	5.11	10.83	7.33	10.84	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TASA3	7.82	3.23	4.52	5.36	10.03	-5.18	-0.44	-2.43	-0.11	-0.58	-4.68	-3.92	5.78	0.00	0.00	0.00
TASA4	7.77	3.25	4.55	5.24	11.76	-4.38	-0.49	-2.72	-0.07	-0.36	-4.01	-3.5	5.52	0.00	0.00	0.00
TCNO3	-7.52	-7.52	-19.63	-22.13	0.00	-119.29	-18.19	-235.84	32.25	2.78	1.07	-0.18	8.72	-10.05	0.00	0.00
TCNO4	-5.33	-5.33	-15.98	-14.07	0.00	-133.17	-18.79	-211.65	30.36	1.7	0.8	-0.17	5.68	-6.88	0.00	0.00
TCSA3	8.05	186.69	-1.44	-4.46	-5.68	-1.73	-1.31	-0.83	2.05	4.46	7.53	-8.77	12.89	0.00	0.00	0.00
TECN3	4.77	3.96	6.49	-3.62	-2.3	13.44	-23.06	-145.98	12.91	13.02	39.82	0.36	0.00	0.00	0.00	0.00
TEKA3	-0.03	0.00	0.00	-0.16	0.00	0.00	0.00	-2.27	-0.05	-0.16	-0.15	0.22	-0.28	0.00	0.00	0.00
TEKA4	-0.04	-0.07	-0.06	-0.06	0.00	0.00	-0.02	-2.82	-0.05	-0.09	-0.14	0.2	-0.28	0.00	0.00	0.00
TELB3	-390.32	-10.88	-23.71	-56.28	-21.09	0.00	-18.53	-11.81	-1.25	-2.21	-3.71	34.16	-87.01	0.00	0.00	0.00
TELB4	-280.54	-6.87	-7.76	-19.73	-6.07	-4.99	-10.68	-9.84	-0.33	-1.21	-2.18	21.53	-40.07	0.00	0.00	0.00
TEND3	-2.86	-0.8	-9.11	15.73	11.95	8.66	10.12	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TESA3	-13.3	-13.3	-13.3	-9.91	-2.93	5.19	36.29	-1.18	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TFCO4	118.64	103.33	159.46	473.69	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TGMA3	8.73	8.03	9.54	24.18	12.81	16.77	12.6	36.71	31.24	-45.67	24.02	27.71	17.39	0.00	0.00	0.00
TIET11	4.38	4.38	4.38	7.78	21.07	13.69	16.82	14.89	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TIET3	6.09	6.09	6.09	7.88	28.19	13.94	17.02	15.9	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TIET4	6.13	6.13	6.13	7.84	19.47	13.8	17.02	14.3	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TIMS3	18.2	17.97	10.76	19.24	11.37	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TKNO3	7.05	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TKNO4	6.07	5.01	3.08	10.4	6.43	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TOTS3	24.46	34.22	47.97	56.27	50.96	75.52	53.25	26.08	0.00	21.76	26.94	31.17	30.98	0.00	0.00	0.00
TOYB3	-43.94	-43.94	-43.94	-43.94	0.00	-26.28	-0.64	-1.72	-51936.64	-405.73	-4648.18	-2553.61	-4590.2	-31724.16	0.00	0.00
TOYB4	-47.96	-47.96	-47.96	-47.96	0.00	-24.39	-0.71	-1.91	-27823.2	-405.73	-4648.18	-3830.41	-4590.2	-31724.16	0.00	0.00
TPIS3	-0.81	24.82	35.19	2.17	-1.54	-0.75	88.26	-1.75	11.96	-3.15	-20.54	3.49	61.37	0.00	0.00	0.00
TRAD3	-2.25	-7.56	1402.37	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TRIS3	9.94	9.45	9.21	13.44	15.96	8.33	8.54	81.68	11.96	12.06	10.39	8.67	-5.77	14.73	0.00	0.00
TRPL3	8.84	8.43	6.68	5.75	10.29	6.03	7.09	1.93	13.74	0.00	0.00	8.05	8.96	0.00	0.00	0.00
TRPL4	6.72	6.7	5.31	5.45	8.44	6.06	8.07	2.12	14.61	16.75	128.74	5.97	9.62	0.00	0.00	0.00
TRPN3	0.44	0.44	0.44	0.44	0.44	1.74	14.03	43.19	20.61	36.26	9.34	17.53	6.06	0.00	0.00	0.00
TTEN3	8.42	8.11	11.17	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
TUPY3	8.1	7.76	14.09	-39.67	13.08	10.69	17.15	-9.54	12.25	28.85	13.9	42.61	7.84	0.00	0.00	0.00
TXRX3	-5.44	0.00	-6.65	-15.46	0.00	0.00	0.00	0.00	-0.06	-0.27	-0.28	-0.21	-1.1	0.00	0.00	0.00
TXRX4	-2.1	12.29	-1.59	-2.33	0.00	0.00	1.02	-1.13	-0.05	-0.24	-0.32	0.00	-1.04	0.00	0.00	0.00
UCAS3	10.11	5.09	10.73	18.94	18.56	55.1	-26.41	-6.92	8.67	-65.59	27.57	0.00	0.00	0.00	0.00	0.00
UGPA3	19.19	7.81	19.06	29.63	75.91	25.73	26.51	24.39	22.37	23.06	36.53	36.31	20.53	0.00	0.00	0.00
UNIP3	9.23	6.42	4.91	12.56	17.98	5.93	4.6	2.23	5.6	6.75	1.39	9.78	81.21	0.00	0.00	0.00
UNIP5	10.34	7.34	4.9	12.53	18.06	5.93	4.51	2.38	5.23	7.52	1.55	11.06	122.75	0.00	0.00	0.00
UNIP6	9.67	6.89	4.91	13.15	17.94	5.83	4.38	2.04	4.12	5.99	1.23	8.51	54.77	0.00	0.00	0.00
USIM3	-23.6	5.75	2	29.22	57.99	19.73	58.24	-3.09	-1.26	96.25	-88.73	-19.61	74.6	0.00	0.00	0.00
USIM5	-23.53	5.55	2.09	27.21	55.88	15.9	48.94	-1.53	-0.49	39.52	-101.68	-18.37	44.15	0.00	0.00	0.00
USIM6	-56.35	10.46	2.62	21.62	55.53	0.00	48.94	0.00	0.00	0.00	-79.64	-17.22	43.84	0.00	0.00	0.00
VALE3	6.7	4.43	3.3	17.3	-42.22	10.5	11.98	10.12	-1.55	123.17	1664.73	22.93	5.6	0.00	0.00	0.00
VAMO3	15.66	19.38	29.09	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VBBR3	12.52	11.79	9.98	6.6	15.84	9.38	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VITT3	10.61	12.4	19.26	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VIVA3	17.2	14.68	20.13	47.44	23.63	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VIVR3	-1.28	-7.21	-3.1	-0.69	-0.54	-0.01	-0.05	-0.02	0.00	0.00	0.00	-0.39	-4.97	0.00	0.00	0.00
VIVT3	16.92	15.74	13.06	16.48	16.58	7.82	15.12	15.07	11.16	9.1	12.12	11.03	5.55	0.00	0.00	0.00
VIVT4	15.48	0.00	0.00	0.00	19.6	8.76	17.84	18.25	11.74	10.68	13.58	12.38	6.03	0.00	0.00	0.00
VLID3	6.7	31.47	11.83	-3.3	22.28	12.82	47.69	18.07	17.81	21.46	19.57	25.07	11.04	0.00	0.00	0.00
VSPT3	-0.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VSPT4	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VSTE3	8.27	32.09	-0.12	-0.17	-4.55	13.37	27.04	-17.94	-37.59	-291.5	0.00	0.00	41.5	26.42	0.00	0.00
VULC3	9.09	6.53	7.16	62.16	15.8	11.47	35.69	49.83	-6.83	-3.05	-1.44	-1.02	-1.72	0.00	0.00	0.00
VVAR11	-30.01	0.00	0.00	0.00	0.00	0.00	162.03	-146.08	301.48	30.78	7	0.00	0.00	0.00	0.00	0.00
VVAR4	-196.92	0.00	0.00	0.00	0.00	0.00	55.62	-48.24	96.81	0.00	0.00	0.00	0.00	0.00	0.00	0.00
VVEO3	23.2	17.77	13.66	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WEGE3	27.41	38.41	38.6	67.9	45.05	27.51	34.08	22.39	20.88	25.87	22.94	25.56	19.87	0.00	0.00	0.00
WEST3	-2.8	-2.42	-6.35	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WHRL3	17.9	17.24	10.29	15.44	8.44	35.78	16.03	14.51	13.62	8.48	7.19	7.86	12.41	0.00	0.00	0.00
WHRL4	17.82	18.03	12.26	17.21	8.68	42.44	17.2	15.38	12.31	8.37	7.69	8.2	14.31	0.00	0.00	0.00
WIZC3	8.24	8.32	6.77	6.6	10.56	6.31	11.76	14.84	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WLMM3	8.35	6.67	11.71	14.73	9.49	11.33	-40.37	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
WLMM4	11.24	7.05	13.72	21.22	9.71	11.48	-28.64	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
YDUQ3	53.44	-53.97	40.18	103.64	22.72	11.71	24.57	13.61	10.03	19.55	8.17	31.35	21.09	0.00	0.00	0.00
ZAMP3	-16.8	-26.9	-6.01	-6.74	82.15	35.9	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
\.


--
-- Data for Name: pvp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pvp (ticker, "2023", "2022", "2021", "2020", "2019", "2018", "2017", "2016", "2015", "2014", "2013", "2012", "2011", "2010", "2009", "2008") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password) FROM stdin;
1	Teste Testando	teste@example.com	$2a$10$svR5EE4NlwDJUddAgekau.5XeGRP1lTHpHBh1FPpAY4KLrKrkvA4O
2	Jonas Greco Onias	jonas@example.com	$2a$10$0qvynjQiKvAh62J3/B5Q6uo9k4fP.gAZVv52dnSam7Kxw1xUHQGFS
3	Maria Mole	maria@example.com	$2a$10$88LamVDHsFhFEpRO/SOPRuGXHHQ8YjSnenFKX0x1LV28m81IBrAkG
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: acoes acoes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acoes
    ADD CONSTRAINT acoes_pkey PRIMARY KEY (ticker);


--
-- Name: acoes acoes_ticker_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acoes
    ADD CONSTRAINT acoes_ticker_key UNIQUE (ticker);


--
-- Name: dy dy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dy
    ADD CONSTRAINT dy_pkey PRIMARY KEY (ticker);


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

