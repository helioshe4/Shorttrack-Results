--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3 (Ubuntu 15.3-1.pgdg18.04+1)

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
-- Name: results_1000; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.results_1000 (
    skater_id integer NOT NULL,
    all_time_best numeric(10,3),
    all_time_location character varying(50),
    all_time_competition_name character varying(50),
    all_time_date timestamp without time zone,
    season_best numeric(10,3),
    season_location character varying(50),
    season_competition_name character varying(50),
    season_date timestamp without time zone
);


ALTER TABLE public.results_1000 OWNER TO postgres;

--
-- Name: results_1500; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.results_1500 (
    skater_id integer NOT NULL,
    all_time_best numeric(10,3),
    all_time_location character varying(50),
    all_time_competition_name character varying(50),
    all_time_date timestamp without time zone,
    season_best numeric(10,3),
    season_location character varying(50),
    season_competition_name character varying(50),
    season_date timestamp without time zone
);


ALTER TABLE public.results_1500 OWNER TO postgres;

--
-- Name: results_500; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.results_500 (
    skater_id integer NOT NULL,
    all_time_best numeric(10,3),
    all_time_location character varying(50),
    all_time_competition_name character varying(50),
    all_time_date timestamp without time zone,
    season_best numeric(10,3),
    season_location character varying(50),
    season_competition_name character varying(50),
    season_date timestamp without time zone
);


ALTER TABLE public.results_500 OWNER TO postgres;

--
-- Name: skaters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skaters (
    skater_id integer NOT NULL,
    skater_name character varying(50) NOT NULL COLLATE pg_catalog."C",
    dob date,
    home_club character varying(50),
    gender character varying(10),
    country character varying(100),
    region character varying(100)
);


ALTER TABLE public.skaters OWNER TO postgres;

--
-- Name: skaters_skater_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.skaters_skater_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skaters_skater_id_seq OWNER TO postgres;

--
-- Name: skaters_skater_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.skaters_skater_id_seq OWNED BY public.skaters.skater_id;


--
-- Name: skaters skater_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skaters ALTER COLUMN skater_id SET DEFAULT nextval('public.skaters_skater_id_seq'::regclass);


--
-- Data for Name: results_1000; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.results_1000 (skater_id, all_time_best, all_time_location, all_time_competition_name, all_time_date, season_best, season_location, season_competition_name, season_date) FROM stdin;
18	NaN	test 123	test once again	\N	NaN	\N	\N	\N
114	NaN	\N	\N	\N	NaN	\N	\N	\N
115	NaN	\N	\N	\N	NaN	\N	\N	\N
116	\N	\N	\N	\N	\N	\N	\N	\N
118	671.111	Test	Test2	1111-12-22 00:00:00	1401.111	Test	Test	1111-11-11 00:00:00
119	\N	\N	\N	\N	\N	\N	\N	\N
72	93.122	\N	\N	\N	94.111	\N	\N	\N
74	90.214	\N	\N	\N	92.333	\N	\N	\N
\.


--
-- Data for Name: results_1500; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.results_1500 (skater_id, all_time_best, all_time_location, all_time_competition_name, all_time_date, season_best, season_location, season_competition_name, season_date) FROM stdin;
18	NaN	test again	\N	\N	NaN	\N	\N	\N
114	NaN	\N	\N	\N	NaN	\N	\N	\N
115	NaN	\N	\N	\N	NaN	\N	\N	\N
116	\N	\N	\N	\N	\N	\N	\N	\N
118	751.211	Test location	test competiton 	1112-01-21 00:00:00	1932.232	Test location season	test lcoation	1122-11-12 00:00:00
119	\N	\N	\N	\N	\N	\N	\N	\N
72	138.259	\N	\N	\N	140.222	\N	\N	\N
74	136.111	\N	\N	\N	137.542	\N	\N	\N
\.


--
-- Data for Name: results_500; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.results_500 (skater_id, all_time_best, all_time_location, all_time_competition_name, all_time_date, season_best, season_location, season_competition_name, season_date) FROM stdin;
18	NaN	test432	\N	\N	NaN	\N	\N	\N
114	NaN	\N	\N	\N	NaN	\N	\N	\N
115	NaN	\N	\N	\N	NaN	\N	\N	\N
116	\N	\N	\N	\N	\N	\N	\N	\N
118	41.111	Calgary, Alberta	WEC	2023-05-04 00:00:00	42.222	Sherbrooke	Junior Champs	2022-05-07 00:00:00
119	\N	\N	\N	\N	\N	\N	\N	\N
72	44.322	\N	\N	\N	44.111	\N	\N	\N
74	42.111	\N	\N	\N	43.444	\N	\N	\N
81	NaN	\N	\N	\N	NaN	\N	\N	\N
80	NaN	\N	\N	\N	NaN	\N	\N	\N
\.


--
-- Data for Name: skaters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.skaters (skater_id, skater_name, dob, home_club, gender, country, region) FROM stdin;
72	Helios He2	\N	\N	\N	\N	\N
74	wsl test	\N	\N	\N	\N	\N
81	test12	\N	\N	\N	\N	\N
75	abc	\N	\N	\N	\N	\N
80	test11	\N	\N	\N	\N	\N
82	test13	\N	\N	\N	\N	\N
84	tt1	\N	\N	\N	\N	\N
85	ttt	\N	\N	\N	\N	\N
86	abcgg	\N	\N	\N	\N	\N
87	bbb	\N	\N	\N	\N	\N
88	full test	1111-11-11	Oakville	Male	Canada	Ontario
90	all distances	1222-11-11	Oakville	Female	Canada	Ontario
91	hi	\N	\N	\N	\N	\N
92	hey	\N	\N	\N	\N	\N
93	preview	1111-11-11	\N	\N	\N	\N
94	preview test	\N	\N	\N	\N	\N
95	preview test2	\N	\N	\N	\N	\N
96	preview test123	\N	\N	\N	\N	\N
97	preview test55	\N	\N	\N	\N	\N
98	preview test!	\N	\N	\N	\N	\N
99	bruh	\N	\N	\N	\N	\N
100	rrrr	\N	\N	\N	\N	\N
101	delete test	\N	\N	\N	\N	\N
102	delete test2	\N	\N	\N	\N	\N
47	test123	\N	\N	\N	\N	\N
104	bruh moment	1111-11-11	\N	\N	\N	\N
49	t123123	\N	\N	Male	\N	\N
50	tasdfadf	1972-11-12	Oakville	Female	asdfadsf	adsfasdf
69	hh test	\N	milton	\N	\N	\N
68	hh123	1970-01-01	milton	\N	\N	\N
53	helios he123	1970-01-01	\N	\N	\N	\N
108	merge test	\N	\N	\N	\N	\N
112	css test	1111-11-11	111	Female	dafasdf	asdfasdf
113	asdfasfasdf	1111-11-11	\N	\N	\N	1asdfasdf
70	john smith	\N	oakville	Female		\N
83	tt	\N	\N	\N	\N	\N
18	Helios He	2023-05-10	Oakville	Male	Canada	Ontario
114	country test	\N	\N	\N	Djibouti	\N
115	gender test	\N	\N	Female	Djibouti	\N
116	nan test	\N	\N	\N	Canada	\N
118	Full Test2	1999-11-23	Milton	Female	Germany	Munich
119	Helios DOB	2004-11-28	\N	\N	\N	\N
\.


--
-- Name: skaters_skater_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skaters_skater_id_seq', 119, true);


--
-- Name: results_1000 results_1000_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results_1000
    ADD CONSTRAINT results_1000_pkey PRIMARY KEY (skater_id);


--
-- Name: results_1500 results_1500_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results_1500
    ADD CONSTRAINT results_1500_pkey PRIMARY KEY (skater_id);


--
-- Name: results_500 results_500_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results_500
    ADD CONSTRAINT results_500_pkey PRIMARY KEY (skater_id);


--
-- Name: skaters skaters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skaters
    ADD CONSTRAINT skaters_pkey PRIMARY KEY (skater_id);


--
-- Name: skaters skaters_skater_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skaters
    ADD CONSTRAINT skaters_skater_name_key UNIQUE (skater_name);


--
-- Name: unique_skater_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX unique_skater_name ON public.skaters USING btree (lower((skater_name)::text));


--
-- Name: results_1000 results_1000_skater_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results_1000
    ADD CONSTRAINT results_1000_skater_id_fkey FOREIGN KEY (skater_id) REFERENCES public.skaters(skater_id);


--
-- Name: results_1500 results_1500_skater_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results_1500
    ADD CONSTRAINT results_1500_skater_id_fkey FOREIGN KEY (skater_id) REFERENCES public.skaters(skater_id);


--
-- Name: results_500 results_500_skater_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results_500
    ADD CONSTRAINT results_500_skater_id_fkey FOREIGN KEY (skater_id) REFERENCES public.skaters(skater_id);


--
-- PostgreSQL database dump complete
--

