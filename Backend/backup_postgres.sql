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
134	ABCB4	Banco ABC Brasil SA	Financeiro e Outros	Intermediários Financeiros	Bancos	4322843056.00
2	AALR3	Allianca Saude e Participacoes SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	1117867111
3	AMBP3	Ambipar Participacoes e Empreendmnts SA	Utilidade Pública	Água e Saneamento	Água e Saneamento	1620625688
4	ABEV3	Ambev SA	Consumo não Cíclico	Bebidas	Cervejas e Refrigerantes	204957371025
5	ADHM3	Advanced Digital Health Medicina Preventiva	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	25439770
135	AERI3	Aeris ndstr  Cmrc d qpmnts pr Grc d nrg	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	635957168.00
136	AESB3	Aes Brasil Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	6115581480.00
137	AFLT3	Afluente Transmissao de Energia Eltrc SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	485752190.00
138	AGRO3	BrasilAgro Braziln Agrclturl Real Est Co	Consumo não Cíclico	Agropecuária	Agricultura	2520878550.00
139	AGXY3	Agrogalaxy Participacoes SA	Consumo não Cíclico	Agropecuária	Agricultura	666217457.00
140	AHEB3	Sao Paulo Turismo SA	Consumo Cíclico	Viagens e Lazer	Produção de Eventos e Shows	136782554.00
141	AHEB5	Sao Paulo Turismo SA Preference Shares Class A	Consumo Cíclico	Viagens e Lazer	Produção de Eventos e Shows	136782554.00
142	AHEB6	Sao Paulo Turismo SA Preference Shares Class B	Consumo Cíclico	Viagens e Lazer	Produção de Eventos e Shows	136782554.00
143	ALLD3	Allied Tecnologia SA	Consumo Cíclico	Comércio	Eletrodomésticos	545340405.00
144	ALOS3	Allos SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	13275160705.00
145	ALPA3	Alpargatas SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	5870899594.00
146	ALPA4	Alpargatas SA Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	5870899594.00
147	ALPK3	Allpark Empreendimentos Prtcpcs Srvcs SA	Bens Industriais	Serviços	Serviços Diversos	907024192.00
148	ALSC3	Aliansce Shopping Centers	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	5694242308.00
149	ALUP11	Alupar Investimento SA Unit	Utilidade Pública	Energia Elétrica	Energia Elétrica	8606381960.00
150	ALUP3	Alupar Investimento SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	8606381960.00
151	ALUP4	Alupar Investimento SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	8606381960.00
152	AMAR3	Marisa Lojas SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	170735769.00
153	AMER3	Americanas SA - Em Recuperacao Judicial	Consumo Cíclico	Comércio	Produtos Diversos	749099487.00
154	ANDG3B	Andrade Gutierrez Concessoes	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	1651867986.00
155	ANDG4B	Andrade Gutierrez Concessoes	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	1651867986.00
156	ANIM3	Anima Holding SA	Consumo Cíclico	Diversos	Serviços Educacionais	1078329709.00
157	APER3	Alper Consultoria e Corretora deSegursSA	Financeiro e Outros	Previdência e Seguros	Corretoras de Seguros	377696409.00
158	APTI3	Siderurgica JL Aliperti SA	Consumo não Cíclico	Agropecuária	Agricultura	44442750.00
159	APTI4	Siderurgica JL Aliperti SA Preference Shares	Consumo não Cíclico	Agropecuária	Agricultura	44442750.00
160	ARML3	Armac Locacao Logistica e Servicos SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	4342501315.00
161	ARZZ3	Arezzo Industria E Comercio SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	6468450926.00
162	ASAI3	Sendas Distribuidora SA	Consumo não Cíclico	Comércio e Distribuição	Alimentos	15098232090.00
163	ATMP3	ATMA Participacoes SA - em Recuprc Jdcl	Bens Industriais	Serviços	Serviços Diversos	85473139.00
164	ATOM3	ATOM Empreendimentos e Participacoes SA	Financeiro e Outros	Outros	Outros	46419551.00
165	AURA33	Aura Minerals Bdr	Materiais Básicos	Mineração	Minerais Metálicos	2274370089.00
166	AURE3	Auren Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	13480000000.00
167	AVLL3	Alphaville SA	Consumo Cíclico	Construção Civil	Incorporações	117322373.00
168	AZEV3	Azevedo & Travassos SA	Bens Industriais	Construção e Engenharia	Construção Pesada	170478110.00
169	AZEV4	Azevedo & Travassos SA Preference Shares	Bens Industriais	Construção e Engenharia	Construção Pesada	170478110.00
170	AZUL4	Azul SA	Bens Industriais	Transporte	Transporte Aéreo	4528567750.00
171	B3SA3	B3 SA Brasil Bolsa Balcao	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	672676
172	BAHI3	Bahema Educacao SA	Consumo Cíclico	Diversos	Serviços Educacionais	237515238.00
173	BALM3	Baumer SA	Saúde	Equipamentos	Equipamentos	98588000.00
174	BALM4	Baumer SA Preference Shares	Saúde	Equipamentos	Equipamentos	98588000.00
175	BAUH4	Excelsior Alimentos SA Preference Shares	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	370255540.00
176	BAZA3	Banco da Amazonia SA	Financeiro e Outros	Intermediários Financeiros	Bancos	4427485719.00
177	BBAS3	Banco do Brasil SA	Financeiro e Outros	Intermediários Financeiros	Bancos	139345229683.00
178	BBDC3	Banco Bradesco SA	Financeiro e Outros	Intermediários Financeiros	Bancos	141685468692.00
179	BBDC4	Banco Bradesco SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	141685468692.00
180	BBML3	BBM Logistica SA	Bens Industriais	Serviços	Serviços Diversos	160451699192.00
181	BBSE3	BB Seguridade Participacoes SA	Financeiro e Outros	Previdência e Seguros	Seguradoras	62600000000.00
182	BDLL3	Bardella SA Industrias Mecanicas	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	14510788.00
183	BDLL4	Bardella SA Industrias Mecanicas Preference Shares	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	14510788.00
184	BEEF11	Minerva SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	4627499561.00
185	BEEF3	Minerva SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	4627499561.00
186	BEES3	Banestes SA Banco do Estado Esprt Santo	Financeiro e Outros	Intermediários Financeiros	Bancos	2743944558.00
187	BEES4	Banestes SA Banco do Estado Esprt Santo Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	2743944558.00
188	BFRE11	Brazilian Finance e Real Estate	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	0.00
189	BFRE12	Brazilian Finance e Real Estate	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	0.00
190	BGIP3	Banco do Estado de Sergipe SA	Financeiro e Outros	Intermediários Financeiros	Bancos	414703689.00
191	BGIP4	Banco do Estado de Sergipe SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	414703689.00
192	BHIA3	Grupo Casas Bahia SA	Consumo Cíclico	Comércio	Eletrodomésticos	1093457063.00
193	BIDI11	Banco Inter	Financeiro e Outros	Intermediários Financeiros	Bancos	8991139765.00
194	BIDI3	Banco Inter	Financeiro e Outros	Intermediários Financeiros	Bancos	8991139765.00
195	BIDI4	Banco Inter	Financeiro e Outros	Intermediários Financeiros	Bancos	8991139765.00
196	BIOM3	Biomm SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	417880520.00
197	BLAU3	Blau Farmaceutica SA	Saúde	Medicamentos e Outros Produtos	Medicamentos e Outros Produtos	2816484842.00
198	BLUT3	Blue Tech Solutions	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	14115600.00
199	BLUT4	Blue Tech Solutions	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	14115600.00
200	BMEB3	Banco Mercantil do Brasil SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1361157991.00
201	BMEB4	Banco Mercantil do Brasil SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	1361157991.00
202	BMGB4	Banco BMG Sa	Financeiro e Outros	Intermediários Financeiros	Bancos	1341434545.00
203	BMIN3	Banco Mercantil de Investimentos SA	Financeiro e Outros	Intermediários Financeiros	Bancos	109787350.00
204	BMIN4	Banco Mercantil de Investimentos SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	109787350.00
205	BMKS3	Bicicletas Monark SA	Consumo Cíclico	Viagens e Lazer	Bicicletas	140108475.00
206	BMOB3	Bemobi Mobile Tech SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	1070145412.00
207	BNBR3	Banco do Nordeste do Brasil SA	Financeiro e Outros	Intermediários Financeiros	Bancos	7954811834.00
208	BOAS3	Boa Vista Serviços SA	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	4212250618.00
209	BOBR3	Bombril SA	Consumo não Cíclico	Produtos de Uso Pessoal e de Limpeza	Produtos de Limpeza	195402195.00
210	BOBR4	Bombril SA Preference Shares	Consumo não Cíclico	Produtos de Uso Pessoal e de Limpeza	Produtos de Limpeza	195402195.00
211	BPAC11	Banco BTG Pactual SA Unit	Financeiro e Outros	Intermediários Financeiros	Bancos	114102355953.00
212	BPAC3	Banco BTG Pactual SA	Financeiro e Outros	Intermediários Financeiros	Bancos	114102355953.00
213	BPAC5	Banco BTG Pactual SA Preference Shares Class A	Financeiro e Outros	Intermediários Financeiros	Bancos	114102355953.00
214	BPAN4	Banco Pan SA	Financeiro e Outros	Intermediários Financeiros	Bancos	9154302744.00
215	BPAR3	Banco do Estado do Para SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1733606633.00
216	BPAT33	Banco Patagonia	Financeiro e Outros	Intermediários Financeiros	Bancos	1533769021.00
217	BPHA3	Brasil Pharma	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	70110299.00
218	BRAP3	Bradespar SA	Materiais Básicos	Mineração	Minerais Metálicos	8981317856.00
219	BRAP4	Bradespar SA Preference Shares	Materiais Básicos	Mineração	Minerais Metálicos	8981317856.00
220	BRBI11	BR Advisory Partners Participacoes SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1228449737.00
221	BRBI3	BR Advisory Partners Participacoes SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1228449737.00
222	BRBI4	BR Advisory Partners Participacoes SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1228449737.00
223	BRFS3	BRF SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	18843700355.00
224	BRGE11	Consorcio Alfa de Administracao SA Preference Shares Series E	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
225	BRGE12	Consorcio Alfa de Administracao SA Preference Shares Series F	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
226	BRGE3	Consorcio Alfa de Administracao SA	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
227	BRGE5	Consorcio Alfa de Administracao SA Preference Shares Series A	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
228	BRGE6	Consorcio Alfa De Administracao Series B Pref Shs	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
229	BRGE7	Consorcio Alfa De Administracao Series C Pref Shs	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
230	BRGE8	Consorcio Alfa De Administracao Series D Pref Shs	Financeiro e Outros	Previdência e Seguros	Seguradoras	810799956.00
306	CEPE6	CELPE	Utilidade Pública	Energia Elétrica	Energia Elétrica	8662392210.00
261	BRIN3	BR Insurance	Financeiro e Outros	Previdência e Seguros	Corretoras de Seguros	765840712.00
262	BRIT3	Brisanet Participacoes SA	Comunicações	Telecomunicações	Telecomunicações	1387703290.00
263	BRIV3	Banco Alfa de Investimento SA	Financeiro e Outros	Intermediários Financeiros	Bancos	930538036.00
264	BRIV4	Banco Alfa de Investimento SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	930538036.00
265	BRKM3	Braskem SA	Materiais Básicos	Químicos	Petroquímicos	13615594226.00
266	BRKM5	Braskem SA Preference Shares Series A	Materiais Básicos	Químicos	Petroquímicos	13615594226.00
267	BRKM6	Braskem SA Preference Shares Series B	Materiais Básicos	Químicos	Petroquímicos	13615594226.00
268	BRML3	BR Malls	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	6841542282.00
269	BRPR3	BR Properties	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	60919545.00
270	BRQB3	BRQ Solucoes em Informatica SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	0.00
271	BRSR3	Banco do Estado do Rio Grande do Sul SA	Financeiro e Outros	Intermediários Financeiros	Bancos	4676975482.00
272	BRSR5	Banco do Estado do Rio Grande do Sul A Pref Shs	Financeiro e Outros	Intermediários Financeiros	Bancos	4676975482.00
273	BRSR6	Banco do Estado do Rio Grande do Sul B Pref Shs	Financeiro e Outros	Intermediários Financeiros	Bancos	4676975482.00
274	BSEV3	Biosev	Consumo não Cíclico	Alimentos Processados	Açucar e Alcool	9183864834.00
275	BSLI3	BRB-Banco de Brasilia SA	Financeiro e Outros	Intermediários Financeiros	Bancos	4746762400.00
276	BSLI4	BRB-Banco de Brasilia SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	4746762400.00
277	BTTL4	Embpar Participações SA	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	227961113.00
278	CALI3	Construtora Adolpho Lindenberg SA	Consumo Cíclico	Construção Civil	Incorporações	61023924.00
279	CALI4	Construtora Adolpho Lindenberg SA	Consumo Cíclico	Construção Civil	Incorporações	61023924.00
280	CAMB3	Cambuci Ord Shs	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	422750800.00
281	CAMB4	Cambuci Ord Shs	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	422750800.00
282	CAML3	Camil Alimentos SA	Consumo não Cíclico	Alimentos Processados	Alimentos Diversos	2583000000.00
283	CASH3	Meliuz SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	649203885.00
284	CASN3	Companhia Catarinense d Ags e Smnt CASAN	Utilidade Pública	Água e Saneamento	Água e Saneamento	9343450887.00
285	CASN4	Companhia Catarinense d Ags e Smnt CASAN Preference Shares	Utilidade Pública	Água e Saneamento	Água e Saneamento	9343450887.00
286	CATA3	Companhia Industrial Cataguases	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	14940355.00
287	CATA4	Companhia Industrial Cataguases Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	14940355.00
288	CBAV3	Companhia Brasileira de Aluminio	Materiais Básicos	Mineração	Minerais Metálicos	2502499999.00
289	CBEE3	Ampla Energia e Servicos SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	3603148815.00
290	CCRO3	CCR SA	Bens Industriais	Transporte	Exploração de Rodovias	25209600000.00
291	CCXC3	CCX	Financeiro e Outros	Outros	Outros	1973426.00
292	CEAB3	C&A Modas SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	1781656493.00
293	CEBR3	Companhia Energetica de Brasilia CEB	Utilidade Pública	Energia Elétrica	Energia Elétrica	1096789973.00
294	CEBR5	Companhia Energetica de Brasilia CEB Preference Shares Series A	Utilidade Pública	Energia Elétrica	Energia Elétrica	1096789973.00
295	CEBR6	Companhia Energetica de Brasilia CEB Preference Shares Series B	Utilidade Pública	Energia Elétrica	Energia Elétrica	1096789973.00
296	CEDO3	Companhia de Fc  Tcds Cdr Cchr	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	174419235.00
297	CEDO4	Companhia de Fc  Tcds Cdr Cchr Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	174419235.00
298	CEEB3	Companhia de ltrcdd d std d Bh Clb	Utilidade Pública	Energia Elétrica	Energia Elétrica	12228688374.00
299	CEEB5	Companhia de Eletrecidade do Estado da Bahia COELBA Pref Shs	Utilidade Pública	Energia Elétrica	Energia Elétrica	12228688374.00
300	CEEB6	Companhia de Eletrecidade do Estado da Bahia COELBA Pref Shs	Utilidade Pública	Energia Elétrica	Energia Elétrica	12228688374.00
301	CEED3	Companhia Estadual de Distribuicao	Utilidade Pública	Energia Elétrica	Energia Elétrica	2522243225.00
302	CEED4	Companhia Estadual de Distribuicao Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	2522243225.00
303	CEGR3	Companhia Distribuidora d Gs d RdJnr CEG	Utilidade Pública	Gás	Gás	22931204490.00
304	CEPE3	CELPE	Utilidade Pública	Energia Elétrica	Energia Elétrica	8662392210.00
305	CEPE5	CELPE	Utilidade Pública	Energia Elétrica	Energia Elétrica	8662392210.00
307	CESP3	CESP	Utilidade Pública	Energia Elétrica	Energia Elétrica	8302192834.00
308	CESP5	CESP	Utilidade Pública	Energia Elétrica	Energia Elétrica	8302192834.00
309	CESP6	CESP	Utilidade Pública	Energia Elétrica	Energia Elétrica	8302192834.00
310	CGAS3	Companhia de Gas de Sao Paulo - COMGAS	Utilidade Pública	Gás	Gás	15866689882.00
311	CGAS5	Companhia de Gas de Sao Paulo - COMGAS Preference Shares	Utilidade Pública	Gás	Gás	15866689882.00
312	CGRA3	Grazziotin SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	519340641.00
313	CGRA4	Grazziotin SA Preference Shares	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	519340641.00
314	CIEL3	CIELO SA Instituicao de Pagamento	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	10242392780.00
315	CLSA3	Clear Sale SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	742307937.00
316	CLSC3	Centrais Eletricas d Snt Ctrn S Clsc	Utilidade Pública	Energia Elétrica	Energia Elétrica	2348313899.00
317	CLSC4	Centrais Eletricas d Snt Ctrn S Clsc Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	2348313899.00
318	CMIG3	Energy of Minas Gerais Co	Utilidade Pública	Energia Elétrica	Energia Elétrica	31231497612.00
319	CMIG4	Energy of Minas Gerais Co Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	31231497612.00
320	CMIN3	CSN Mineracao SA	Materiais Básicos	Mineração	Minerais Metálicos	31650405095.00
321	CMSA3	Cims SA	Financeiro e Outros	Outros	Outros	0.00
322	CMSA4	Cims SA Preference Shares	Financeiro e Outros	Outros	Outros	0.00
323	CNSY3	Cinesystem SA	Consumo Cíclico	Mídia	Produção e Difusão de Filmes e Programas	935885084.00
324	COCE3	Companhia Energetica do Ceara	Utilidade Pública	Energia Elétrica	Energia Elétrica	2974901259.00
325	COCE5	Companhia Energetica do Ceara Preference Shares Series A	Utilidade Pública	Energia Elétrica	Energia Elétrica	2974901259.00
326	COCE6	Companhia Energetica do Ceara Preference Shares Series B	Utilidade Pública	Energia Elétrica	Energia Elétrica	2974901259.00
327	COGN3	Cogna Educacao SA	Consumo Cíclico	Diversos	Serviços Educacionais	4897942208.00
328	CORR3	Correa Ribeiro SA Comercio e Industria	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	1278895.00
329	CORR4	Correa Ribeiro SA Comercio e Industria Preference Shares	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	1278895.00
330	CPFE3	CPFL Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	40455653388.00
331	CPLE11	Companhia Paranaense de Energia	Utilidade Pública	Energia Elétrica	Energia Elétrica	26320320655.00
332	CPLE3	Companhia Paranaense de Energia	Utilidade Pública	Energia Elétrica	Energia Elétrica	26320320655.00
333	CPLE5	Companhia Paranaense de Energia Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	26320320655.00
334	CPLE6	Cia Paranaense De Energia Copel Pref Shs	Utilidade Pública	Energia Elétrica	Energia Elétrica	26320320655.00
335	CPRE3	CPFL Energias Renováveis	Utilidade Pública	Energia Elétrica	Energia Elétrica	10824655048.00
336	CREM3	Cremer	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	465122474.00
337	CRFB3	Atacadao SA	Consumo não Cíclico	Comércio e Distribuição	Alimentos	22658469783.00
338	CRIV3	Financeira Alfa SA CFI	Financeiro e Outros	Intermediários Financeiros	Soc. Crédito e Financiamento	580722825.00
339	CRIV4	Financeira Alfa SA CFI Preference Shares	Financeiro e Outros	Intermediários Financeiros	Soc. Crédito e Financiamento	580722825.00
340	CRPG3	Tronox Pigmentos do Brasil SA	Materiais Básicos	Químicos	Químicos Diversos	1217778880.00
341	CRPG5	Tronox Pigmentos do Brasil SA Preference Shares Series A	Materiais Básicos	Químicos	Químicos Diversos	1217778880.00
342	CRPG6	Tronox Pigmentos do Brasil SA Preference Shares Series B	Materiais Básicos	Químicos	Químicos Diversos	1217778880.00
343	CSAB3	Cia Seguros Aliança da Bahia	Financeiro e Outros	Previdência e Seguros	Seguradoras	301440000.00
344	CSAB4	Cia Seguros Aliança da Bahia	Financeiro e Outros	Previdência e Seguros	Seguradoras	301440000.00
345	CSAN3	Cosan SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	32871204147.00
346	CSED3	Cruzeiro do Sul Educacional SA	Consumo Cíclico	Diversos	Serviços Educacionais	1523252321.00
347	CSMG3	Companhia de Saneamento d Mns Grs CPS MG	Utilidade Pública	Água e Saneamento	Água e Saneamento	6897790672.00
348	CSNA3	Companhia Siderurgica Nacional SA	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	16841393127.00
349	CSRN3	Companhia Enrgtca do Ro Grnd do Nrt Csrn	Utilidade Pública	Energia Elétrica	Energia Elétrica	4446580346.00
350	CSRN5	Companhia Enrgtca do Ro Grnd do Nrt Csrn Preference Shares Series A	Utilidade Pública	Energia Elétrica	Energia Elétrica	4446580346.00
351	CSRN6	Companhia Enrgtca do Ro Grnd do Nrt Csrn Preference Shares Series B	Utilidade Pública	Energia Elétrica	Energia Elétrica	4446580346.00
352	CSUD3	CSU Digital SA	Bens Industriais	Serviços	Serviços Diversos	714362000.00
353	CTCA3	CTC Centro de Tecnologia Canavieira SA	Consumo não Cíclico	Agropecuária	Agricultura	0.00
354	CTKA3	Karsten SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	106706294.00
355	CTKA4	Karsten SA Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	106706294.00
356	CTNM3	Companhia de Tecidos Nrt d Mns COTEMINAS	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	146849179.00
357	CTNM4	Companhia de Tecidos Nrt d Mns COTEMINAS Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	146849179.00
358	CTSA3	Companhia Tecidos Santanense	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	62605757.00
359	CTSA4	Companhia Tecidos Santanense Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	62605757.00
360	CTSA8	Companhia Tecidos Santanense	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	62605757.00
361	CURY3	Cury Construtora E Incorporadora SA	Consumo Cíclico	Construção Civil	Incorporações	4769238938.00
362	CVCB3	CVC Brasil Operadora e Agencia d Vgns SA	Consumo Cíclico	Viagens e Lazer	Viagens e Turismo	1398329021.00
363	CXSE3	Caixa Seguridade Participacoes SA	Financeiro e Outros	Previdência e Seguros	Corretoras de Seguros	33540000000.00
364	CYRE3	Cyrela Brazil Realty SA Emprdts e Prtpcs	Consumo Cíclico	Construção Civil	Incorporações	8062812256.00
365	DASA3	Diagnosticos da America SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	7896870364.00
366	DESK3	Desktop SA	Comunicações	Telecomunicações	Telecomunicações	1824650411.00
367	DEXP3	Dexxos Participacoes SA	Materiais Básicos	Químicos	Petroquímicos	930800583.00
368	DEXP4	Dexxos Participacoes SA Preference Shares	Materiais Básicos	Químicos	Petroquímicos	930800583.00
369	DIRR3	Direcional Engenharia SA	Consumo Cíclico	Construção Civil	Incorporações	3348550000.00
370	DMMO11	Dommo Energia	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	949254731
371	DMMO3	Dommo Energia	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	949254731
372	DMVF3	D1000 Varejo Farma Participacoes SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	222652505
373	DOHL3	Dohler SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	500927417
374	DOHL4	Dohler SA Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	500927417
375	DOTZ3	Dotz SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	138671770
376	DTCY3	Dtcom Direct to Company S/A	Bens Industriais	Serviços	Serviços Diversos	82254212
377	DTCY4	Dtcom Direct to Company S/A Preference Shares	Bens Industriais	Serviços	Serviços Diversos	82254212
378	DXCO3	Dexco SA	Materiais Básicos	Madeira e Papel	Madeira	5784992034
379	EALT3	Electro Aco Altona SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	177232500
380	EALT4	Electro Aco Altona SA Preference Shares	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	177232500
381	ECOR3	Ecorodovias Infraestrutura e Logistca SA	Bens Industriais	Transporte	Exploração de Rodovias	5514967054
382	ECPR3	Encorpar	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	171908947
383	ECPR4	Encorpar	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	171908947
384	EEEL3	CEEE-GT	Utilidade Pública	Energia Elétrica	Energia Elétrica	2840511500
385	EEEL4	CEEE-GT	Utilidade Pública	Energia Elétrica	Energia Elétrica	2840511500
386	EGIE3	Engie Brasil Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	33453037340
387	EKTR3	Elektro Redes SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	6772119466
388	EKTR4	Elektro Redes SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	6772119466
389	ELEK3	Elekeiroz	Materiais Básicos	Químicos	Petroquímicos	905051916
390	ELEK4	Elekeiroz	Materiais Básicos	Químicos	Petroquímicos	905051916
391	ELET3	Brazilian Electric Power Co	Utilidade Pública	Energia Elétrica	Energia Elétrica	89193411461
392	ELET5	Brazilian Electric Power Co Preference Shares Series A	Utilidade Pública	Energia Elétrica	Energia Elétrica	89193411461
393	ELET6	Brazilian Electric Power Co Preference Shares Series B	Utilidade Pública	Energia Elétrica	Energia Elétrica	89193411461
394	ELMD3	Eletromidia SA	Comunicações	Mídia	Publicidade	2238340210
395	ELPL3	Eletropaulo	Utilidade Pública	Energia Elétrica	Energia Elétrica	1640949623
396	EMAE3	EMAE Empresa Metropltn de Agus e Enrg SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	1685042256
397	EMAE4	EMAE Empresa Metropltn de Agus e Enrg SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	1685042256
398	EMBR3	Embraer SA	Bens Industriais	Material de Transporte	Material Aeronáutico e de Defesa	13868910274
399	ENAT3	Enauta Participacoes SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	4367207449
400	ENBR3	EDP Brasil	Utilidade Pública	Energia Elétrica	Energia Elétrica	13994459653
401	ENEV3	Eneva SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	18729645508
402	ENGI11	Energisa SA Unit	Utilidade Pública	Energia Elétrica	Energia Elétrica	19632325207
403	ENGI3	Energisa SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	19632325207
404	ENGI4	Energisa SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	19632325207
405	ENJU3	Enjoei SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	328261553
406	ENMA3B	CEMAR	Utilidade Pública	Energia Elétrica	Energia Elétrica	0
407	ENMA6B	CEMAR	Utilidade Pública	Energia Elétrica	Energia Elétrica	0
408	ENMT3	Energisa Mato Grosso Distrbdr de Enrg SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	13900711520
409	ENMT4	Energisa Mato Grosso Distrbdr de Enrg SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	13900711520
410	EPAR3	Embpar Participacoes SA	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	227663902
411	EQPA3	Equatorial Para Dist De Energia Ord Shs	Utilidade Pública	Energia Elétrica	Energia Elétrica	14141191051
412	EQPA5	Equatorial Para Distribuidra de Enrga SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	14141191051
413	EQPA6	Equatorial Para Dist Energia Prf Shs B	Utilidade Pública	Energia Elétrica	Energia Elétrica	14141191051
414	EQPA7	Equatorial Para Dist Energia Prf Shs C	Utilidade Pública	Energia Elétrica	Energia Elétrica	14141191051.00
415	EQTL3	Equatorial Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	38346223921.00
416	ESPA3	MPM Corporeos SA	Consumo não Cíclico	Produtos de Uso Pessoal e de Limpeza	Produtos de Uso Pessoal	459007294.00
417	ESTR3	Manufatura de Brinquedos Estrela SA	Consumo Cíclico	Viagens e Lazer	Brinquedos e Jogos	64668000.00
418	ESTR4	Manufatura de Brinquedos Estrela SA Preference Shares	Consumo Cíclico	Viagens e Lazer	Brinquedos e Jogos	64668000.00
419	ETER3	Eternit SA em Recuperacao Judicial	Bens Industriais	Construção e Engenharia	Produtos para Construção	543633860.00
420	EUCA3	Eucatex SA Industria e Comercio	Materiais Básicos	Madeira e Papel	Madeira	1236650644.00
421	EUCA4	Eucatex SA Industria e Comercio Preference Shares	Materiais Básicos	Madeira e Papel	Madeira	1236650644.00
422	EVEN3	Even Construtora e Incorporadora S/A	Consumo Cíclico	Construção Civil	Incorporações	1402000000.00
423	EZTC3	EZ TEC Empreendimentos e Participaces SA	Consumo Cíclico	Construção Civil	Incorporações	3668419110.00
424	FBMC3	FIBAM	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	904254.00
425	FBMC4	FIBAM	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	904254.00
426	FESA3	Companhia de Ferro Ligas da Bah Frbs	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	4686259200.00
427	FESA4	Companhia de Ferro Ligas da Bah Frbs Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	4686259200.00
428	FHER3	Fertilizantes Heringer SA	Materiais Básicos	Químicos	Fertilizantes e Defensivos	407161067.00
429	FIBR3	Fibria Celulose	Materiais Básicos	Madeira e Papel	Papel e Celulose	36712556310.00
430	FIEI3	FICA Empreendimentos Imobiliarios SA	Consumo Cíclico	Construção Civil	Incorporações	34370351.00
431	FIGE3	Investimentos Bemge SA	Financeiro e Outros	Outros	Outros	9497567.00
432	FIGE4	Investimentos Bemge SA Preference Shares	Financeiro e Outros	Outros	Outros	9497567.00
433	FIQE3	Unifique Telecomunicacoes S/A	Comunicações	Telecomunicações	Telecomunicações	1285276112.00
434	FLEX3	Flex Relacionamentos Inteligentes	Bens Industriais	Serviços	Serviços Diversos	0
435	FLRY3	Fleury SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	9066955301.00
436	FNCN3	Finansinos SA  credito financ e invest	Financeiro e Outros	Intermediários Financeiros	Soc. Crédito e Financiamento	13021337.00
437	FRAS3	Fras Le SA	Bens Industriais	Material de Transporte	Material Rodoviário	4341862795.00
438	FRIO3	Metalfrio Solutions SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	209444454.00
439	FRTA3	Pomi Frutas SA - em Recuperacao Judicial	Consumo não Cíclico	Agropecuária	Agricultura	4476861.00
440	FTRT3B	Futuretel	Financeiro e Outros	Outros	Outros	0.00
441	G2DI33	G2D Investments Ltd	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	219757701.00
442	GBIO33	Biotoscana	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	1108871982.00
443	GEPA3	Rio Paranapanema Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	2433545703.00
444	GEPA4	Rio Paranapanema Energia SA Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	2433545703.00
445	GETT11	GETNET	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	0
446	GETT3	GETNET	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	0
447	GETT4	GETNET	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	0
448	GFSA3	Gafisa SA	Consumo Cíclico	Construção Civil	Incorporações	342870170.00
449	GGBR3	Gerdau SA	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	38855851083.00
450	GGBR4	Gerdau SA Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	38855851083.00
451	GGPS3	GPS Participacoes e Empreendimentos SA	Bens Industriais	Transporte	Logística	11520998376.00
452	GMAT3	Grupo Mateus SA	Consumo não Cíclico	Comércio e Distribuição	Alimentos	14095627984.00
453	GNDI3	Notre Dame Intermedica	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	41526443086.00
454	GOAU3	Metalurgica Gerdau SA	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	11459222148.00
455	GOAU4	Metalurgica Gerdau SA Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	11459222148.00
456	GOLL4	Gol Linhas Aereas Inteligentes SA Preference Shares	Bens Industriais	Transporte	Transporte Aéreo	3450408569.00
457	GPAR3	Companhia Celg de Participacoes Celgpar	Utilidade Pública	Energia Elétrica	Energia Elétrica	3983825100.00
458	GPIV33	GP Investments Limited	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	127575390.00
459	GRAO3	Humberg Agribrasil Cmrc E Exp De Grs Sa	Consumo não Cíclico	Agropecuária	Agricultura	0.00
460	GRND3	Grendene SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	6125666400.00
461	GSHP3	General Shopping e Outlets do Brasil SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	29895920.00
462	GUAR3	Guararapes Confeccoes SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	2780544000.00
463	GUAR4	Guararapes Confeccoes SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	2780544000.00
464	HAGA3	Haga SA Industria e Comercio	Bens Industriais	Construção e Engenharia	Produtos para Construção	21102667.00
465	HAGA4	Haga SA Industria e Comercio Preference Shares	Bens Industriais	Construção e Engenharia	Produtos para Construção	21102667.00
466	HAPV3	Hapvida Participacoes e Investimentos SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	32721270561.00
467	HBOR3	Helbor Empreendimentos SA	Consumo Cíclico	Construção Civil	Incorporações	368090448.00
468	HBRE3	HBR Realty Empreendimentos Imobiliars SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	515944905.00
469	HBSA3	Hidrovias do Brasil SA	Bens Industriais	Transporte	Transporte Hidroviário	2904661696.00
470	HBTS5	Companhia Habitasul de Participacoes Preference Shares	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	474951724.00
471	HETA3	Hercules SA - Fabrica de Talheres	Consumo Cíclico	Utilidades Domésticas	Utensílios Domésticos	18532186.00
472	HETA4	Hercules SA - Fabrica de Talheres Preference Shares	Consumo Cíclico	Utilidades Domésticas	Utensílios Domésticos	18532186.00
473	HGTX3	CIA Hering	Consumo Cíclico	Tecidos. Vestuário e Calçados	Vestuário	6095022638.00
474	HOOT3	Hoteis Othon SA -em Recuperacao Judicial	Consumo Cíclico	Hoteis e Restaurantes	Hotelaria	22104583.00
475	HOOT4	Hoteis Othon SA -em Recuperacao Judicial Preference Shares	Consumo Cíclico	Hoteis e Restaurantes	Hotelaria	22104583.00
476	HYPE3	Hypera SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	20738197745.00
477	IDVL3	Banco Indusval	Financeiro e Outros	Intermediários Financeiros	Bancos	224007574.00
478	IDVL4	Banco Indusval	Financeiro e Outros	Intermediários Financeiros	Bancos	224007574.00
479	IFCM3	Infracommerce CXaaS SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	557763139.00
480	IGBR3	IGB Eletrônica	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	220074791.00
481	IGSN3	Igua Saneamento SA	Utilidade Pública	Água e Saneamento	Água e Saneamento	0.00
482	IGTA3	Iguatemi Empresa de Shopping Centers	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	5758073079.00
601	PATI3	Panatlantica SA	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	698139845.00
483	IGTI11	Iguatemi SA Unit	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	5538366359.00
484	IGTI3	Iguatemi SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	5538366359.00
485	IGTI4	Iguatemi SA Preference Shares	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	5538366359.00
486	INEP3	Inepr SA Indstr e Constrs em Rcprco Jdcl	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	167401753.00
487	INEP4	Inepr SA Indstr e Constrs em Rcprco Jdcl Preference Shares	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	167401753.00
488	INNT3	Inter Construtora e Incorporadora SA	Consumo Cíclico	Construção Civil	Incorporações	0.00
489	INTB3	Intelbras SA IndustrdTlcmnccEltrncBrslr	Tecnologia da Informação	Computadores e Equipamentos	Computadores e Equipamentos	6398244978.00
490	IRBR3	IRB-Brasil Resseguros SA	Financeiro e Outros	Previdência e Seguros	Seguradoras	3532373735.00
491	ITEC3	Itautec	Tecnologia da Informação	Computadores e Equipamentos	Computadores e Equipamentos	443994659.00
492	ITSA3	Itausa SA	Financeiro e Outros	Intermediários Financeiros	Bancos	90944558848.00
493	ITSA4	Itausa SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	90944558848.00
494	ITUB3	Itau Unibanco Holding SA	Financeiro e Outros	Intermediários Financeiros	Bancos	263435402597.00
495	ITUB4	Itau Unibanco Holding SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	263435402597.00
496	JALL3	Jalles Machado SA	Consumo não Cíclico	Alimentos Processados	Açucar e Alcool	2570999588.00
497	JBSS3	JBS SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	47600777300.00
498	JFEN3	Joao Fortes Engenharia S.A.	Consumo Cíclico	Construção Civil	Incorporações	44606418.00
499	JHSF3	JHS F Participacoes SA	Consumo Cíclico	Construção Civil	Incorporações	3131704574.00
500	JOPA3	Josapar Joaquim Oliveira SA Prtcpcs	Consumo não Cíclico	Alimentos Processados	Alimentos Diversos	223911091.00
501	JOPA4	Josapar Joaquim Oliveira SA Prtcpcs Preference Shares	Consumo não Cíclico	Alimentos Processados	Alimentos Diversos	223911091.00
502	JSLG3	JSL SA	Bens Industriais	Transporte	Transporte Rodoviário	2563558148.00
503	KEPL3	Kepler Weber SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	1894250170.00
504	KLBN11	Klabin SA Unit	Materiais Básicos	Madeira e Papel	Papel e Celulose	25729948822.00
505	KLBN3	Klabin SA	Materiais Básicos	Madeira e Papel	Papel e Celulose	25729948822.00
506	KLBN4	Klabin SA Preference Shares	Materiais Básicos	Madeira e Papel	Papel e Celulose	25729948822.00
507	KRSA3	Kora Saude Participacoes SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	696013260.00
508	LAME3	Lojas Americanas	Consumo Cíclico	Comércio	Produtos Diversos	12391135397.00
509	LAME4	Lojas Americanas	Consumo Cíclico	Comércio	Produtos Diversos	12391135397.00
510	LAND3	Terra Santa Propriedades Agricolas SA	Consumo não Cíclico	Agropecuária	Agricultura	1617575231.00
511	LAVV3	Lavvi Empreendimentos Imobiliarios S/A	Consumo Cíclico	Construção Civil	Incorporações	1434651991.00
512	LCAM3	Locamerica	Consumo Cíclico	Diversos	Aluguel de carros	12285815276.00
513	LEVE3	Mahle Metal Leve SA	Consumo Cíclico	Automóveis e Motocicletas	Automóveis e Motocicletas	4216618290.00
514	LHER3	Lojas Hering	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	0.00
515	LHER4	Lojas Hering	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	0.00
516	LIGT3	Light SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	2052779835.00
517	LINX3	Linx	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	7083895104.00
518	LIPR3	Eletrobras Participacoes S/A	Utilidade Pública	Energia Elétrica	Energia Elétrica	824954017.00
519	LJQQ3	Lojas Quero-Quero SA	Consumo Cíclico	Comércio	Produtos Diversos	872772654.00
520	LOGG3	Log Commercial Prprts  Prtcpcs S	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	2448754921.00
521	LOGN3	Log-in Logistica Intermodal SA	Bens Industriais	Transporte	Transporte Hidroviário	4587470351.00
522	LPSB3	LPS Brasil Consultoria de Imoveis SA	Financeiro e Outros	Exploração de Imóveis	Intermediação Imobiliária	293633716.00
523	LREN3	Lojas Renner SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	12945770786.00
524	LTEL3B	Litel Participacoes S/A	Materiais Básicos	Mineração	Minerais Metálicos	18664056854.00
525	LUPA3	Lupatch S/A Em Rcprco Jdcl Em Rcprc Jdcl	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Equipamentos e Serviços	93530728.00
526	LUXM3	Trevisa Investimentos SA	Bens Industriais	Transporte	Transporte Hidroviário	202048560.00
527	LUXM4	Trevisa Investimentos SA Preference Shares	Bens Industriais	Transporte	Transporte Hidroviário	202048560.00
528	LVTC3	Livetech da Bahia Industria e Cmrc SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	278697802.00
529	LWSA3	LocaWeb Servicos de Internet SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	4057153916.00
530	MAGG3	Magnesita Refratários	Materiais Básicos	Materiais Diversos	Materiais Diversos	2972404571.00
531	MAPT3	Cemepe Investimentos SA	Financeiro e Outros	Outros	Outros	18765213.00
532	MAPT4	Cemepe Investimentos SA Preference Shares	Financeiro e Outros	Outros	Outros	18765213.00
533	MATD3	Hospital Mater Dei Sa	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	2871296956.00
534	MBLY3	Mobly SA	Consumo Cíclico	Comércio	Produtos Diversos	425959616.00
535	MDIA3	M Dias Brnc S ndstr  Cmrc d lmnts	Consumo não Cíclico	Alimentos Processados	Alimentos Diversos	11678550000.00
536	MDNE3	Moura Dubeux Engenharia SA	Consumo Cíclico	Construção Civil	Incorporações	914473969.00
537	MEAL3	International Meal Company Alimentcao SA	Consumo Cíclico	Hoteis e Restaurantes	Restaurante e Similares	504010373.00
538	MEGA3	Serena Energia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	5797621476.00
539	MELK3	Melnick Desenvolvimento Imobiliario SA	Consumo Cíclico	Construção Civil	Incorporações	829202751.00
540	MERC3	Creditq Fncr SA - Crdt Fncmnt e Invstmnt	Financeiro e Outros	Intermediários Financeiros	Soc. Crédito e Financiamento	210356798.00
541	MERC4	Creditq Fncr SA - Crdt Fncmnt e Invstmnt Preference Shares	Financeiro e Outros	Intermediários Financeiros	Soc. Crédito e Financiamento	210356798.00
542	MGEL3	Mangels Industrial SA	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	101565881.00
543	MGEL4	Mangels Industrial SA Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	101565881.00
544	MGLU3	Magazine Luiza SA	Consumo Cíclico	Comércio	Eletrodomésticos	12485514669.00
545	MILS3	Mills Locacao Servicos E Logistica SA	Bens Industriais	Serviços	Serviços Diversos	2672451088.00
546	MLAS3	Multilaser Industrial SA	Tecnologia da Informação	Computadores e Equipamentos	Computadores e Equipamentos	1583640704.00
547	MMAQ3	Minasmaquinas SA	Bens Industriais	Comércio	Material de Transporte	1115195.00
548	MMAQ4	Minasmaquinas SA Preference Shares	Bens Industriais	Comércio	Material de Transporte	1115195.00
549	MMXM3	MMX Mineração e Metálicos	Materiais Básicos	Mineração	Minerais Metálicos	90834562.00
550	MNDL3	Mundial SA Produtos de Consumo	Consumo Cíclico	Tecidos. Vestuário e Calçados	Acessórios	105510260.00
551	MNPR3	Minupar Participacoes SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	124251750.00
552	MOAR3	Monteiro Aranha SA	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	4888114667.00
553	MODL11	Banco Modal SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1985844000.00
554	MODL3	Banco Modal SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1985844000.00
555	MODL4	Banco Modal SA	Financeiro e Outros	Intermediários Financeiros	Bancos	1985844000.00
556	MOSI3	Mosaico Tecnologia ao Consumidor SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	1043149227.00
557	MOVI3	Movida Participacoes SA	Consumo Cíclico	Diversos	Aluguel de carros	3673743152.00
558	MPLU3	Multiplus	Consumo Cíclico	Diversos	Programas de Fidelização	4348208156.00
559	MRFG3	Marfrig Global Foods SA	Consumo não Cíclico	Alimentos Processados	Carnes e Derivados	7180800000.00
560	MRSA3B	MRS Logistica S/A	Bens Industriais	Transporte	Transporte Ferroviário	8292899031.00
561	MRSA5B	MRS Logística	Bens Industriais	Transporte	Transporte Ferroviário	8292899031.00
562	MRSA6B	MRS Logística	Bens Industriais	Transporte	Transporte Ferroviário	8292899031.00
563	MRVE3	MRV Engenharia e Participacoes SA	Consumo Cíclico	Construção Civil	Incorporações	5349959703.00
564	MSPA3	Companhia Melhoramentos de Sao Paulo	Consumo Cíclico	Mídia	Jornais. Livros e Revistas	291394491.00
565	MSPA4	Companhia Melhoramentos de Sao Paulo Preference Shares	Consumo Cíclico	Mídia	Jornais. Livros e Revistas	291394491.00
566	MSRO3	Maestro Locadora de Veiculos SA	Consumo Cíclico	Diversos	Aluguel de carros	18271898550.00
567	MTIG3	Metalgrafica Iguaçu	Materiais Básicos	Embalagens	Embalagens	3700608.00
568	MTIG4	Metalgrafica Iguaçu	Materiais Básicos	Embalagens	Embalagens	3700608.00
569	MTRE3	Mitre Realty Emprndmnts e Prtcpcs SA	Consumo Cíclico	Construção Civil	Incorporações	426272525.00
570	MTSA3	Metisa Metalurgica Timboense SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Construção e Agrícolas	545171950.00
571	MTSA4	Metisa Metalurgica Timboense SA Preference Shares	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Construção e Agrícolas	545171950.00
572	MULT3	Multiplan Empreendimentos Imobiliaris SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	15800011013.00
573	MWET3	Wetzel SA	Bens Industriais	Material de Transporte	Material Rodoviário	20086109.00
574	MWET4	Wetzel SA Preference Shares	Bens Industriais	Material de Transporte	Material Rodoviário	20086109.00
575	MYPK3	Iochpe Maxion SA	Consumo Cíclico	Automóveis e Motocicletas	Automóveis e Motocicletas	1832337644.00
576	NAFG3	Nadir Figueiredo	Consumo Cíclico	Utilidades Domésticas	Utensílios Domésticos	508315292.00
577	NAFG4	Nadir Figueiredo	Consumo Cíclico	Utilidades Domésticas	Utensílios Domésticos	508315292.00
578	NEMO3	Suzano Holding SA	Materiais Básicos	Madeira e Papel	Papel e Celulose	0.00
579	NEMO5	Suzano Holding A Pref Shs	Materiais Básicos	Madeira e Papel	Papel e Celulose	0.00
580	NEMO6	Suzano Holding B Pref Shs	Materiais Básicos	Madeira e Papel	Papel e Celulose	0.00
581	NEOE3	Neoenergia SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	21678418849.00
582	NEXP3	Nexpe Participacoes SA	Financeiro e Outros	Exploração de Imóveis	Intermediação Imobiliária	14260406.00
583	NGRD3	Neogrid Participacoes SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	329354015.00
584	NINJ3	Getninjas SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	230110487.00
585	NORD3	Nordon Industrias Metalurgicas SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	36351958.00
586	NRTQ3	Nortec Quimica SA	Saúde	Medicamentos e Outros Produtos	Medicamentos e Outros Produtos	0.00
587	NTCO3	Natura &Co Holding SA	Consumo não Cíclico	Produtos de Uso Pessoal e de Limpeza	Produtos de Uso Pessoal	18861133698.00
588	NUTR3	Nutriplant Industria e Comercio S/A	Materiais Básicos	Químicos	Fertilizantes e Defensivos	51918048.00
589	ODER4	Conservas Oderich SA Preference Shares	Consumo não Cíclico	Alimentos Processados	Alimentos Diversos	1116407654.00
590	ODPV3	Odontoprev SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	6663097696.00
591	OFSA3	Ouro Fino Saude Animal Participacoes SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	1088151451.00
592	OGXP3	Óleo e Gás Participações	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	52747074.00
593	OIBR3	Oi SA - em Recuperacao Judicial	Comunicações	Telecomunicações	Telecomunicações	458491688.00
594	OIBR4	Oi SA - em Recuperacao Judicial Preference Shares	Comunicações	Telecomunicações	Telecomunicações	458491688.00
595	OMGE3	Omega Geração	Utilidade Pública	Energia Elétrica	Energia Elétrica	5521562589.00
596	ONCO3	Oncoclinicas do Brasil Srvcs Mdcs SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	5433060459.00
597	OPCT3	Oceanpact Servicos Maritimos Sa	Bens Industriais	Transporte	Transporte Hidroviário	1007796152.00
598	ORVR3	Orizon Valorizacao de Residuos SA	Utilidade Pública	Água e Saneamento	Água e Saneamento	2940609015.00
599	OSXB3	OSX BRASIL SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Equipamentos e Serviços	18919708.00
600	PARD3	Instituto Hermes Pardini	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	5403493010.00
602	PATI4	Panatlantica SA Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	698139845.00
603	PCAR3	Companhia Brasileira de Distribuicao SA	Consumo não Cíclico	Comércio e Distribuição	Alimentos	1042736806.00
604	PCAR4	Companhia Brasileira de Distribuicao SA	Consumo não Cíclico	Comércio e Distribuição	Alimentos	1042736806.00
605	PDGR3	PDG Realty SA Emprendmnts e Prtcpacs	Consumo Cíclico	Construção Civil	Incorporações	8634596.00
606	PDTC3	Padtec Holding SA	Financeiro e Outros	Serviços Financeiros Diversos	Serviços Financeiros Diversos	199620953.00
607	PEAB3	Companhia de Participacoes Alianca Bahia	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	691152202.00
608	PEAB4	Companhia de Participacoes Alianca Bahia Preference Shares	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	691152202.00
609	PETR3	Petroleo Brasileiro SA Petrobras	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	465099244981.00
610	PETR4	Petroleo Brasileiro SA Petrobras Preference Shares	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	465099244981.00
611	PETZ3	Pet Center Comercio e Participacoes SA	Consumo Cíclico	Comércio	Produtos Diversos	1803841658.00
612	PFRM3	Profarma Distribuidora de Produts Frm SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	494012964.00
613	PGMN3	Empreendimentos Pague Menos SA	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	1706608449.00
614	PINE3	Banco Pine SA	Financeiro e Outros	Intermediários Financeiros	Bancos	757459602.00
615	PINE4	Banco Pine SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	757459602.00
616	PLAS3	Plascar Participacoes Industriais SA	Consumo Cíclico	Automóveis e Motocicletas	Automóveis e Motocicletas	90705551.00
617	PLPL3	Plano & Plano Desenvolvimento Imblr SA	Consumo Cíclico	Construção Civil	Incorporações	2077283520.00
618	PMAM3	Paranapanema SA Em Recuperacao Judicial	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Cobre	185768474.00
619	PNVL3	Dimed SA Distribuidora de Medicamentos	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	1675205138.00
620	PNVL4	Dimed SA Distribuidora de Medicamentos	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	1675205138.00
621	POMO3	Marcopolo SA	Bens Industriais	Material de Transporte	Material Rodoviário	5047865248.00
622	POMO4	Marcopolo SA Preference Shares	Bens Industriais	Material de Transporte	Material Rodoviário	5047865248.00
623	PORT3	Wilson Sons SA	Bens Industriais	Transporte	Serviços de Apoio e Armazenagem	6151044822.00
624	POSI3	Positivo Tecnologia SA	Tecnologia da Informação	Computadores e Equipamentos	Computadores e Equipamentos	985510000.00
625	POWE3	Focus Energia Holding SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	977237930.00
626	PPAR3	Polpar SA	Financeiro e Outros	Outros	Outros	2160800.00
627	PPLA11	PPLA Participations Ltd Unit	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	10189091.00
628	PRIO3	Prio SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	40306820148.00
629	PRNR3	Priner Servicos Industriais SA	Bens Industriais	Serviços	Serviços Diversos	430325322.00
630	PSSA3	Porto Seguro SA	Financeiro e Outros	Previdência e Seguros	Seguradoras	17386699153.00
631	PTBL3	PBG SA	Bens Industriais	Construção e Engenharia	Produtos para Construção	738771283.00
632	PTCA11	Pratica Klimaquip Industria e ComercioSA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	0.00
633	PTCA3	Pratica Klimaquip Industria e ComercioSA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	0.00
634	PTNT3	Pettenati SA Industria Textil	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	470539528.00
635	PTNT4	Pettenati SA Industria Textil Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	470539528.00
636	QGEP3	QGEP Participações	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	3864832399.00
637	QUAL3	Qualicorp Consultoria e Cra de Ses SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	880444408.00
638	QUSW3	Quality Software SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	0.00
639	QVQP3B	524 Participações	Financeiro e Outros	Outros	Outros	0.00
640	RADL3	Raia Drogasil S/A	Saúde	Comércio e Distribuição	Medicamentos e Outros Produtos	44977428496.00
641	RAIL3	Rumo SA	Bens Industriais	Transporte	Transporte Ferroviário	41623259216.00
642	RAIZ4	Raizen SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	39650111324.00
643	RANI3	Irani Papel e Embalagem SA	Materiais Básicos	Embalagens	Embalagens	2638508306.00
644	RANI4	Irani Papel e Embalagem SA	Materiais Básicos	Embalagens	Embalagens	2638508306.00
645	RAPT3	Randon SA Implementos e Participacoes	Bens Industriais	Material de Transporte	Material Rodoviário	3619423155.00
646	RAPT4	Randon SA Implementos e Participacoes Preference Shares	Bens Industriais	Material de Transporte	Material Rodoviário	3619423155.00
647	RCSL3	Recrusul SA	Bens Industriais	Material de Transporte	Material Rodoviário	150350242.00
648	RCSL4	Recrusul SA Preference Shares	Bens Industriais	Material de Transporte	Material Rodoviário	150350242.00
649	RDNI3	RNI Negocios Imobiliarios SA	Consumo Cíclico	Construção Civil	Incorporações	196088740.00
650	RDOR3	Rede D'Or Sao Luiz SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	56728670380.00
651	RECV3	Petroreconcavo SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	5994666215.00
652	REDE3	Rede Energia Participacoes SA	Utilidade Pública	Energia Elétrica	Energia Elétrica	12303185270.00
653	RENT3	Localiza Rent a Car SA	Consumo Cíclico	Diversos	Aluguel de carros	59009066722.00
654	RLOG3	Cosan	Bens Industriais	Transporte	Transporte Ferroviário	10691215482.00
655	RNEW11	Renova Energia SA Em Recuperaco Judicial Unit	Utilidade Pública	Energia Elétrica	Energia Elétrica	278590418.00
656	RNEW3	Renova Energia SA Em Recuperaco Judicial	Utilidade Pública	Energia Elétrica	Energia Elétrica	278590418.00
657	RNEW4	Renova Energia SA Em Recuperaco Judicial Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	278590418.00
658	ROMI3	Romi SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Industriais	1102076839.00
659	RPAD3	Alfa Holdings SA	Financeiro e Outros	Intermediários Financeiros	Bancos	657741344.00
660	RPAD5	Alfa Holdings SA Preference Shares Series A	Financeiro e Outros	Intermediários Financeiros	Bancos	657741344.00
661	RPAD6	Alfa Holdings SA Preference Shares Series B	Financeiro e Outros	Intermediários Financeiros	Bancos	657741344.00
662	RPMG3	Refinaria de Petroleos d Mng S em Rcp Jd	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	149598500.00
663	RRRP3	3R Petroleum Oleo e Gas SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	7825908469.00
664	RSID3	Rossi Residencal SA - em Recuprco Judicl	Consumo Cíclico	Construção Civil	Incorporações	88000000.00
665	RSUL3	Metalurgica Riosulense SA	Bens Industriais	Material de Transporte	Material Rodoviário	195201452.00
666	RSUL4	Metalurgica Riosulense SA Preference Shares	Bens Industriais	Material de Transporte	Material Rodoviário	195201452.00
667	SANB11	Banco Santander Brasil SA Unit	Financeiro e Outros	Intermediários Financeiros	Bancos	110265899105.00
668	SANB3	Banco Santander Brasil SA	Financeiro e Outros	Intermediários Financeiros	Bancos	110265899105.00
669	SANB4	Banco Santander Brasil SA Preference Shares	Financeiro e Outros	Intermediários Financeiros	Bancos	110265899105.00
670	SAPR11	Companhia de Saneamento Parana SANEPAR Unit	Utilidade Pública	Água e Saneamento	Água e Saneamento	7084531473.00
671	SAPR3	Companhia de Saneamento Parana SANEPAR	Utilidade Pública	Água e Saneamento	Água e Saneamento	7084531473.00
672	SAPR4	Companhia de Saneamento Parana SANEPAR Preference Shares	Utilidade Pública	Água e Saneamento	Água e Saneamento	7084531473.00
673	SBFG3	Grupo SBF SA	Consumo Cíclico	Comércio	Produtos Diversos	1944638060.00
674	SBSP3	Companhia d Snmnt Bsc d std d S Pl SBSP	Utilidade Pública	Água e Saneamento	Água e Saneamento	41639421219.00
675	SCAR3	Sao Carlos Empreendimentos e Part. SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	1327958337.00
676	SEDU3	Somos Educação	Consumo Cíclico	Diversos	Serviços Educacionais	6238667820.00
677	SEER3	Ser Educacional SA	Consumo Cíclico	Diversos	Serviços Educacionais	765893282.00
678	SEQL3	Sequoia Logistica e Transportes SA	Bens Industriais	Transporte	Logística	111772134.00
679	SGPS3	Springs Global Participacoes S A	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	61500000.00
680	SHOW3	T4f Entretenimento SA	Consumo Cíclico	Viagens e Lazer	Produção de Eventos e Shows	166509194.00
681	SHUL3	Schulz SA	Bens Industriais	Máquinas e Equipamentos	Motores . Compressores e Outros	18546222958.00
682	SHUL4	Schulz SA Preference Shares	Bens Industriais	Máquinas e Equipamentos	Motores . Compressores e Outros	18546222958.00
683	SIMH3	Simpar SA	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	6556349848.00
684	SLCE3	SLC Agricola SA	Consumo não Cíclico	Agropecuária	Agricultura	8712997142.00
685	SLED3	Saraiva	Consumo Cíclico	Comércio	Produtos Diversos	16497693.00
686	SLED4	Saraiva	Consumo Cíclico	Comércio	Produtos Diversos	16497693.00
687	SMFT3	Smartfit Escola de Ginastica e Danca SA	Consumo Cíclico	Viagens e Lazer	Atividades Esportivas	12170389920.00
688	SMLS3	Smiles	Consumo Cíclico	Diversos	Programas de Fidelização	2781160547.00
689	SMTO3	Sao Martinho SA	Consumo não Cíclico	Alimentos Processados	Açucar e Alcool	12436417988.00
690	SNSY3	Sansuy SA Industria d Plstc Em Rcpr Jdcl	Materiais Básicos	Materiais Diversos	Materiais Diversos	82048098.00
691	SNSY5	Sansuy Industria de Plasticos A Pref Shs	Materiais Básicos	Materiais Diversos	Materiais Diversos	82048098.00
692	SNSY6	Sansuy Industria de Plasticos B Pref Shs	Materiais Básicos	Materiais Diversos	Materiais Diversos	82048098.00
693	SOJA3	Boa Safra Sementes SA	Consumo não Cíclico	Agropecuária	Agricultura	1579051594.00
694	SOMA3	Grupo de Moda SOMA SA	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	4559382237.00
695	SOND3	Sondotecnica Engenharia de Solos SA	Bens Industriais	Construção e Engenharia	Engenharia Consultiva	127489060.00
696	SOND5	Sondotenica Engenharia de Solos A Pref Shs	Bens Industriais	Construção e Engenharia	Engenharia Consultiva	127489060.00
697	SOND6	Sondotenica Engenharia de Solos B Pref Shs	Bens Industriais	Construção e Engenharia	Engenharia Consultiva	127489060.00
698	SPRI3	Springer	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	48073732.00
699	SPRI5	Springer	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	48073732.00
700	SPRI6	Springer	Financeiro e Outros	Holdings Diversificadas	Holdings Diversificadas	48073732.00
701	SPRT3B	Longdis	Financeiro e Outros	Outros	Outros	370531749.00
702	SQIA3	Sinqia	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	2406971774.00
703	STBP3	Santos Brasil Participacoes SA	Bens Industriais	Transporte	Serviços de Apoio e Armazenagem	6835587619.00
704	STKF3	Statkraft Energias Renováveis SA	Consumo Cíclico	Viagens e Lazer	Atividades Esportivas	0.00
705	STTR3	Stara	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Construção e Agrícolas	0.00
706	SULA11	Sul America	Financeiro e Outros	Previdência e Seguros	Seguradoras	9475042424.00
707	SULA3	Sul America	Financeiro e Outros	Previdência e Seguros	Seguradoras	9475042424.00
708	SULA4	Sul America	Financeiro e Outros	Previdência e Seguros	Seguradoras	9475042424.00
709	SUZB3	Suzano SA	Materiais Básicos	Madeira e Papel	Papel e Celulose	71078633573.00
710	SYNE3	SYN prop e tech SA	Financeiro e Outros	Exploração de Imóveis	Exploração de Imóveis	576996002.00
711	TAEE11	Transmissora Alianca de Enrga Eltrca S/A Unit	Utilidade Pública	Energia Elétrica	Energia Elétrica	12305500958.00
712	TAEE3	Transmissora Alianca de Enrga Eltrca S/A	Utilidade Pública	Energia Elétrica	Energia Elétrica	12305500958.00
713	TAEE4	Transmissora Alianca de Enrga Eltrca S/A Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	12305500958.00
714	TASA3	Taurus Armas SA	Bens Industriais	Máquinas e Equipamentos	Armas e Munições	1801587150.00
715	TASA4	Taurus Armas SA Preference Shares	Bens Industriais	Máquinas e Equipamentos	Armas e Munições	1801587150.00
716	TCNO3	Tecnosolo	Bens Industriais	Construção e Engenharia	Engenharia Consultiva	6451073.00
717	TCNO4	Tecnosolo	Bens Industriais	Construção e Engenharia	Engenharia Consultiva	6451073.00
718	TCSA3	Tecnisa SA	Consumo Cíclico	Construção Civil	Incorporações	210550998.00
719	TECN3	Technos SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Acessórios	251717063.00
720	TEKA3	Teka Tecelagem Kuehnrich SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	5019294.00
721	TEKA4	Teka Tecelagem Kuehnrich SA Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	5019294.00
722	TELB3	Telecomunicacoes Brasileiras SA - TELBRS	Comunicações	Telecomunicações	Telecomunicações	1299295731.00
723	TELB4	Telecomunicacoes Brasileiras SA - TELBRS Preference Shares	Comunicações	Telecomunicações	Telecomunicações	1299295731.00
724	TEND3	Construtora Tenda S/A	Consumo Cíclico	Construção Civil	Incorporações	1579299176.00
725	TESA3	Terra Santa Agro	Consumo não Cíclico	Agropecuária	Agricultura	1389696672.00
726	TFCO4	Track & Field SA Co	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	2218483041.00
727	TGMA3	Tegma Gestao Logistica SA	Bens Industriais	Transporte	Transporte Rodoviário	1632912117.00
728	TIET11	AES Tiete	Utilidade Pública	Energia Elétrica	Energia Elétrica	5004795801.00
729	TIET3	AES Tiete	Utilidade Pública	Energia Elétrica	Energia Elétrica	5004795801.00
730	TIET4	AES Tiete	Utilidade Pública	Energia Elétrica	Energia Elétrica	5004795801.00
731	TIMS3	Tim SA	Comunicações	Telecomunicações	Telecomunicações	41734667822.00
732	TKNO3	Tekno SA Industria e Comercio	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	192152383.00
733	TKNO4	Tekno SA Industria e Comercio Preference Shares	Materiais Básicos	Siderurgia e Metalurgia	Artefatos de Ferro e Aço	192152383.00
734	TOTS3	Totvs SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	18706822216.00
735	TOYB3	Tec Toy	Consumo Cíclico	Viagens e Lazer	Brinquedos e Jogos	71890222.00
736	TOYB4	Tec Toy	Consumo Cíclico	Viagens e Lazer	Brinquedos e Jogos	71890222.00
737	TPIS3	TPI Triunfo Participacoes e Invstmnts SA	Bens Industriais	Transporte	Exploração de Rodovias	175560000.00
738	TRAD3	Tc SA	Tecnologia da Informação	Programas e Serviços	Programas e Serviços	280147138.00
739	TRIS3	Trisul SA	Consumo Cíclico	Construção Civil	Incorporações	933087690.00
740	TRPL3	CTEEP Cmpnh d Trnsmss d nrg ltrc Plst	Utilidade Pública	Energia Elétrica	Energia Elétrica	17841993767.00
741	TRPL4	CTEEP Cmpnh d Trnsmss d nrg ltrc Plst Preference Shares	Utilidade Pública	Energia Elétrica	Energia Elétrica	17841993767.00
742	TRPN3	Tarpon Investimentos	Financeiro e Outros	Serviços Financeiros Diversos	Gestão de Recursos e Investimentos	32162716.00
743	TTEN3	Tres Tentos Agroindustrial SA	Consumo não Cíclico	Agropecuária	Agricultura	5271989105.00
744	TUPY3	Tupy SA	Bens Industriais	Material de Transporte	Material Rodoviário	3669317375.00
745	TXRX3	Textil RenauxView S/A	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	22862746.00
746	TXRX4	Textil RenauxView S/A Preference Shares	Consumo Cíclico	Tecidos. Vestuário e Calçados	Fios e Tecidos	22862746.00
747	UCAS3	Unicasa Industria de Moveis S/A	Consumo Cíclico	Utilidades Domésticas	Móveis	172485410.00
748	UGPA3	Ultrapar Participacoes SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	26319014764.00
749	UNIP3	Unipar Carbocloro SA	Materiais Básicos	Químicos	Químicos Diversos	7456181858.00
750	UNIP5	Unipar Participacoes A Pref Shs	Materiais Básicos	Químicos	Químicos Diversos	7456181858.00
751	UNIP6	Unipar Participacoes B Pref Shs	Materiais Básicos	Químicos	Químicos Diversos	7456181858.00
752	USIM3	Usinas Siderurgicas de Mins Grs SA USMNS	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	8547573939.00
753	USIM5	Usinas Siderurgicas de Minas Gerais A Pref Shs	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	8547573939.00
754	USIM6	Usinas Siderurgicas de Minas Gerais Pref Shs	Materiais Básicos	Siderurgia e Metalurgia	Siderurgia	8547573939.00
755	VALE3	Vale SA	Materiais Básicos	Mineração	Minerais Metálicos	318320601585.00
756	VAMO3	Vamos Locacao de Camhs Mqns e Eqpmnts SA	Bens Industriais	Máquinas e Equipamentos	Máq. e Equip. Construção e Agrícolas	10115613052.00
757	VBBR3	Vibra Energia SA	Petróleo. Gás e Biocombustíveis	Petróleo. Gás e Biocombustíveis	Exploração. Refino e Distribuição	25478550000.00
758	VITT3	Vittia SA	Materiais Básicos	Químicos	Fertilizantes e Defensivos	1343231115.00
759	VIVA3	Vivara Participacoes SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Acessórios	6438751183.00
760	VIVR3	Viver Incorporadora e Construtora SA	Consumo Cíclico	Construção Civil	Incorporações	81920839.00
761	VIVT3	Telefonica Brasil SA	Comunicações	Telecomunicações	Telecomunicações	82462507156.00
762	VIVT4	Telefonica Brasil SA	Comunicações	Telecomunicações	Telecomunicações	82462507156.00
763	VLID3	Valid Solucoes SA	Bens Industriais	Serviços	Serviços Diversos	1356028734.00
764	VSPT3	Ferrovia Centro-Atlantica SA	Bens Industriais	Transporte	Transporte Ferroviário	712610842.00
765	VSPT4	Ferrovia Centro-Atlantica SA Preference Shares	Bens Industriais	Transporte	Transporte Ferroviário	712610842.00
766	VSTE3	Veste SA Estilo	Consumo Cíclico	Comércio	Tecidos. Vestuário e Calçados	1404225319.00
767	VULC3	Vulcabras SA	Consumo Cíclico	Tecidos. Vestuário e Calçados	Calçados	5132272012.00
768	VVAR11	Grupo Casas Bahia SA	Consumo Cíclico	Comércio	Eletrodomésticos	1354935926.00
769	VVAR4	Grupo Casas Bahia SA	Consumo Cíclico	Comércio	Eletrodomésticos	1354935926.00
770	VVEO3	CM Hospitalar SA	Saúde	Serv.Méd.Hospit..Análises e Diagnósticos	Serv.Méd.Hospit..Análises e Diagnósticos	4858450150.00
771	WEGE3	Weg SA	Bens Industriais	Máquinas e Equipamentos	Motores . Compressores e Outros	136202969035.00
772	WEST3	Westwing Comercio Varejista SA	Consumo Cíclico	Comércio	Produtos Diversos	162694593.00
773	WHRL3	Whirlpool SA	Consumo Cíclico	Comércio	Eletrodomésticos	6287191663.00
774	WHRL4	Whirlpool SA Preference Shares	Consumo Cíclico	Comércio	Eletrodomésticos	6287191663.00
775	WIZC3	Wiz Co Participacos e Cortgm de Sgurs SA	Financeiro e Outros	Previdência e Seguros	Corretoras de Seguros	865098396.00
776	WLMM3	WLM Participacoes e Cmrc d Mqns e Vcs SA	Bens Industriais	Comércio	Material de Transporte	1125372470.00
777	WLMM4	WLM Participacoes e Cmrc d Mqns e Vcs SA Preference Shares	Bens Industriais	Comércio	Material de Transporte	1125372470.00
778	YDUQ3	YDUQS Participacoes SA	Consumo Cíclico	Diversos	Serviços Educacionais	5888142612.00
779	ZAMP3	Zamp SA	Consumo Cíclico	Hoteis e Restaurantes	Restaurante e Similares	1872417040.00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password) FROM stdin;
1	Teste Testando	teste@example.com	$2a$10$svR5EE4NlwDJUddAgekau.5XeGRP1lTHpHBh1FPpAY4KLrKrkvA4O
2	Jonas Greco Onias	jonas@example.com	$2a$10$0qvynjQiKvAh62J3/B5Q6uo9k4fP.gAZVv52dnSam7Kxw1xUHQGFS
\.


--
-- Name: acoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.acoes_id_seq', 779, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


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

