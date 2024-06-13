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
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password) FROM stdin;
1	Teste Testando	teste@example.com	$2a$10$svR5EE4NlwDJUddAgekau.5XeGRP1lTHpHBh1FPpAY4KLrKrkvA4O
2	Jonas Greco Onias	jonas@example.com	$2a$10$0qvynjQiKvAh62J3/B5Q6uo9k4fP.gAZVv52dnSam7Kxw1xUHQGFS
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


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

