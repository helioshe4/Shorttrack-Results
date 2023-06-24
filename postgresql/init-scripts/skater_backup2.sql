--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg120+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg120+1)

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
    all_time_competition_name character varying(100),
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
    all_time_competition_name character varying(100),
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
    all_time_competition_name character varying(100),
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
29834	87.618	Quebec City	\N	\N	88.429	Montreal	\N	\N
55987	\N	\N	\N	\N	\N	\N	\N	\N
51952	91.499		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
51964	88.487		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
51968	90.035		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
9658	88.485	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
13158	95.810	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
12640	94.657	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
51972	90.483		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
12995	97.372	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
82600	93.404		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
51953	85.417		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
18965	91.732		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
51962	85.890		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
51955	87.244		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
51957	85.611		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
51947	87.027		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
51946	87.408		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
51965	85.369		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
8348	84.950	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
59521	87.384	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
59633	87.482	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
59635	86.664	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
59672	86.612	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9503	89.541	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
26799	100.761	Budapest (HUN)	Audi ISU World Cup	\N	\N	\N	\N	\N
18801	91.845	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
14629	89.743	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
15934	90.911		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
8264	84.932	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7789	86.490	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
45963	85.217	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
9727	86.538	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
17656	93.292	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
60290	93.195	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
27956	98.584	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14890	88.695	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
11305	87.450	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
19041	90.409	Montreal	World Cup	\N	\N	\N	\N	\N
8522	84.495	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
59636	87.895	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
10632	87.612	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
9006	85.567	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
11079	85.589		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
44224	89.371	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
17740	94.557	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
25809	96.517	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
53607	95.947	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
16446	92.905	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
11612	87.894	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
19274	91.874	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
10724	90.179	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
15328	91.163	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
11331	88.338	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
8495	85.002	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
7808	82.679	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
11193	87.052	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
17023	91.158		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
46480	103.572	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
46405	86.968	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
16759	88.422	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8107	87.718		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
17277	93.296	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9492	87.709	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
10284	85.148	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
14636	88.675	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
30256	88.019	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8727	84.067		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
17430	89.394	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
43152	87.515	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
9072	84.407	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
9748	85.500	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
13230	101.934	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
13579	103.573	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
69947	92.274	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
26264	95.287	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9003	86.248	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
9946	88.846	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
9093	86.874	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
13794	116.474	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
10515	83.981	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
8913	86.045	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7878	84.218	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
22013	94.073	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27151	95.306	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
10401	87.196	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15924	88.202	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
46484	87.185	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
8156	86.050	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
12633	92.771	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
7741	88.301	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
28401	110.278	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
66659	95.948	Gdansk (POL)	ISU European Short Track Championships 2023	\N	\N	\N	\N	\N
46471	107.092	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
94073	99.801	Gdansk (POL)	ISU European Short Track Championships 2023	\N	\N	\N	\N	\N
26500	94.961	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
7727	83.641	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
45310	82.476	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
22266	93.795	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
19505	90.031	Montreal	World Cup	\N	\N	\N	\N	\N
17063	92.736	Almaty	World Cup (1)	\N	\N	\N	\N	\N
23763	93.644	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
21592	92.455	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
16301	89.478	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
26971	95.799	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
19391	92.763	Almaty	World Cup (1)	\N	\N	\N	\N	\N
22463	92.432	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
60300	91.241	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
61595	105.710		ISU European Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
17723	92.840	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7956	82.545	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7720	83.713	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
13663	100.738	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
14599	88.092	Debrecen (HUN)	ISU World Cup	\N	\N	\N	\N	\N
16694	88.132	Montreal	World Cup	\N	\N	\N	\N	\N
19030	93.365	Almaty	World Cup (2)	\N	\N	\N	\N	\N
14751	88.598	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
25171	101.391	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
12379	94.311	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
27999	114.998	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
7680	84.224	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
13724	106.307	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
14896	89.994	Almaty	World Cup (1)	\N	\N	\N	\N	\N
14344	92.261	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
7833	88.631	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9611	88.542	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
61964	92.979		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
22902	97.725	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
28471	108.485	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
7618	80.875	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
28475	118.765	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
9434	87.673	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
28458	108.636	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
11237	85.696	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
26730	97.858	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
64436	86.220	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66967	86.672	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7658	83.060	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
11554	96.210	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
66961	87.563	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
27985	105.353	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
7801	85.287	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
28175	116.685	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
13239	98.297	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7623	82.337	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
8028	83.596	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
24670	96.808	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
14871	90.533	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
26482	97.967	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
23813	100.266		ISU European Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
66974	89.661	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
18453	90.726	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
14830	87.389	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
19382	93.036	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9171	88.701	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
10351	92.492		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
8651	88.384	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
22864	95.510		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
9239	87.318		ISU Shanghai Trophy 2017	\N	\N	\N	\N	\N
23409	90.016	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
17545	91.121		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
12339	93.899	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
16055	90.263	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
8667	89.458	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
35357	88.057	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
22599	93.709	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
26721	95.140	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
18071	89.020	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
15938	88.857	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
24074	92.761	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
15133	89.080	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
10006	86.648	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
15163	90.171	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
8509	85.853	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
12944	93.695	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
13455	99.087	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
61958	92.645		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
61896	96.648		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
11002	95.637	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
14573	88.582	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
11130	95.037	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7987	89.578	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
60295	91.411	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9500	85.971	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
61979	103.570		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
12540	86.038	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
11850	89.150	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
11302	85.359	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
42954	89.478	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
61924	101.765		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
43349	91.040	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
61895	95.769		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
9660	87.028	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10335	88.615	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
67352	92.974	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
10844	85.852	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
61937	100.647		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
11059	88.115		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
61963	93.103		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
9109	90.459	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7627	82.602	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
59614	89.415	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
60501	85.347		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
8187	84.029	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
27882	101.891		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
28400	103.473		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
24349	96.386		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
28176	101.470		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
23483	97.119		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
27256	98.984		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
11100	89.903		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
15155	90.348	Montreal	World Cup	\N	\N	\N	\N	\N
28082	102.544		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
7653	85.544	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
13263	89.760	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
10964	90.510	Budapest (HUN)	Audi ISU World Cup	\N	\N	\N	\N	\N
7933	88.745		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
7677	83.019	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8748	86.337	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8316	85.850	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
8345	87.412		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
7994	85.092	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
22721	94.543	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
26078	94.578	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
12523	93.497	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
13696	104.061	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28132	99.153	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
28318	100.698	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
11485	92.829	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
19683	93.296		ISU Shanghai Trophy 2017	\N	\N	\N	\N	\N
13283	100.747	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
42958	85.527	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
20608	92.057	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
13303	93.479	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28126	100.567	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
19536	92.667	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9655	87.041	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
12150	93.573	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28241	101.575	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
28161	106.862	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
21914	91.584	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
28285	98.012	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
12627	93.545	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28361	104.495	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8601	86.513	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
12619	91.361	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
11738	86.211	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
8550	86.255	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
12688	93.802	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28085	99.725	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8575	86.089	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28111	100.061	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
32871	88.576	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8761	86.345	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
30334	94.579	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
9989	86.965	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
28174	101.240	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
9516	86.586	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
97724	95.998	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28005	99.792	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28312	107.069	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
18394	92.653	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
28387	102.072	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
97699	96.094	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
27825	99.072	Gdansk (POL)	ISU European Short Track Championships 2023	\N	\N	\N	\N	\N
29776	94.669	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
16885	89.334	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
26684	93.035	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
12356	84.866		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
12586	95.472		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
8168	83.179	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
25939	94.335	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
8649	85.297	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
18615	93.234	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
27617	98.112	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
27951	100.282	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
20471	92.753	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
20313	92.379	Montreal	World Cup	\N	\N	\N	\N	\N
16199	88.762	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
24922	93.903	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
10253	88.099		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
18535	90.544	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
84800	90.967	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
27823	98.296	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
16364	90.867	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
8719	87.307	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
24395	96.896	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
84818	101.523	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
15531	88.761	Montreal	World Cup	\N	\N	\N	\N	\N
19375	93.417	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
16198	88.380	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
20983	91.998	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
27906	97.261	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
28022	96.718	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
7629	84.211	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
19548	92.092	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
9203	83.988		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
94371	92.298	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
17126	91.628	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
22271	90.013	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
27613	96.734	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
9105	86.957		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
28137	105.533	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
11580	89.478	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
84770	93.508	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
27052	97.204	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
11783	94.269	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
11927	94.830	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
22686	95.084	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
9918	85.963	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8984	90.756	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
9065	90.064	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
10230	91.414	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
9721	87.468	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
10517	87.543	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
9089	84.973		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
13523	107.184		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
11825	91.278	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
27744	99.374	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
23087	92.680	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
19180	91.712	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
19328	92.803		ISU Shanghai Trophy 2017	\N	\N	\N	\N	\N
8188	85.218	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
25031	96.176	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
20996	92.732	Almaty	World Cup (2)	\N	\N	\N	\N	\N
11131	91.134		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
8744	85.369	Dordrecht (NED)	ISU European Short Track Championships 2019	\N	\N	\N	\N	\N
11593	90.787	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
8642	89.733		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
33015	86.181	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
13513	98.641	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
12767	96.810	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
13630	105.224		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9861	90.545		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9952	89.675		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
11129	92.181		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9579	89.506		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
13299	99.945	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
13632	102.474	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
11981	92.218		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
94345	94.372	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
12716	93.511	Sofia (BUL)	ISU World Short Track Championships 2019	\N	\N	\N	\N	\N
13570	92.434		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
11807	93.411		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9578	86.433	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
12229	91.734	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
59558	86.050	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7803	83.814	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7855	84.489	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7909	84.041	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66981	83.701	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66987	84.884	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
74363	97.240	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
32985	86.674	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7872	86.121	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
26661	98.034	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
9622	86.701	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
12444	88.707	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
13476	88.584	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
11344	89.235	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
11215	86.834	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
66637	88.309	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9412	87.655	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
18347	95.258	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
67177	90.720	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66951	87.670	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66980	88.832	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
32795	90.251	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
11461	87.128	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
18759	92.076	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
27950	102.599	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
19878	90.928	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
10390	87.553	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9895	89.113		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
12197	89.819		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
10009	89.370	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7851	85.857	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
18503	92.795	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
94098	99.077	Gdansk (POL)	ISU European Short Track Championships 2023	\N	\N	\N	\N	\N
21470	94.601	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
8763	86.685	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
10228	84.998	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
94423	103.809	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
20769	91.437	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
21231	92.511	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
15003	89.871		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
28413	107.903	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
14592	91.886	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
19023	93.857	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94301	92.960	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
16075	92.132	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
18038	97.574	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
17391	91.099	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
15548	89.101	Dordrecht (NED)	ISU European Short Track Championships 2019	\N	\N	\N	\N	\N
17746	95.129	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
10115	87.074	Montreal (CAN)	ISU Four Continents Short Track Championships 2020	\N	\N	\N	\N	\N
25853	94.835	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
23796	95.702	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
12412	91.526	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
20712	92.991	Salt Lake City	Four Continents	\N	\N	\N	\N	\N
20265	93.124	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14732	89.915	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
17402	92.227	Almaty	World Cup (1)	\N	\N	\N	\N	\N
14616	91.521	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
17303	91.163	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
18376	92.245	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10666	90.466	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9134	90.588	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
20997	88.750	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
26063	93.849	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14668	87.945	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
10574	86.497	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
20433	92.560	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
32921	85.772	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66964	87.641	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
14605	88.101	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
67048	94.708	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
15201	86.162	Salt Lake City	World Cup	\N	\N	\N	\N	\N
67032	92.832	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66947	89.861	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9781	87.181	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10689	92.708	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
67328	90.237	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66990	89.528	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67327	89.772	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8786	87.350	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67144	88.133	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67025	88.346	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94304	91.134	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94279	92.832	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
24824	92.908	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
18114	92.594	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
26918	99.524		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
14874	90.537	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
94302	92.640	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94260	94.665	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
22508	95.111	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
94352	93.521	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8816	84.733	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7748	83.572	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
71921	102.051	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
28372	98.899	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94281	95.951	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67001	95.784	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66949	89.817	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9005	86.438	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
11027	90.785	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
10678	90.348	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
12585	89.308	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
10842	91.790	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8988	87.437	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
66950	89.381	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
13253	99.941	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
66989	89.068	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9967	89.004	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
62604	91.993	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
67313	93.666	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9631	87.556	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9172	86.627	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9216	84.421	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
13812	111.857	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
9104	85.993		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
23100	92.104	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
12306	93.721	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
94007	96.958	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94408	96.551	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8009	84.053	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8536	89.478	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
94494	100.138	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94274	92.896	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94374	96.376	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
17749	92.822	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
66959	88.732	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27565	97.975	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
13531	102.667	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
11552	95.042	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
13219	96.608	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
8743	87.026	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
17170	93.468	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
15136	89.252	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
26056	95.359	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
16272	91.589	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
15101	92.836		ISU Shanghai Trophy 2017	\N	\N	\N	\N	\N
14436	85.134	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10266	87.663	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
28303	102.275	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
11234	91.697	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
9432	89.205	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
13514	103.404	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
9188	89.272		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
15806	91.092		ISU Shanghai Trophy 2017	\N	\N	\N	\N	\N
11764	89.204	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
14539	88.076	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
13477	102.573	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
8983	84.647	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
14744	87.828	Almaty	World Cup (2)	\N	\N	\N	\N	\N
15064	90.007	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
20499	94.762	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
11842	93.060	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
23234	89.567	Salt Lake City	World Cup	\N	\N	\N	\N	\N
13345	100.593	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
19165	91.805	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
15366	88.680		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
18519	88.764		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
8258	84.733	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
9284	88.421	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
24800	97.832		ISU Shanghai Trophy 2016	\N	\N	\N	\N	\N
15402	88.241	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7630	83.187	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
14564	88.355		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
46412	85.641	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7639	84.081		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
15078	87.401		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
9292	86.951	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
15110	87.485	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
28923	88.290		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
14557	88.866	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
7635	84.034	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
94256	95.155	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
15248	87.470	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
8422	84.604	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
14769	88.349	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
45298	85.566	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
21755	92.459		ISU Shanghai Trophy 2016	\N	\N	\N	\N	\N
14566	87.495	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
14660	88.214	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
62569	86.231	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
12221	91.801	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
10482	85.545	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7792	84.999	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
14542	86.811		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
17346	91.204	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
14551	85.958	Montreal	World Cup	\N	\N	\N	\N	\N
14559	86.850		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
14581	86.783		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
14536	86.592		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
15114	87.862		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
11834	97.282	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
17696	89.369	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
28346	103.048		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
27932	106.377		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
14644	87.528		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
26253	100.229		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
14677	88.392		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
28107	100.640		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
27858	101.464		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
8485	83.828	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
28324	98.486		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9046	84.622	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
28140	99.414		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9788	91.404	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
28261	103.226		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
25229	96.560		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
8411	84.923	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9378	84.575	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
13618	97.500	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
28448	107.552		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
21467	94.171	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
11139	84.275	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
8640	85.808	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
9519	88.283	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
11603	93.098	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
28223	104.358		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
28409	107.913		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
28152	104.753	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
48526	86.871	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
22986	96.551	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
28186	100.902		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9248	85.434	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
9418	89.261	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
7892	85.180	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9543	91.345	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8846	86.658	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
59525	87.189	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8874	84.844	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
59566	89.189	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9511	85.485	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
10058	89.124	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9520	90.457	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
10392	89.984	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
62669	84.576	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
62559	90.470	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8725	87.932	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
12420	96.400	Dordrecht (NED)	ISU European Short Track Championships 2019	\N	\N	\N	\N	\N
11476	93.323	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
8494	83.963	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
63266	94.364	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
43835	86.413	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8853	87.740	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
10046	88.244	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8697	83.171	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
11104	84.540	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7971	85.065	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
26876	100.379		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9887	92.356	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
93286	91.725	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
16869	93.681		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
25111	94.413		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
7723	84.694	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
21626	95.921		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9796	89.599	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
15013	89.870	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
14452	86.663	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
9524	83.238	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
23148	94.524	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
18000	89.471	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
60488	86.323	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
18499	88.811		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9091	86.405	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27072	99.118		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
12225	91.986	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
14754	87.859		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
10312	87.252	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
11557	91.170	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
27646	99.379	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
26751	94.454		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
24671	96.270	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10629	86.768	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
10108	88.535	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
25231	95.084	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
8376	86.701	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
26887	98.379		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
8677	88.620	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
8322	85.398	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
62567	89.954	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7881	83.849	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7690	84.150	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7665	84.239	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
7886	88.066	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
45535	86.623	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7750	83.354	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
27437	96.673	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9375	85.990	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
18235	90.795	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
10286	88.700	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
62572	87.787	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
60566	93.848	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7613	83.881	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
21499	89.893	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9713	85.251	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7756	84.844	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
15487	93.178	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
21433	94.579	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7978	83.844	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8285	87.490	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7614	82.607	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8431	86.337	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27347	99.362	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
18260	89.523	Almaty	World Cup (1)	\N	\N	\N	\N	\N
7669	86.098	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
59515	84.814	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7734	82.542	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
19265	90.187	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9102	86.764	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7819	85.199	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8504	83.931	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
7615	83.269	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
13714	92.290	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
32979	88.470	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7612	82.413	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
7638	84.148	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
8296	87.508	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8196	87.074	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
11427	88.094	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
8064	85.939	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8612	85.366	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27055	97.817	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
14597	88.769	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
21950	91.248	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
28737	97.086	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
18309	93.528	Montreal	World Cup	\N	\N	\N	\N	\N
48522	86.452	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
26117	93.205	Almaty	World Cup (2)	\N	\N	\N	\N	\N
26608	92.746	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
14935	88.465		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
9920	87.641	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7924	83.912		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
8768	86.718	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
92663	90.348	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
22027	91.361	Salt Lake City	World Cup	\N	\N	\N	\N	\N
14910	89.627	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
19320	92.783	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
64537	86.269	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
7654	82.959	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
59569	85.687	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7860	85.183		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
60522	87.067	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8192	86.707	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
8265	83.991	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8474	84.429	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7676	84.118	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7620	84.628	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
19942	90.171	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7950	85.108	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
17942	92.749	Almaty	World Cup (1)	\N	\N	\N	\N	\N
94823	94.922	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
43830	88.648	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9344	86.201	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
63826	89.888		ISU Shanghai Trophy 2016	\N	\N	\N	\N	\N
34073	88.147	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14543	88.381	Montreal	World Cup	\N	\N	\N	\N	\N
28405	105.052	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
15353	88.232	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
14950	89.390	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15741	89.467	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
16368	91.182	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
15317	88.967	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
30880	85.609	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
14743	87.858	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
9569	86.569	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
27552	94.147	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
17193	88.082	Almaty	World Cup (2)	\N	\N	\N	\N	\N
10989	84.069	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
23938	89.638	Almaty	World Cup (2)	\N	\N	\N	\N	\N
92577	87.828	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8566	86.026	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14589	89.423	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7621	83.427	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
11930	93.638	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7813	85.794	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
12059	87.218	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9647	86.641	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14721	89.698	Almaty	World Cup (1)	\N	\N	\N	\N	\N
24806	91.612	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
21426	93.914		ISU World Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
16797	88.018	Almaty	World Cup (1)	\N	\N	\N	\N	\N
15197	89.087	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
20072	90.990	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
16678	92.998	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
7636	83.251	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
14590	87.547	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15512	90.264	Montreal	World Cup	\N	\N	\N	\N	\N
25291	91.224	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14791	88.375	Montreal	World Cup	\N	\N	\N	\N	\N
9119	87.233	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
25766	97.965	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
29181	91.280	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
19776	89.240	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
16402	93.248	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15776	91.578	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
27328	94.670	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
14965	90.689	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
7811	84.656	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8016	85.959		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
27273	98.756	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
14749	88.840	Almaty	World Cup (1)	\N	\N	\N	\N	\N
8624	87.219	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
7744	82.458	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
14333	83.476	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
59517	86.227	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
13830	96.934	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
8025	83.741	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9004	86.376	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
44217	87.516	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
26662	97.736	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15178	90.696	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
12050	87.681	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8432	87.342	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
9452	86.476	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8303	86.040	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15465	89.128	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
9490	88.055	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8862	83.814	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
15125	87.817	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
8573	83.456	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7667	85.994	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
11696	89.705	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8703	86.954	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8855	87.171	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
8226	84.336		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
8362	83.608	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
7642	85.162	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
9079	85.452	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
7622	83.021	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
9901	85.856	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8732	84.851	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7852	82.669	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
12448	96.379		ISU World Short Track Championships 2017	\N	\N	\N	\N	\N
7931	84.750	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8332	84.573	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
7682	85.004	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
10357	88.636	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7673	84.387	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7949	84.741	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
9064	85.161	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
7617	83.163	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
45411	85.848	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7701	83.656	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9088	83.703	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
16554	89.009	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
8400	87.253	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
8342	85.897	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14992	90.761		ISU World Short Track Championships 2017	\N	\N	\N	\N	\N
27348	94.651	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
20541	92.972	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10261	87.094	Debrecen (HUN)	ISU World Cup	\N	\N	\N	\N	\N
24598	97.026	Montreal	World Cup	\N	\N	\N	\N	\N
7644	82.283	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
16751	91.089	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
21177	91.276	Almaty	World Cup (2)	\N	\N	\N	\N	\N
12856	89.526	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
15004	90.385	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7655	84.783	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
73551	93.763	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
9465	89.923	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
16772	89.112	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9296	89.162	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
17456	90.261	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9744	84.834	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
65022	85.849	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
9858	86.417	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
14347	87.217	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9654	87.753		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9558	87.448	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
67596	95.826	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8759	83.827	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
8826	84.753	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8133	86.195	Sofia (BUL)	ISU World Short Track Championships 2019	\N	\N	\N	\N	\N
12667	91.865		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
7663	83.871	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8381	86.284	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9040	86.068	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
7643	82.494	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8565	85.943	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8045	84.180	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
11125	88.190	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
7625	82.249	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
7631	83.474	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
8497	83.380	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
7662	83.250	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8004	83.774	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
7747	83.561	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
7681	83.593	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7657	83.455	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
25285	94.628	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
10023	86.385	Montreal (CAN)	ISU Four Continents Short Track Championships 2020	\N	\N	\N	\N	\N
31490	85.387	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9859	89.093		ISU World Short Track Championships 2017	\N	\N	\N	\N	\N
8177	82.607	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
7745	83.751	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
74173	108.682	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
64441	83.711	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7980	84.032	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
11135	84.054	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
7776	84.001	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8375	84.538	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
10553	92.355		ISU World Short Track Championships 2017	\N	\N	\N	\N	\N
54330	87.146	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
67005	88.146	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9283	86.645	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8756	88.502	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8212	85.180	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
68321	90.890	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8619	83.957	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
66982	86.614	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8033	83.604	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8108	84.134	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
9086	86.794	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7743	83.140		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
7751	83.805	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8716	87.494	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7857	82.386	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8287	85.832	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8235	87.806	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8211	87.621	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7896	85.738	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9609	87.448	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
7864	86.794	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7795	84.231	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8554	84.760	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
8395	85.944	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7938	85.059	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8013	85.225	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
74174	110.024	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
22953	97.760	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
23146	92.483		ISU Shanghai Trophy 2019	\N	\N	\N	\N	\N
27808	98.576	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
19935	91.062	Salt Lake City	World Cup	\N	\N	\N	\N	\N
26982	100.691	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
27232	99.955	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
15115	87.542	Almaty	World Cup (1)	\N	\N	\N	\N	\N
26936	101.788	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
28433	109.108	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
28240	103.544	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
28287	106.589	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
28462	105.883	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
74189	100.561	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
28316	106.221	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
22302	89.854	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
17531	93.698	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
21658	91.784	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
24180	93.789	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
24146	91.701	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
18992	92.153	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
15166	90.125	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
22183	92.602	Almaty	World Cup (2)	\N	\N	\N	\N	\N
14606	88.865	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
15696	91.246	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10308	84.002	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
15652	91.247	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
14761	90.165	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
20439	93.759	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
27977	98.938	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
17856	89.669	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
19953	92.477	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
14576	88.006	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
9061	87.561	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
20931	94.086	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
15964	88.864	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14862	86.982	Almaty	World Cup (2)	\N	\N	\N	\N	\N
18834	88.982	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
16672	90.055	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
22743	93.512	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
21298	92.500	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
15431	89.151	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
23711	94.068	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
27639	94.693	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
23454	94.297	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
74707	91.773	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
14552	87.502	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
14572	88.097	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7736	85.204	Debrecen (HUN)	ISU World Cup	\N	\N	\N	\N	\N
10507	86.396	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
11939	84.153	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8097	83.824	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7616	82.356	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
8117	83.973	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7781	84.164	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
7645	83.230	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7715	83.907	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7711	83.263	Debrecen (HUN)	ISU World Cup	\N	\N	\N	\N	\N
7779	83.741	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7628	83.682		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
9634	87.342	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
12392	87.013	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10342	87.345	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9199	88.939	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8603	86.904	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
8141	85.668	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10534	89.252	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
14259	85.534	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
10287	88.979	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
13232	93.407	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
12277	87.777	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
12413	88.397	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8793	86.378	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
8496	85.208	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8123	84.252	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9923	84.407	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
9315	86.300	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
9028	86.316	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8433	84.128	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
7772	83.352	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7688	83.772	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
7817	84.084	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9360	84.907	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
\.


--
-- Data for Name: results_1500; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.results_1500 (skater_id, all_time_best, all_time_location, all_time_competition_name, all_time_date, season_best, season_location, season_competition_name, season_date) FROM stdin;
29834	136.560	Quebec City	\N	\N	137.087	Laval	\N	\N
55987	\N	\N	\N	\N	\N	\N	\N	\N
9658	139.659	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
17740	153.824	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
59636	140.843	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
27956	155.607	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
59635	141.864	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14198	140.737	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
46405	138.399	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
59521	141.807	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14552	141.338	Budapest (HUN)	Audi ISU World Cup	\N	\N	\N	\N	\N
17277	142.980	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
66659	146.884	Gdansk (POL)	ISU European Short Track Championships 2023	\N	\N	\N	\N	\N
14890	139.547	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
8123	134.509	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
23850	155.583	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
59558	136.261	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
46484	137.983	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14452	138.600	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14992	141.465	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
67016	147.540	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
59633	134.690	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
61135	138.077	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
45298	140.304	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
46412	134.093	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
61595	160.449		ISU European Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
19328	158.980		ISU Shanghai Trophy 2017	\N	\N	\N	\N	\N
16759	139.629	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8107	134.413	Dordrecht (NED)	ISU European Short Track Championships 2019	\N	\N	\N	\N	\N
27151	145.528	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
28471	173.483	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
8156	134.645	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
8874	137.411	\N	\N	\N	\N	\N	\N	\N
7623	129.254		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
8485	135.782	\N	\N	\N	\N	\N	\N	\N
9296	138.645	\N	\N	\N	\N	\N	\N	\N
7801	132.760	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
24671	143.008	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
26500	157.491	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
15004	144.311	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
17723	148.115	Debrecen (HUN)	ISU World Cup	\N	\N	\N	\N	\N
15003	146.874	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
25171	155.458	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
28462	179.416	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
61895	157.019		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
28475	173.586	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
8188	134.755	\N	\N	\N	\N	\N	\N	\N
27985	162.037	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
17856	157.472	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
27999	164.341	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
28458	177.224	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
26730	155.543	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
61964	149.846		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
59614	141.279	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7627	129.559	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
26482	157.070	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
60295	148.473		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
61917	155.237		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
61896	153.554		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
61924	160.864		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
61958	149.015		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
61937	167.097		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
61979	171.786		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
7994	133.865	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
10678	142.369	\N	\N	\N	\N	\N	\N	\N
61963	148.439		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
60501	135.254		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
28175	159.993	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
17430	142.739	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
20439	149.984	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
14573	141.894	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
15013	144.984	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
12716	150.974	\N	\N	\N	\N	\N	\N	\N
13513	160.679	\N	\N	\N	\N	\N	\N	\N
14874	136.635	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
13531	160.989	\N	\N	\N	\N	\N	\N	\N
14830	138.891	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
11825	146.268	\N	\N	\N	\N	\N	\N	\N
15163	141.952	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
18071	140.488	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
22599	152.968	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
27617	157.100	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7980	133.799		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
15964	139.364	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
21433	158.728	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
27348	150.360	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
10115	140.828	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
9378	138.853	\N	\N	\N	\N	\N	\N	\N
19274	145.276	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
11234	144.004	\N	\N	\N	\N	\N	\N	\N
15938	144.942	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
10266	141.229	\N	\N	\N	\N	\N	\N	\N
15133	143.640	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9611	139.528	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
13477	160.094	\N	\N	\N	\N	\N	\N	\N
10629	142.227	\N	\N	\N	\N	\N	\N	\N
69947	144.059	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
15110	137.794	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
12619	143.598	Gdansk (POL)	ISU European Short Track Championships 2023	\N	\N	\N	\N	\N
13696	159.775	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
62604	146.223	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
34378	145.332	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
62569	139.673	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
13714	168.867	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
12420	149.238	\N	\N	\N	\N	\N	\N	\N
59525	138.337	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
60300	146.182	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
67048	150.627	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9344	137.012	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
13848	179.730	\N	\N	\N	\N	\N	\N	\N
9655	139.653	\N	\N	\N	\N	\N	\N	\N
9519	137.098	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
67032	144.875	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
13239	155.229	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
97686	164.787	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
32795	149.957	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67022	138.203	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
16364	154.880	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
59566	147.796	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
62559	147.554	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27951	157.239	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28126	160.007	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
67001	148.473	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94423	160.354	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
12767	151.295	\N	\N	\N	\N	\N	\N	\N
14791	147.962	Almaty	World Cup (1)	\N	\N	\N	\N	\N
62521	136.797	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
14871	139.835	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
28312	163.342	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28161	172.792	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28005	152.717	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28085	159.057	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
28536	176.626	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
15531	140.712	Almaty	World Cup (2)	\N	\N	\N	\N	\N
20983	145.723	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
23813	156.156		ISU European Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
19548	143.435	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
97766	145.260	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
20313	147.136	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
30256	144.737	Almaty	World Cup (1)	\N	\N	\N	\N	\N
17126	143.528	Salt Lake City	World Cup	\N	\N	\N	\N	\N
9188	138.410		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
28405	160.611	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15201	139.138	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
10401	141.623	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
19935	139.137	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
10230	141.118	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
11580	145.262	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
25853	150.242	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
26608	147.224	Almaty	World Cup (1)	\N	\N	\N	\N	\N
94073	160.204	Gdansk (POL)	ISU European Short Track Championships 2023	\N	\N	\N	\N	\N
14605	138.181	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
18759	147.632	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
15197	145.459	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
22183	146.772	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
8612	136.330	\N	\N	\N	\N	\N	\N	\N
8984	137.784	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
17391	142.882		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
20712	152.029	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
14572	139.739	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
23796	148.893	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
24349	154.299		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
28176	159.375		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
19776	142.265	Budapest (HUN)	Audi ISU World Cup	\N	\N	\N	\N	\N
22721	147.018	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
28082	158.771		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
20608	148.711	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
28400	160.969		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
27256	149.676		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
23483	159.541		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
27882	163.315		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
22902	146.759	Montreal (CAN)	ISU Four Continents Short Track Championships 2020	\N	\N	\N	\N	\N
21914	149.598	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
19683	139.623		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
19536	142.575		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
26721	149.959	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
20704	149.846	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14559	134.354	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
14677	140.554	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
14744	138.712		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
25229	149.296		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
16554	139.945	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
15366	142.002	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
14644	139.931	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
15115	141.087	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
18260	143.315		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
14581	138.945	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14769	140.287	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15248	138.266	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
28923	139.067	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
15078	136.882	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
20997	141.278		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
17402	141.456		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
22463	154.309	Montreal (CAN)	ISU Four Continents Short Track Championships 2020	\N	\N	\N	\N	\N
15548	138.794	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14539	137.739		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
94274	153.236	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
15402	138.963	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
18519	141.054	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14935	140.953	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
25231	147.621	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
27328	146.832		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
8495	135.813	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
14551	137.865		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
14862	138.711		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
14599	139.432		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
14557	145.850		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
9465	139.102	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
94301	151.239	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66951	136.821	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
33015	136.295	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66637	139.052	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66999	142.102	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
12627	144.580	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
26661	149.133	Salt Lake City	Four Continents	\N	\N	\N	\N	\N
66990	140.309	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
28361	162.967	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8258	135.024	\N	\N	\N	\N	\N	\N	\N
32985	141.310	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
19023	152.445	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
66993	138.534	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66964	141.113	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
24922	147.918	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
31490	135.443	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94272	153.314	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67003	133.961	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
27825	157.761	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
67025	142.874	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
16199	143.124	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
67009	131.066	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7630	129.681	\N	\N	\N	\N	\N	\N	\N
20769	145.612	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
66989	139.040	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66980	137.866	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
14590	139.234	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
66981	132.004	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66961	132.167	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7855	132.569	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66987	134.509	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66967	136.118	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66974	133.025	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
19180	141.475	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
94278	161.098	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7720	131.988		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
26918	161.265		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
17545	145.644		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
14576	143.588	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
94289	159.614	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
27456	152.268	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9004	137.854	\N	\N	\N	\N	\N	\N	\N
23100	144.988	Almaty	World Cup (1)	\N	\N	\N	\N	\N
7665	131.169		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
7618	129.219		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
7878	133.310	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
18038	144.340	Salt Lake City	World Cup	\N	\N	\N	\N	\N
21231	144.967	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7750	132.331	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8826	137.241	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
8536	135.993	\N	\N	\N	\N	\N	\N	\N
7811	132.842	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
45963	144.855	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8649	136.520	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8285	135.148	Dordrecht (NED)	ISU European Short Track Championships 2019	\N	\N	\N	\N	\N
21470	150.997	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8196	134.780	\N	\N	\N	\N	\N	\N	\N
7614	128.655	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
60488	133.278	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
30334	149.483	Salt Lake City	Four Continents	\N	\N	\N	\N	\N
14910	150.216	Salt Lake City	Four Continents	\N	\N	\N	\N	\N
62572	136.348	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
10261	141.214	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
94281	149.347	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7612	127.943	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
62567	138.894	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
60566	145.739	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
59515	139.472	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7613	128.646	\N	\N	\N	\N	\N	\N	\N
28174	161.833	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
34073	137.831		ISU Shanghai Trophy 2016	\N	\N	\N	\N	\N
8400	135.480	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
94304	148.193	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
24074	146.849	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
8411	135.517	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
7654	130.923	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9500	139.202	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
66949	143.759	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
94260	153.732	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94256	153.840	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
27565	152.979	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
9520	139.255	\N	\N	\N	\N	\N	\N	\N
65022	140.270	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
63826	155.467		ISU Shanghai Trophy 2016	\N	\N	\N	\N	\N
7950	133.663	\N	\N	\N	\N	\N	\N	\N
28318	156.625	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
28303	161.833	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94279	151.961	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
59569	136.603	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15136	143.493	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
94268	152.851	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
60522	140.152	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
28285	156.607	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
28387	161.443	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94265	155.251	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
17746	156.115	Salt Lake City	World Cup	\N	\N	\N	\N	\N
94098	156.607	Gdansk (POL)	ISU European Short Track Championships 2023	\N	\N	\N	\N	\N
9064	135.656	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
7673	131.294	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
12667	150.603	\N	\N	\N	\N	\N	\N	\N
21950	150.667	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
7682	131.514	\N	\N	\N	\N	\N	\N	\N
7690	131.602	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
28372	156.562	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
28132	152.800	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
26056	147.737	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8509	135.852	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
8108	134.419	\N	\N	\N	\N	\N	\N	\N
20996	143.532	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
9040	137.961	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
25111	147.338	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
45411	139.744	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8855	137.341	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7667	131.183	\N	\N	\N	\N	\N	\N	\N
8573	136.168	\N	\N	\N	\N	\N	\N	\N
7701	132.565	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
8732	136.906	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
11125	143.663	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
26887	158.707	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
22986	149.752	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
28137	155.766	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7636	129.932		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
59517	139.580		ISU European Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
7625	129.364	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
84652	189.553	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7642	130.314	\N	\N	\N	\N	\N	\N	\N
8432	135.577	\N	\N	\N	\N	\N	\N	\N
7643	130.395	\N	\N	\N	\N	\N	\N	\N
7622	129.244	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8862	132.767	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7617	129.953		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
14333	137.926		ISU World Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
7662	131.126	\N	\N	\N	\N	\N	\N	\N
7681	131.501	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7657	130.977	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
27858	154.242		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
27950	153.215	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
24395	152.586	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27823	157.701	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
28186	163.460		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
84770	144.886	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
18235	146.770	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
27103	153.301	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
21626	158.095		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9578	139.423	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
27613	152.183	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
27932	175.175		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
15298	146.924	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
15064	143.279	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8028	134.033	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
7677	131.430	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
16198	146.057	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
18347	146.247	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
18965	147.126	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
22508	148.171	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
22271	145.417	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
19878	149.384	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
16075	149.590	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27052	152.368	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
27906	154.144	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
18396	147.944	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
84765	153.058	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
23148	156.477	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
19165	143.602	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
8097	134.360	\N	\N	\N	\N	\N	\N	\N
7688	131.584		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
15652	142.414	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
7909	133.468	\N	\N	\N	\N	\N	\N	\N
14592	142.716	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7789	132.602	\N	\N	\N	\N	\N	\N	\N
14629	142.575	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
7653	130.841		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
94302	148.192	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
19375	148.044	Salt Lake City	Four Continents	\N	\N	\N	\N	\N
22013	152.087	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9248	138.553	\N	\N	\N	\N	\N	\N	\N
28261	160.845		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
28409	166.557		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
28107	160.589		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
28152	163.741	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
27072	156.555		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
28223	179.359		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
18499	140.931		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
28324	155.816		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
21467	157.531		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
26751	155.592		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
28140	167.838		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
28448	171.693		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
28346	167.916		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
25939	158.566	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
19391	157.202	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
94303	143.172	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
20433	143.928	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94345	148.359	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9292	138.636	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
9061	138.012	\N	\N	\N	\N	\N	\N	\N
26253	153.004	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
66959	142.708	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
32979	147.748	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
17749	142.341	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
18535	140.913	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
8624	136.396	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
67162	142.700	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15806	148.234	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8759	137.002	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
8133	134.538	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9079	138.094	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
24824	146.871	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8177	134.728	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
19382	149.704	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
18615	147.479	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
19320	147.076	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
18000	142.888	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
14751	138.741		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
26063	145.813	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
17170	141.644	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27646	158.497	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
18114	143.694	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
17303	147.281	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8395	135.457	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
7795	132.689	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
26662	156.020	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
20499	142.274		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
16885	145.194	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
8554	136.076	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
17696	142.440	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
23757	153.749	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
20541	144.790	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
66982	137.599	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
26799	174.197	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9569	138.229	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
67005	140.724	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9434	139.014	Debrecen (HUN)	ISU World Cup	\N	\N	\N	\N	\N
7658	130.999		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
8013	133.971	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7803	132.782	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
68321	138.822	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
21499	140.248		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
7638	130.058	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7949	133.657	\N	\N	\N	\N	\N	\N	\N
7645	130.498	\N	\N	\N	\N	\N	\N	\N
8716	136.846	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
15776	154.664	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15924	139.926	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7736	132.219	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
9315	138.687	Debrecen (HUN)	ISU European Short Track Championships 2020	\N	\N	\N	\N	\N
9199	138.445	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
14259	137.925	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
10342	140.451	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8793	135.543	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
13232	152.917	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
25291	149.136	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7744	132.295	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8496	135.817	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8603	136.272	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
25766	153.396	Budapest (HUN)	Audi ISU World Cup	\N	\N	\N	\N	\N
17023	146.632	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
8141	134.599	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
9634	137.927	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7779	132.546	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
7711	131.909	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8117	134.491	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
29181	147.849	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8433	135.214	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
15741	147.085	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
7715	131.948	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
7628	129.622		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
7743	132.271	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8522	135.924	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7751	132.334	\N	\N	\N	\N	\N	\N	\N
7781	132.553	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
14589	139.721	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
15465	140.526	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
23938	145.154	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
20471	147.748	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
14950	144.721	Montreal	World Cup	\N	\N	\N	\N	\N
14668	138.240	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7616	129.185	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
14616	148.099	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
15934	145.673	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
16797	146.351	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
25809	147.512	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27437	150.125	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
23409	145.044	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
19030	152.436	Almaty	World Cup (1)	\N	\N	\N	\N	\N
22266	150.373	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
15155	148.981		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
29776	150.687	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15178	139.972	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
15317	144.462	Almaty	World Cup (1)	\N	\N	\N	\N	\N
14732	144.042	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
15353	145.713	Almaty	World Cup (1)	\N	\N	\N	\N	\N
94374	158.771	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
16672	145.636	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
18453	150.559	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
20072	143.607		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
14542	135.753	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
22027	151.727	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
14536	138.303		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
94775	153.262	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
93286	144.805	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
21426	144.833	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
17346	146.929	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
16055	144.130	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
21755	144.492		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
24800	162.119		ISU Shanghai Trophy 2016	\N	\N	\N	\N	\N
16446	145.219	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
16368	142.954	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
15166	142.747	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
18801	147.591		ISU World Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
15101	144.797		ISU Shanghai Trophy 2016	\N	\N	\N	\N	\N
14636	142.234	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
17942	145.214	Salt Lake City	World Cup	\N	\N	\N	\N	\N
21177	146.767	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
27552	148.643	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
16678	148.574	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14761	147.470		ISU European Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
14564	140.346		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
26117	142.092	Salt Lake City	World Cup	\N	\N	\N	\N	\N
28737	145.272	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
24806	149.381	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
25031	143.999	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
14606	148.495	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
20265	149.321	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
14754	146.655	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
15114	137.851		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
17193	140.150		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
94823	152.755	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
16751	144.371	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14543	150.154	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9102	136.468	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14749	141.675	Almaty	World Cup (1)	\N	\N	\N	\N	\N
19505	141.470	Almaty	World Cup (1)	\N	\N	\N	\N	\N
92577	147.140	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
14566	143.368	Salt Lake City	World Cup	\N	\N	\N	\N	\N
23763	144.376	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
16694	142.645	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
16301	146.305	Almaty	World Cup (1)	\N	\N	\N	\N	\N
26971	146.704	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
23234	141.260	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
19265	142.658		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
15696	143.313	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
14721	142.533	Almaty	World Cup (2)	\N	\N	\N	\N	\N
18394	150.787	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
18309	146.132	Montreal	World Cup	\N	\N	\N	\N	\N
28241	155.237	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
7727	132.091	\N	\N	\N	\N	\N	\N	\N
8008	133.948	\N	\N	\N	\N	\N	\N	\N
73551	145.960	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
24598	154.370	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
25285	159.251	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
19041	141.316	Montreal	World Cup	\N	\N	\N	\N	\N
23087	143.073	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
24670	146.848	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
27744	153.526	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
94007	153.044	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15328	149.828	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
15125	143.986	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14743	141.366	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
15512	141.319	Montreal	World Cup	\N	\N	\N	\N	\N
20931	165.752	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
17456	145.596	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
28287	170.406	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
28433	179.006	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
9503	139.206	\N	\N	\N	\N	\N	\N	\N
9946	140.415	\N	\N	\N	\N	\N	\N	\N
9918	140.372	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8575	136.179	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
27232	163.920	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
15487	150.791	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
21592	146.969	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7819	132.866	\N	\N	\N	\N	\N	\N	\N
22302	143.487	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
28316	168.191	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
22953	147.629	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
21658	144.629	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
17531	147.665	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
26899	153.271	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
19953	147.949		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
28240	166.790	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
24146	146.689	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
24378	148.443	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
18992	145.271	Debrecen (HUN)	ISU World Cup	\N	\N	\N	\N	\N
74363	147.920	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
21371	146.763	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
18376	147.743	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
26936	158.348	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
26982	164.475	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
27808	159.236	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
74173	151.017	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
28022	151.031	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
21299	147.048	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
26684	147.194	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
8264	135.048	\N	\N	\N	\N	\N	\N	\N
27347	158.949	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
19942	149.519	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
18834	142.127	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
16869	144.872		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
17656	146.366	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
16772	143.851	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
14660	145.134		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
27977	152.848	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
22743	152.692	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
21298	145.978	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
15431	141.468	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
27639	155.268	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
26264	154.773	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
23454	165.031	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
74707	150.077	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10724	142.499	\N	\N	\N	\N	\N	\N	\N
10574	142.060	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
14597	149.582		ISU Shanghai Trophy 2016	\N	\N	\N	\N	\N
7833	133.015	\N	\N	\N	\N	\N	\N	\N
18503	150.279	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
10253	141.195	\N	\N	\N	\N	\N	\N	\N
9375	138.849	\N	\N	\N	\N	\N	\N	\N
9685	139.724	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
9898	140.336	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
9003	137.853	\N	\N	\N	\N	\N	\N	\N
8786	137.090	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
11059	143.421	\N	\N	\N	\N	\N	\N	\N
9065	138.040	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8719	136.861	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
8408	135.500	\N	\N	\N	\N	\N	\N	\N
9721	139.825	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8316	135.238	\N	\N	\N	\N	\N	\N	\N
9072	138.065	\N	\N	\N	\N	\N	\N	\N
8761	137.004	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
10517	141.890	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8287	133.832	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7748	132.317	\N	\N	\N	\N	\N	\N	\N
8667	136.611	\N	\N	\N	\N	\N	\N	\N
7886	133.327	\N	\N	\N	\N	\N	\N	\N
7817	132.861	\N	\N	\N	\N	\N	\N	\N
11331	144.367	\N	\N	\N	\N	\N	\N	\N
8375	135.393	\N	\N	\N	\N	\N	\N	\N
11557	141.265	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8651	136.522	\N	\N	\N	\N	\N	\N	\N
11783	146.090	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8550	136.070	\N	\N	\N	\N	\N	\N	\N
9237	138.526	\N	\N	\N	\N	\N	\N	\N
9216	138.500	\N	\N	\N	\N	\N	\N	\N
8064	134.200	\N	\N	\N	\N	\N	\N	\N
11302	143.952		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
9005	135.459	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9172	136.622	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9967	139.401	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8846	137.316	\N	\N	\N	\N	\N	\N	\N
8697	136.770	\N	\N	\N	\N	\N	\N	\N
11104	143.615	\N	\N	\N	\N	\N	\N	\N
8362	135.337	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7860	133.199	\N	\N	\N	\N	\N	\N	\N
10335	141.451	\N	\N	\N	\N	\N	\N	\N
11603	145.331	\N	\N	\N	\N	\N	\N	\N
7987	133.842	\N	\N	\N	\N	\N	\N	\N
9418	138.976	\N	\N	\N	\N	\N	\N	\N
11027	141.540	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8235	134.918	\N	\N	\N	\N	\N	\N	\N
11981	147.057	\N	\N	\N	\N	\N	\N	\N
9006	137.873	\N	\N	\N	\N	\N	\N	\N
11967	146.982	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
11927	146.801	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
12050	147.309	\N	\N	\N	\N	\N	\N	\N
7756	132.382	\N	\N	\N	\N	\N	\N	\N
9713	139.804	\N	\N	\N	\N	\N	\N	\N
8642	136.484	\N	\N	\N	\N	\N	\N	\N
9492	139.186	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
10287	141.311	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9543	139.324	\N	\N	\N	\N	\N	\N	\N
11738	145.908	\N	\N	\N	\N	\N	\N	\N
11135	143.678	\N	\N	\N	\N	\N	\N	\N
12379	149.001	\N	\N	\N	\N	\N	\N	\N
8601	136.268	\N	\N	\N	\N	\N	\N	\N
8431	135.572	\N	\N	\N	\N	\N	\N	\N
10392	141.605	\N	\N	\N	\N	\N	\N	\N
10046	140.657	\N	\N	\N	\N	\N	\N	\N
7813	132.844	\N	\N	\N	\N	\N	\N	\N
10308	135.672	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8756	136.994	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
9086	138.115	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
11105	143.617	\N	\N	\N	\N	\N	\N	\N
12466	149.453	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
10351	141.504	\N	\N	\N	\N	\N	\N	\N
8983	137.783	\N	\N	\N	\N	\N	\N	\N
8853	137.333	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9660	139.660	\N	\N	\N	\N	\N	\N	\N
12150	147.880	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
12540	138.728		ISU European Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
10288	141.314	\N	\N	\N	\N	\N	\N	\N
11461	138.051	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
10689	142.393	\N	\N	\N	\N	\N	\N	\N
10842	142.792	\N	\N	\N	\N	\N	\N	\N
10632	142.237	\N	\N	\N	\N	\N	\N	\N
7808	132.823	\N	\N	\N	\N	\N	\N	\N
7669	131.214	\N	\N	\N	\N	\N	\N	\N
7852	133.153	\N	\N	\N	\N	\N	\N	\N
11485	144.860	\N	\N	\N	\N	\N	\N	\N
9796	140.013	\N	\N	\N	\N	\N	\N	\N
12652	150.458	\N	\N	\N	\N	\N	\N	\N
12633	150.302	\N	\N	\N	\N	\N	\N	\N
11700	145.747	\N	\N	\N	\N	\N	\N	\N
12477	149.482	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
12225	143.236	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10284	141.302	\N	\N	\N	\N	\N	\N	\N
11970	146.999	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
12339	148.801	\N	\N	\N	\N	\N	\N	\N
7776	132.535	\N	\N	\N	\N	\N	\N	\N
7629	129.660	\N	\N	\N	\N	\N	\N	\N
8743	136.941	\N	\N	\N	\N	\N	\N	\N
9516	139.243	\N	\N	\N	\N	\N	\N	\N
9203	138.454	\N	\N	\N	\N	\N	\N	\N
11554	143.195	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8677	136.686	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7896	133.404	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
8727	136.890	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
9360	137.937	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
12688	150.781	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
7655	130.937	\N	\N	\N	\N	\N	\N	\N
10886	142.895	\N	\N	\N	\N	\N	\N	\N
9748	139.882	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
9781	139.975	\N	\N	\N	\N	\N	\N	\N
9622	139.562	\N	\N	\N	\N	\N	\N	\N
12356	148.888	\N	\N	\N	\N	\N	\N	\N
8748	136.975	\N	\N	\N	\N	\N	\N	\N
9524	137.580	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9239	138.533	\N	\N	\N	\N	\N	\N	\N
9609	135.719	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8422	135.543	\N	\N	\N	\N	\N	\N	\N
9283	137.322	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
12413	141.963	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7881	133.320	\N	\N	\N	\N	\N	\N	\N
8348	133.987	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7615	128.872	\N	\N	\N	\N	\N	\N	\N
8226	133.949		ISU Shanghai Trophy 2016	\N	\N	\N	\N	\N
7631	129.723	\N	\N	\N	\N	\N	\N	\N
8303	135.196	\N	\N	\N	\N	\N	\N	\N
8640	136.480	\N	\N	\N	\N	\N	\N	\N
8033	134.064	\N	\N	\N	\N	\N	\N	\N
8913	137.555	\N	\N	\N	\N	\N	\N	\N
11842	146.365	\N	\N	\N	\N	\N	\N	\N
11552	145.129	\N	\N	\N	\N	\N	\N	\N
10515	141.887	\N	\N	\N	\N	\N	\N	\N
7680	131.482	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9171	138.357	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
11002	143.238	\N	\N	\N	\N	\N	\N	\N
9119	137.107	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9647	139.620	\N	\N	\N	\N	\N	\N	\N
10666	142.344	\N	\N	\N	\N	\N	\N	\N
8816	137.202	\N	\N	\N	\N	\N	\N	\N
8322	135.242	\N	\N	\N	\N	\N	\N	\N
8565	136.130	\N	\N	\N	\N	\N	\N	\N
9887	140.305	\N	\N	\N	\N	\N	\N	\N
9452	139.064	\N	\N	\N	\N	\N	\N	\N
12523	141.967	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7892	133.369	\N	\N	\N	\N	\N	\N	\N
8016	133.978	\N	\N	\N	\N	\N	\N	\N
13219	155.806	\N	\N	\N	\N	\N	\N	\N
8345	135.317	\N	\N	\N	\N	\N	\N	\N
9895	140.326	\N	\N	\N	\N	\N	\N	\N
7924	133.566	\N	\N	\N	\N	\N	\N	\N
11764	146.022	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
9744	132.284	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
11427	139.064	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
11131	143.672	\N	\N	\N	\N	\N	\N	\N
9923	137.619	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
11696	145.725	\N	\N	\N	\N	\N	\N	\N
9920	140.374	\N	\N	\N	\N	\N	\N	\N
11476	144.817	\N	\N	\N	\N	\N	\N	\N
11139	141.299	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
10989	143.184	\N	\N	\N	\N	\N	\N	\N
9105	138.171	\N	\N	\N	\N	\N	\N	\N
7734	132.204	\N	\N	\N	\N	\N	\N	\N
9104	138.165	\N	\N	\N	\N	\N	\N	\N
8265	135.060	\N	\N	\N	\N	\N	\N	\N
8332	135.269	\N	\N	\N	\N	\N	\N	\N
7931	133.581	\N	\N	\N	\N	\N	\N	\N
7621	129.240	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
9579	139.427	\N	\N	\N	\N	\N	\N	\N
7971	133.751	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8725	136.884	\N	\N	\N	\N	\N	\N	\N
11850	146.404	\N	\N	\N	\N	\N	\N	\N
11344	144.398	\N	\N	\N	\N	\N	\N	\N
9989	140.534	\N	\N	\N	\N	\N	\N	\N
12467	149.455	\N	\N	\N	\N	\N	\N	\N
12221	148.255	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
12412	149.218	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
10006	140.566	\N	\N	\N	\N	\N	\N	\N
11129	143.669	\N	\N	\N	\N	\N	\N	\N
13303	157.168	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
10228	141.116	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
12167	147.945	\N	\N	\N	\N	\N	\N	\N
10009	140.569	\N	\N	\N	\N	\N	\N	\N
11237	144.020	\N	\N	\N	\N	\N	\N	\N
12197	148.127	\N	\N	\N	\N	\N	\N	\N
13283	156.782	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8768	137.035	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
10964	143.096	\N	\N	\N	\N	\N	\N	\N
12586	150.011	\N	\N	\N	\N	\N	\N	\N
11807	146.212	\N	\N	\N	\N	\N	\N	\N
12306	148.620	\N	\N	\N	\N	\N	\N	\N
12585	142.375	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
12059	147.347	\N	\N	\N	\N	\N	\N	\N
8296	135.172	\N	\N	\N	\N	\N	\N	\N
13299	157.080	\N	\N	\N	\N	\N	\N	\N
7864	133.221	\N	\N	\N	\N	\N	\N	\N
8763	137.007	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
7639	130.176		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
9859	140.200	\N	\N	\N	\N	\N	\N	\N
7772	132.518	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8474	135.440		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
8004	133.927	\N	\N	\N	\N	\N	\N	\N
8025	134.026	\N	\N	\N	\N	\N	\N	\N
9088	138.129	\N	\N	\N	\N	\N	\N	\N
7747	132.310	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
12125	147.775	\N	\N	\N	\N	\N	\N	\N
8566	136.130	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
12856	152.035	\N	\N	\N	\N	\N	\N	\N
13570	162.023	\N	\N	\N	\N	\N	\N	\N
11612	145.376	\N	\N	\N	\N	\N	\N	\N
9901	139.310	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9654	139.639	\N	\N	\N	\N	\N	\N	\N
7663	131.165	\N	\N	\N	\N	\N	\N	\N
11079	143.503	\N	\N	\N	\N	\N	\N	\N
9109	138.179	\N	\N	\N	\N	\N	\N	\N
13230	155.989	\N	\N	\N	\N	\N	\N	\N
10507	140.784	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9093	138.136	\N	\N	\N	\N	\N	\N	\N
9490	139.175	\N	\N	\N	\N	\N	\N	\N
11930	146.817	\N	\N	\N	\N	\N	\N	\N
12392	139.733	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
12277	142.398	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
12944	152.759	\N	\N	\N	\N	\N	\N	\N
12995	153.167	\N	\N	\N	\N	\N	\N	\N
13476	160.084	\N	\N	\N	\N	\N	\N	\N
13345	157.988	\N	\N	\N	\N	\N	\N	\N
12444	149.338	\N	\N	\N	\N	\N	\N	\N
13263	156.447	\N	\N	\N	\N	\N	\N	\N
13523	160.878	\N	\N	\N	\N	\N	\N	\N
11100	143.609	\N	\N	\N	\N	\N	\N	\N
9861	140.202	\N	\N	\N	\N	\N	\N	\N
9046	137.977	\N	\N	\N	\N	\N	\N	\N
11193	143.868	\N	\N	\N	\N	\N	\N	\N
13579	162.297	\N	\N	\N	\N	\N	\N	\N
11130	143.670	\N	\N	\N	\N	\N	\N	\N
11215	143.936	\N	\N	\N	\N	\N	\N	\N
11834	146.319	\N	\N	\N	\N	\N	\N	\N
13455	159.785	\N	\N	\N	\N	\N	\N	\N
12229	148.289	\N	\N	\N	\N	\N	\N	\N
13618	157.485		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
9284	138.619	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
7799	132.746	\N	\N	\N	\N	\N	\N	\N
8703	136.807	\N	\N	\N	\N	\N	\N	\N
7872	132.637	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8494	135.813	\N	\N	\N	\N	\N	\N	\N
11305	144.272	\N	\N	\N	\N	\N	\N	\N
9558	139.383	\N	\N	\N	\N	\N	\N	\N
9432	139.004	\N	\N	\N	\N	\N	\N	\N
13632	163.941	\N	\N	\N	\N	\N	\N	\N
8504	135.844	\N	\N	\N	\N	\N	\N	\N
10534	137.742	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
11593	145.302	\N	\N	\N	\N	\N	\N	\N
13642	164.313	\N	\N	\N	\N	\N	\N	\N
7933	133.590	\N	\N	\N	\N	\N	\N	\N
13514	160.683	\N	\N	\N	\N	\N	\N	\N
13630	163.849	\N	\N	\N	\N	\N	\N	\N
13253	156.362	\N	\N	\N	\N	\N	\N	\N
7723	132.003	\N	\N	\N	\N	\N	\N	\N
9091	138.134	\N	\N	\N	\N	\N	\N	\N
10844	142.800	\N	\N	\N	\N	\N	\N	\N
7676	131.392	\N	\N	\N	\N	\N	\N	\N
9134	138.258	\N	\N	\N	\N	\N	\N	\N
10357	141.405		ISU World Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
12448	149.362	\N	\N	\N	\N	\N	\N	\N
8381	135.430	\N	\N	\N	\N	\N	\N	\N
10312	141.382	\N	\N	\N	\N	\N	\N	\N
13158	155.038	\N	\N	\N	\N	\N	\N	\N
12640	150.354	\N	\N	\N	\N	\N	\N	\N
13724	169.668	\N	\N	\N	\N	\N	\N	\N
7741	132.259	\N	\N	\N	\N	\N	\N	\N
9727	139.835	\N	\N	\N	\N	\N	\N	\N
10482	141.642	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
8988	137.794	\N	\N	\N	\N	\N	\N	\N
10390	141.603	\N	\N	\N	\N	\N	\N	\N
7956	133.685	\N	\N	\N	\N	\N	\N	\N
13812	175.136	\N	\N	\N	\N	\N	\N	\N
8168	134.696	\N	\N	\N	\N	\N	\N	\N
9089	138.129	\N	\N	\N	\N	\N	\N	\N
7851	133.148	\N	\N	\N	\N	\N	\N	\N
11939	146.854	\N	\N	\N	\N	\N	\N	\N
9511	139.230	\N	\N	\N	\N	\N	\N	\N
9858	140.196	\N	\N	\N	\N	\N	\N	\N
8342	135.306	\N	\N	\N	\N	\N	\N	\N
9788	139.845	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7635	129.928	\N	\N	\N	\N	\N	\N	\N
12709	150.933	\N	\N	\N	\N	\N	\N	\N
8045	134.126	\N	\N	\N	\N	\N	\N	\N
13830	161.110		ISU World Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
8497	132.926		ISU Shanghai Trophy 2016	\N	\N	\N	\N	\N
13794	173.900	\N	\N	\N	\N	\N	\N	\N
9412	138.963	\N	\N	\N	\N	\N	\N	\N
10553	142.011	\N	\N	\N	\N	\N	\N	\N
8187	133.027	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8009	133.955	\N	\N	\N	\N	\N	\N	\N
10058	140.684	\N	\N	\N	\N	\N	\N	\N
8212	134.858	\N	\N	\N	\N	\N	\N	\N
10023	138.232	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8211	134.857	\N	\N	\N	\N	\N	\N	\N
7857	131.934	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7938	133.607	\N	\N	\N	\N	\N	\N	\N
8619	136.370	\N	\N	\N	\N	\N	\N	\N
9028	136.151	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
7792	132.649	\N	\N	\N	\N	\N	\N	\N
13663	164.348		ISU European Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
7978	133.785	\N	\N	\N	\N	\N	\N	\N
8744	136.944	\N	\N	\N	\N	\N	\N	\N
9952	140.438	\N	\N	\N	\N	\N	\N	\N
10286	141.284	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7620	129.240	\N	\N	\N	\N	\N	\N	\N
8376	135.399	\N	\N	\N	\N	\N	\N	\N
8192	134.763	\N	\N	\N	\N	\N	\N	\N
9631	139.581	\N	\N	\N	\N	\N	\N	\N
7644	130.485	\N	\N	\N	\N	\N	\N	\N
10108	140.816	\N	\N	\N	\N	\N	\N	\N
7745	132.295	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: results_500; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.results_500 (skater_id, all_time_best, all_time_location, all_time_competition_name, all_time_date, season_best, season_location, season_competition_name, season_date) FROM stdin;
29834	41.507	Laval	\N	\N	41.608	Laval	\N	\N
55987	46.680	Sherbrooke, Quebec	Canadian Junior Championships	\N	\N	\N	\N	\N
94073	48.437	Gdansk (POL)	ISU European Short Track Championships 2023	\N	\N	\N	\N	\N
9727	43.185	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
12640	46.056	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
13158	45.203	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
9658	42.191	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
64436	41.704	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7896	41.421	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
59635	41.969	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14552	42.335	\N	\N	\N	\N	\N	\N	\N
59521	41.375	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9503	43.648	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
19382	44.561	\N	\N	\N	\N	\N	\N	\N
19265	44.533	\N	\N	\N	\N	\N	\N	\N
7799	41.181	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8108	39.961	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
53607	46.491	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7789	42.702	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7864	40.855	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
11612	41.161	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7938	41.648	Montreal (CAN)	ISU Four Continents Short Track Championships 2020	\N	\N	\N	\N	\N
15487	43.355	\N	\N	\N	\N	\N	\N	\N
15531	42.921	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
19953	44.703	\N	\N	\N	\N	\N	\N	\N
17193	43.971	\N	\N	\N	\N	\N	\N	\N
17545	44.081	\N	\N	\N	\N	\N	\N	\N
17391	44.030	\N	\N	\N	\N	\N	\N	\N
15201	43.199	\N	\N	\N	\N	\N	\N	\N
14557	42.377	\N	\N	\N	\N	\N	\N	\N
15402	43.317	\N	\N	\N	\N	\N	\N	\N
19935	44.698	\N	\N	\N	\N	\N	\N	\N
14576	42.453	\N	\N	\N	\N	\N	\N	\N
14761	42.819	\N	\N	\N	\N	\N	\N	\N
59672	41.334	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
59515	41.134	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
11331	43.156	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
60290	45.994	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
94408	46.089	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94292	43.580	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9622	43.061	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
93286	44.757	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94426	45.341	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94371	44.672	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94352	45.573	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8725	42.955	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
10724	43.233	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
8009	41.305	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
12412	43.164	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
15548	43.386	\N	\N	\N	\N	\N	\N	\N
14599	42.516	\N	\N	\N	\N	\N	\N	\N
14539	41.936	\N	\N	\N	\N	\N	\N	\N
14677	42.645	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
14551	42.330	\N	\N	\N	\N	\N	\N	\N
14660	42.665	\N	\N	\N	\N	\N	\N	\N
54367	45.088	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
15110	43.140	\N	\N	\N	\N	\N	\N	\N
20997	44.938	\N	\N	\N	\N	\N	\N	\N
14559	42.384	\N	\N	\N	\N	\N	\N	\N
12995	45.131	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
14536	41.416	\N	\N	\N	\N	\N	\N	\N
94302	45.410	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94098	47.618	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94301	44.801	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
10284	41.288	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14564	42.411	\N	\N	\N	\N	\N	\N	\N
94281	46.102	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94398	46.211	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9946	43.503	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
13579	48.248	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
13794	50.391	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
10392	44.870	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
15114	43.141	\N	\N	\N	\N	\N	\N	\N
14581	42.464	\N	\N	\N	\N	\N	\N	\N
14616	42.566	\N	\N	\N	\N	\N	\N	\N
94423	47.604	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94278	47.084	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
29776	45.432	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94268	45.285	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
94304	44.743	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
10288	42.634	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
13230	48.265	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
11930	45.426	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
12652	48.484	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
54358	44.904	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
9748	40.331	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7680	40.938	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
8913	41.356	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
8303	41.409	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
15013	43.064	\N	\N	\N	\N	\N	\N	\N
10515	41.460	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
94274	45.070	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8494	41.586	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
15741	43.471	\N	\N	\N	\N	\N	\N	\N
54330	41.503	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
14636	42.613	\N	\N	\N	\N	\N	\N	\N
46471	48.440	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9237	43.792	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
22266	45.249	\N	\N	\N	\N	\N	\N	\N
9134	44.855	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
94775	45.961	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
15353	43.281	\N	\N	\N	\N	\N	\N	\N
25031	45.495	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
14744	42.795	\N	\N	\N	\N	\N	\N	\N
20265	44.771	\N	\N	\N	\N	\N	\N	\N
15197	43.198	\N	\N	\N	\N	\N	\N	\N
15115	42.821	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
94256	44.590	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
46484	43.216	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
94374	45.392	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
92663	43.166	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
14910	42.982	\N	\N	\N	\N	\N	\N	\N
17023	43.923	\N	\N	\N	\N	\N	\N	\N
28140	49.045	\N	\N	\N	\N	\N	\N	\N
46405	41.291	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8258	40.162	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
35357	43.088	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
7723	42.260	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
10678	44.322	Montreal (CAN)	ISU Four Continents Short Track Championships 2020	\N	\N	\N	\N	\N
7616	40.472	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
14198	41.381	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
13724	49.745	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
11700	43.766	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9500	42.713	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7892	40.665	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8504	41.668	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9578	42.083	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
12229	44.829	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
10401	41.977	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7881	40.484	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
10666	44.453	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
14543	42.094	\N	\N	\N	\N	\N	\N	\N
9006	40.480	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
9713	40.255	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
94007	44.299	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
21470	45.053	\N	\N	\N	\N	\N	\N	\N
28186	49.260	\N	\N	\N	\N	\N	\N	\N
23409	45.553	\N	\N	\N	\N	\N	\N	\N
17430	44.041	\N	\N	\N	\N	\N	\N	\N
11305	42.190	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
11193	43.196	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
13531	48.783	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
10058	44.731	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
43111	46.535	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
43115	43.526	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
11130	47.889	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
9989	42.013	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
59633	41.020	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
11850	43.376	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
59569	42.155	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
17402	44.033	\N	\N	\N	\N	\N	\N	\N
9119	42.402	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
11002	43.706	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
20072	44.727	\N	\N	\N	\N	\N	\N	\N
27055	47.073	\N	\N	\N	\N	\N	\N	\N
14749	42.800	\N	\N	\N	\N	\N	\N	\N
17740	44.138	\N	\N	\N	\N	\N	\N	\N
14629	42.603	\N	\N	\N	\N	\N	\N	\N
13303	45.262	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
43152	42.518	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
12688	45.934	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
7987	42.616	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
10115	42.381	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9283	43.041	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9171	43.152	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
8550	41.312	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
27858	48.073	\N	\N	\N	\N	\N	\N	\N
12944	44.476	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
42954	42.213	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
8495	41.306	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
18499	44.339	\N	\N	\N	\N	\N	\N	\N
8264	42.034	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
11580	44.114	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
28261	49.684	\N	\N	\N	\N	\N	\N	\N
15064	43.104	\N	\N	\N	\N	\N	\N	\N
12633	43.282	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
15934	43.551	\N	\N	\N	\N	\N	\N	\N
15776	43.486	\N	\N	\N	\N	\N	\N	\N
9248	42.153	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
14791	42.857	\N	\N	\N	\N	\N	\N	\N
8211	42.350	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
15136	43.149	\N	\N	\N	\N	\N	\N	\N
24824	45.997	\N	\N	\N	\N	\N	\N	\N
11485	43.979	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
16672	43.814	\N	\N	\N	\N	\N	\N	\N
11344	41.166	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
10507	43.042	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
8316	41.782	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
7750	40.869		Olympic Winter Games 2018	\N	\N	\N	\N	\N
45310	40.385	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
9064	41.243	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
9918	42.047	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
7727	40.873	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
11783	43.573	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8984	41.548	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8761	42.089	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8575	42.199	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
9093	41.833	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
11237	40.879	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9492	42.467	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
7638	40.721	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
15178	43.184	\N	\N	\N	\N	\N	\N	\N
7801	40.704	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
10335	43.909	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
9065	42.694	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
11967	42.814	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
10517	41.319	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
32871	42.618	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8642	42.760	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
9611	42.712	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
12627	44.404	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
32987	43.948	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8376	41.866	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
33013	43.078	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
16368	43.713	\N	\N	\N	\N	\N	\N	\N
8345	42.474	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
12059	43.350	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
8624	42.762	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
43835	41.103	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
60295	45.360	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8566	42.355	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8016	40.380	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8748	40.284	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7860	42.167		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
7878	41.923	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
59614	42.838	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8285	42.768	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
9952	43.654		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
10844	42.468	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9920	42.325	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7933	43.369		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
18801	44.417	\N	\N	\N	\N	\N	\N	\N
8168	41.353	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
61958	44.498		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
8028	40.417	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
61964	44.638		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
60501	41.139		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
7623	39.845	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
10351	44.416		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9524	40.114	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
7677	40.032		Olympic Winter Games 2018	\N	\N	\N	\N	\N
8651	43.123	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
13263	42.994	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
9046	40.272		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
14572	42.440	\N	\N	\N	\N	\N	\N	\N
14566	42.418	\N	\N	\N	\N	\N	\N	\N
11696	44.385	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8411	40.938	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
12709	43.083	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
21426	45.043	\N	\N	\N	\N	\N	\N	\N
11825	44.843	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
9284	42.836	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8008	40.508	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
9967	43.736	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
16446	43.736	\N	\N	\N	\N	\N	\N	\N
14992	43.046	\N	\N	\N	\N	\N	\N	\N
15101	43.129	\N	\N	\N	\N	\N	\N	\N
18071	44.235	\N	\N	\N	\N	\N	\N	\N
16055	43.597	\N	\N	\N	\N	\N	\N	\N
9796	44.022	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7811	40.946	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
7743	41.174	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
7795	41.629	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
9086	42.752	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
9609	41.784	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
7688	40.708	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
13714	44.012	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
11552	44.215	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
15166	43.178	\N	\N	\N	\N	\N	\N	\N
11738	42.149	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
11981	44.860		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
11059	42.952		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9004	41.973	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9861	44.335		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
14605	42.530	\N	\N	\N	\N	\N	\N	\N
14732	42.787	\N	\N	\N	\N	\N	\N	\N
13253	47.196	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
8988	42.198	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
12420	44.426	Dordrecht (NED)	ISU European Short Track Championships 2019	\N	\N	\N	\N	\N
7639	41.111	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
13513	47.717	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
13476	43.080	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
7781	41.475	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
8422	43.444	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
14606	42.536	\N	\N	\N	\N	\N	\N	\N
17696	44.124	\N	\N	\N	\N	\N	\N	\N
15163	43.176	\N	\N	\N	\N	\N	\N	\N
15133	43.148	\N	\N	\N	\N	\N	\N	\N
14573	42.441	\N	\N	\N	\N	\N	\N	\N
18503	44.340	\N	\N	\N	\N	\N	\N	\N
15924	43.546	\N	\N	\N	\N	\N	\N	\N
11100	43.317		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
13283	49.021	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
10230	44.072	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
13696	48.397	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
11927	44.787	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
8322	42.122	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
61595	50.110		ISU European Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
7720	41.618	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
12306	45.713	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
12379	46.018	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
12540	43.462	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
13523	51.098		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
13663	47.008	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
7612	40.263	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
10228	41.036	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
12856	43.280	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
7665	40.309	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
13630	50.424		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9579	42.895		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
12716	45.638	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
8744	41.411	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
10390	43.428		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
7971	40.097	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
12444	43.993	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
11834	49.730	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
11234	43.952		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9188	43.816	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
7751	42.684	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
10989	40.583	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9105	42.357		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
8395	41.863	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
7629	41.868		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9412	42.455		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
8433	41.738	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
13632	52.537	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
13812	52.702	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
8188	41.130	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
13848	50.181	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
13642	50.786	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
9344	41.240	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
14436	41.698	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
13299	47.531	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
13514	49.442	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
13570	44.909		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
7618	39.688	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
12586	46.723		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
13345	47.677	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
7734	40.756	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
13219	45.289	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
12767	44.781	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
12221	43.609	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
7653	40.928	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
11842	44.909	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
66659	44.977	Gdansk (POL)	ISU European Short Track Championships 2023	\N	\N	\N	\N	\N
9520	44.653	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
8697	40.777	Montreal (CAN)	ISU Four Continents Short Track Championships 2020	\N	\N	\N	\N	\N
10253	42.885		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
12619	43.701	Gdansk (POL)	ISU European Short Track Championships 2023	\N	\N	\N	\N	\N
8212	41.797	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
12197	43.125		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9296	43.890	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
61937	47.328		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
13477	49.671		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
7833	43.661		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
61917	45.992		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
10009	45.184	Tomaszow Mazowiecki (POL)	ISU World Junior Short Track Championships 2018	\N	\N	\N	\N	\N
7744	44.452		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
9895	43.517	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
61979	51.367		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
11302	42.096	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
8013	41.443	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
61896	45.315		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
61963	44.529		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
10261	42.078	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
11593	44.102	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
11131	44.899		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
61924	47.664		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
7994	41.037	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
8509	41.420	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
11554	45.978	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9104	41.921		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
14247	41.910		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
10266	41.882		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9203	40.814		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9089	41.307		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
7924	40.184	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
11129	44.897		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9452	43.733		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
11807	45.606		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9655	42.473	Montreal (CAN)	ISU World Junior Short Track Championships 2019	\N	\N	\N	\N	\N
7756	41.552	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
10964	43.735		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
12356	41.776		ISU World Junior Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
9516	42.442		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
9887	42.674	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8156	40.539	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
10482	40.632	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8649	41.594	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
9647	41.504	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
59566	43.018	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
46412	40.781	Toronto (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9172	41.505	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8759	41.073	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9432	42.169	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
60300	43.124	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10629	42.301	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
8296	42.465	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
60566	46.335	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
7741	40.978	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7635	41.293	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
45298	41.496	Nagoya (JPN)	ISU World Cup	\N	\N	\N	\N	\N
8536	42.899	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
9543	44.410	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
62559	44.718	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
62669	41.657	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9003	41.346	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66637	42.476	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67164	43.549	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66990	44.126	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66961	41.071	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8235	41.199	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8187	41.287	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66959	42.509	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8874	41.610	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
9788	42.791	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
66982	41.801	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
63266	45.717	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8485	40.373	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
45963	41.713	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9511	42.126	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
11603	42.721	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8348	40.601	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
9519	42.851	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
59525	40.841	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7654	41.750	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7792	40.802	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9418	42.787	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8846	40.755	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
11476	44.949	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7851	42.647	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
8983	40.471	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
9660	41.629	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
8640	41.725	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
34378	41.844	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
59558	42.518	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
13618	46.349	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
44217	41.109	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
8192	40.936	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
32985	41.881	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8716	42.738	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
11027	43.271	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67032	45.204	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67097	41.035	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
34073	41.355	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
11461	42.757	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67016	42.962	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66967	41.774	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
32921	41.363	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
11427	42.954	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8265	41.728	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
13239	47.653	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66951	42.155	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66947	42.065	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67005	42.855	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67048	45.937	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7676	41.378	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
67027	41.735	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
63826	42.429		ISU Shanghai Trophy 2016	\N	\N	\N	\N	\N
67175	43.079	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67145	43.914	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66993	44.155	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9005	42.177	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
11215	42.524	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
67177	43.876	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
12585	43.556	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7857	41.261	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8226	40.811	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
32979	44.375	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67001	46.563	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
33015	41.825	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66987	41.202	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
45535	42.277	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
60522	41.384	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
12667	44.907	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
8677	41.004	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
10108	42.702	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
11104	41.977	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
8853	43.288	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
7872	40.782	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
66950	42.912	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67025	43.747	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
32888	44.568	Gdansk (POL)	ISU World Junior Short Track Championships 2022	\N	\N	\N	\N	\N
10574	40.969	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
67152	44.298	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
66981	41.113	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9292	42.291	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
67144	43.675	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
32795	44.934	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9091	42.587	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7614	40.236	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9216	40.724	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7615	40.974	Montreal (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7808	40.337	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7813	40.621	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7950	40.837	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
8474	40.136	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
7748	41.282	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7620	40.544	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
30880	40.553	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
43830	42.796	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
44224	41.790	Torino (ITA)	ISU World Cup	\N	\N	\N	\N	\N
7978	40.601		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
14452	41.321	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7627	41.207	Gdansk (POL)	ISU European Short Track Championships 2021	\N	\N	\N	\N	\N
8025	40.748		Olympic Winter Games 2018	\N	\N	\N	\N	\N
8554	41.877	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7625	40.091	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
12050	42.104	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7886	41.979	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
48526	42.274	Minsk (BLR)	ISU World Cup	\N	\N	\N	\N	\N
7644	39.670	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
48522	41.834	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8732	40.909	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8381	41.872		ISU European Short Track Speed Skating Championships® 2016	\N	\N	\N	\N	\N
9040	42.304	Montreal (CAN)	ISU World Short Track Championships 2018	\N	\N	\N	\N	\N
45411	40.904	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8565	41.482	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
12448	46.408		ISU World Short Track Championships 2017	\N	\N	\N	\N	\N
8703	40.259	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
7701	40.394	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8332	41.705	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
9631	42.198	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7642	41.875	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7690	41.194	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
9901	41.488	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
8855	43.163	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
9088	40.563		Olympic Winter Games 2018	\N	\N	\N	\N	\N
8432	42.529	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
7631	39.987		Olympic Winter Games 2018	\N	\N	\N	\N	\N
8400	42.840	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
8342	41.023	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7655	40.688	Seoul (KOR)	Audi ISU World Cup	\N	\N	\N	\N	\N
8033	40.835	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9490	41.619	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
7613	41.805		ISU World Short Track Championships 2017	\N	\N	\N	\N	\N
8768	42.191	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
66949	42.505	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7621	40.657		ISU World Junior Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
67162	42.801	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8573	40.288	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9109	43.658	Bormio (ITA)	ISU World Junior Short Track Championships 2020	\N	\N	\N	\N	\N
10632	41.994	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
7663	40.852	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
9569	41.746	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8756	42.923	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7622	39.699	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8497	39.505	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
10842	43.382	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
64537	40.391	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
7662	40.262	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
7657	40.521	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7747	40.492	Debrecen (HUN)	ISU World Cup	\N	\N	\N	\N	\N
7681	40.407		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
7643	40.419	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
9558	41.736	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7636	40.900		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
7617	39.732	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8004	40.701	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
14333	40.581	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8862	40.727	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
59517	40.389	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7682	40.401	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7667	40.884	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
11125	43.603	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8045	41.537	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
7931	41.660	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
10357	43.144	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8362	40.434		Olympic Winter Games 2018	\N	\N	\N	\N	\N
9859	42.815		ISU World Short Track Championships 2017	\N	\N	\N	\N	\N
7673	41.234	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
13830	46.038		ISU World Short Track Championships 2017	\N	\N	\N	\N	\N
65022	41.582	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7852	41.295	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
67596	45.995	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9061	41.743	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
14347	42.080	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
10312	42.780	Dresden (GER)	ISU European Short Track Championships 2018	\N	\N	\N	\N	\N
10553	44.888		ISU World Short Track Championships 2017	\N	\N	\N	\N	\N
9378	41.570	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
8763	42.538	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
7630	40.622	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7745	41.768		ISU World Short Track Championships 2017	\N	\N	\N	\N	\N
9654	42.139	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
9744	42.423	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
8196	42.247		ISU European Short Track Speed Skating Championships 2017	\N	\N	\N	\N	\N
8177	40.687	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
8826	41.118	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
8375	40.939	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
31490	41.598	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
9465	44.366	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
9923	40.484	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
7803	40.379	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
10286	42.935	Dordrecht (NED)	Audi ISU World Cup	\N	\N	\N	\N	\N
7956	40.626	Shanghai (CHN)	ISU World Cup	\N	\N	\N	\N	\N
7980	40.528	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
8133	41.936	Shanghai (CHN)	Audi ISU World Cup	\N	\N	\N	\N	\N
11135	40.286	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
8816	40.634	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
11139	39.881	Salt Lake City, UT (USA)	ISU World Cup	\N	\N	\N	\N	\N
7776	39.886	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
8727	40.432	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
8107	42.219	Gangneung (KOR)	ISU World Cup	\N	\N	\N	\N	\N
7779	40.192	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
9360	40.847	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
64441	40.699	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8522	40.647	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
9199	42.985	Dordrecht (NED)	ISU World Short Track Championships 2021	\N	\N	\N	\N	\N
9634	42.281	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
7817	40.768	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
8097	40.606	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
10023	40.869	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
8496	41.007	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
8793	42.212	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
8123	40.148	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
9858	41.044	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
9028	42.656	Calgary (CAN)	ISU World Cup	\N	\N	\N	\N	\N
8117	41.180	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
9434	42.587	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
12392	43.161	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
14259	41.733	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
13232	44.382	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
11939	40.572	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
7772	41.203	Almaty (KAZ)	ISU World Cup	\N	\N	\N	\N	\N
7628	40.369	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
7658	40.430		Beijing 2022 Olympic Winter Games	\N	\N	\N	\N	\N
7855	41.111	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
9315	42.500	Montreal (CAN)	ISU World Short Track Championships 2022	\N	\N	\N	\N	\N
8603	43.140	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7711	39.932	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
7736	40.195	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
12277	41.230	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
10287	44.102	Beijing (CHN)	ISU World Cup	\N	\N	\N	\N	\N
10308	40.570	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
12413	42.219	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10534	42.610	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
7715	39.973	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
7645	40.540	Salt Lake City (USA)	ISU Four Continents Short Track Championships 2023	\N	\N	\N	\N	\N
8141	41.007	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
10342	43.099	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
11764	42.605	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
9079	41.765	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
7949	39.851	Salt Lake City (USA)	ISU World Cup	\N	\N	\N	\N	\N
18569	44.358	\N	\N	\N	\N	\N	\N	\N
18700	44.391	\N	\N	\N	\N	\N	\N	\N
17746	44.140	\N	\N	\N	\N	\N	\N	\N
19328	44.550	\N	\N	\N	\N	\N	\N	\N
18396	44.313	\N	\N	\N	\N	\N	\N	\N
14592	42.491	\N	\N	\N	\N	\N	\N	\N
15317	43.263	\N	\N	\N	\N	\N	\N	\N
19180	44.508	\N	\N	\N	\N	\N	\N	\N
18038	44.223	\N	\N	\N	\N	\N	\N	\N
14896	42.970	\N	\N	\N	\N	\N	\N	\N
15431	43.333	\N	\N	\N	\N	\N	\N	\N
18347	44.301	\N	\N	\N	\N	\N	\N	\N
21299	45.007	\N	\N	\N	\N	\N	\N	\N
17170	43.965	\N	\N	\N	\N	\N	\N	\N
15298	43.253	\N	\N	\N	\N	\N	\N	\N
20769	44.323	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
16272	43.677	\N	\N	\N	\N	\N	\N	\N
22053	45.194	\N	\N	\N	\N	\N	\N	\N
17531	44.078	\N	\N	\N	\N	\N	\N	\N
14668	42.682	\N	\N	\N	\N	\N	\N	\N
17433	44.042	\N	\N	\N	\N	\N	\N	\N
20996	44.938	\N	\N	\N	\N	\N	\N	\N
16075	43.604	\N	\N	\N	\N	\N	\N	\N
21371	45.030	\N	\N	\N	\N	\N	\N	\N
14721	42.771	\N	\N	\N	\N	\N	\N	\N
17655	44.113	\N	\N	\N	\N	\N	\N	\N
20433	43.802	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
21658	45.100	\N	\N	\N	\N	\N	\N	\N
20704	44.876	\N	\N	\N	\N	\N	\N	\N
15512	43.371	\N	\N	\N	\N	\N	\N	\N
23454	45.565	\N	\N	\N	\N	\N	\N	\N
23616	45.617	\N	\N	\N	\N	\N	\N	\N
15125	43.144	\N	\N	\N	\N	\N	\N	\N
18965	44.460	\N	\N	\N	\N	\N	\N	\N
18535	44.349	\N	\N	\N	\N	\N	\N	\N
16869	43.875	\N	\N	\N	\N	\N	\N	\N
16198	43.648	\N	\N	\N	\N	\N	\N	\N
19375	43.535	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
20983	44.936	\N	\N	\N	\N	\N	\N	\N
19548	44.605	\N	\N	\N	\N	\N	\N	\N
16797	43.387	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
16118	43.617	\N	\N	\N	\N	\N	\N	\N
23483	45.574	\N	\N	\N	\N	\N	\N	\N
24180	45.790	\N	\N	\N	\N	\N	\N	\N
24146	45.779	\N	\N	\N	\N	\N	\N	\N
23146	45.479	\N	\N	\N	\N	\N	\N	\N
23711	45.644	\N	\N	\N	\N	\N	\N	\N
23100	45.057	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
19267	44.535	\N	\N	\N	\N	\N	\N	\N
14626	42.597	\N	\N	\N	\N	\N	\N	\N
15775	43.486	\N	\N	\N	\N	\N	\N	\N
22271	45.250	\N	\N	\N	\N	\N	\N	\N
19776	44.663	\N	\N	\N	\N	\N	\N	\N
16301	43.102	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
21132	44.969	\N	\N	\N	\N	\N	\N	\N
22953	45.429	\N	\N	\N	\N	\N	\N	\N
22963	45.431	\N	\N	\N	\N	\N	\N	\N
24800	45.986	\N	\N	\N	\N	\N	\N	\N
23757	45.658	\N	\N	\N	\N	\N	\N	\N
24806	45.990	\N	\N	\N	\N	\N	\N	\N
20319	44.783	\N	\N	\N	\N	\N	\N	\N
16500	43.754	\N	\N	\N	\N	\N	\N	\N
17277	43.992	\N	\N	\N	\N	\N	\N	\N
24898	46.020	\N	\N	\N	\N	\N	\N	\N
18235	44.273	\N	\N	\N	\N	\N	\N	\N
14965	43.027	\N	\N	\N	\N	\N	\N	\N
19165	44.505	\N	\N	\N	\N	\N	\N	\N
22861	45.402	\N	\N	\N	\N	\N	\N	\N
17046	43.930	\N	\N	\N	\N	\N	\N	\N
16199	43.648	\N	\N	\N	\N	\N	\N	\N
17942	44.197	\N	\N	\N	\N	\N	\N	\N
18047	44.225	\N	\N	\N	\N	\N	\N	\N
25500	46.226	\N	\N	\N	\N	\N	\N	\N
18829	44.423	\N	\N	\N	\N	\N	\N	\N
24378	45.846	\N	\N	\N	\N	\N	\N	\N
24670	45.946	\N	\N	\N	\N	\N	\N	\N
24671	45.946	\N	\N	\N	\N	\N	\N	\N
18114	44.245	\N	\N	\N	\N	\N	\N	\N
22027	45.188	\N	\N	\N	\N	\N	\N	\N
18418	44.318	\N	\N	\N	\N	\N	\N	\N
22483	45.306	\N	\N	\N	\N	\N	\N	\N
21742	45.122	\N	\N	\N	\N	\N	\N	\N
24014	45.741	\N	\N	\N	\N	\N	\N	\N
20410	44.804	\N	\N	\N	\N	\N	\N	\N
25282	46.147	\N	\N	\N	\N	\N	\N	\N
20894	44.915	\N	\N	\N	\N	\N	\N	\N
21384	45.033	\N	\N	\N	\N	\N	\N	\N
24470	45.877	\N	\N	\N	\N	\N	\N	\N
21499	45.061	\N	\N	\N	\N	\N	\N	\N
23087	45.465	\N	\N	\N	\N	\N	\N	\N
19683	44.641	\N	\N	\N	\N	\N	\N	\N
21390	45.035	\N	\N	\N	\N	\N	\N	\N
16885	43.880	\N	\N	\N	\N	\N	\N	\N
17482	44.063	\N	\N	\N	\N	\N	\N	\N
26311	46.601	\N	\N	\N	\N	\N	\N	\N
22686	45.354	\N	\N	\N	\N	\N	\N	\N
21914	45.163	\N	\N	\N	\N	\N	\N	\N
17346	44.014	\N	\N	\N	\N	\N	\N	\N
20931	44.925	\N	\N	\N	\N	\N	\N	\N
19023	44.473	\N	\N	\N	\N	\N	\N	\N
21626	45.092	\N	\N	\N	\N	\N	\N	\N
26516	46.714	\N	\N	\N	\N	\N	\N	\N
26661	46.808	\N	\N	\N	\N	\N	\N	\N
14743	42.795	\N	\N	\N	\N	\N	\N	\N
25833	46.376	\N	\N	\N	\N	\N	\N	\N
21212	44.989	\N	\N	\N	\N	\N	\N	\N
17278	43.992	\N	\N	\N	\N	\N	\N	\N
26730	46.851	\N	\N	\N	\N	\N	\N	\N
23813	45.678	\N	\N	\N	\N	\N	\N	\N
18715	44.396	\N	\N	\N	\N	\N	\N	\N
21377	45.031	\N	\N	\N	\N	\N	\N	\N
18142	44.252	\N	\N	\N	\N	\N	\N	\N
26253	46.572	\N	\N	\N	\N	\N	\N	\N
22902	45.415	\N	\N	\N	\N	\N	\N	\N
19041	44.477	\N	\N	\N	\N	\N	\N	\N
17063	43.934	\N	\N	\N	\N	\N	\N	\N
17126	43.951	\N	\N	\N	\N	\N	\N	\N
26078	46.488	\N	\N	\N	\N	\N	\N	\N
15806	43.499	\N	\N	\N	\N	\N	\N	\N
26982	47.026	\N	\N	\N	\N	\N	\N	\N
19030	44.475	\N	\N	\N	\N	\N	\N	\N
26655	46.803	\N	\N	\N	\N	\N	\N	\N
26876	46.957	\N	\N	\N	\N	\N	\N	\N
18615	44.371	\N	\N	\N	\N	\N	\N	\N
26936	46.995	\N	\N	\N	\N	\N	\N	\N
18759	44.405	\N	\N	\N	\N	\N	\N	\N
26264	46.575	\N	\N	\N	\N	\N	\N	\N
23960	45.723	\N	\N	\N	\N	\N	\N	\N
21237	44.995	\N	\N	\N	\N	\N	\N	\N
27149	47.148	\N	\N	\N	\N	\N	\N	\N
27256	47.231	\N	\N	\N	\N	\N	\N	\N
22302	45.257	\N	\N	\N	\N	\N	\N	\N
22743	45.372	\N	\N	\N	\N	\N	\N	\N
18309	44.293	\N	\N	\N	\N	\N	\N	\N
26117	46.504	\N	\N	\N	\N	\N	\N	\N
18992	44.465	\N	\N	\N	\N	\N	\N	\N
25853	45.407	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
25736	46.327	\N	\N	\N	\N	\N	\N	\N
26899	44.466	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
19505	44.593	\N	\N	\N	\N	\N	\N	\N
24598	45.918	\N	\N	\N	\N	\N	\N	\N
22328	45.266	\N	\N	\N	\N	\N	\N	\N
25894	46.403	\N	\N	\N	\N	\N	\N	\N
26513	46.714	\N	\N	\N	\N	\N	\N	\N
27189	47.177	\N	\N	\N	\N	\N	\N	\N
22721	45.364	\N	\N	\N	\N	\N	\N	\N
22864	45.403	\N	\N	\N	\N	\N	\N	\N
21433	45.045	\N	\N	\N	\N	\N	\N	\N
21755	45.125	\N	\N	\N	\N	\N	\N	\N
25939	46.423	\N	\N	\N	\N	\N	\N	\N
15004	43.053	\N	\N	\N	\N	\N	\N	\N
27316	47.281	\N	\N	\N	\N	\N	\N	\N
21230	44.993	\N	\N	\N	\N	\N	\N	\N
20708	44.877	\N	\N	\N	\N	\N	\N	\N
19274	44.537	\N	\N	\N	\N	\N	\N	\N
25106	46.091	\N	\N	\N	\N	\N	\N	\N
20499	44.827	\N	\N	\N	\N	\N	\N	\N
21298	45.007	\N	\N	\N	\N	\N	\N	\N
26887	46.967	\N	\N	\N	\N	\N	\N	\N
27103	47.120	\N	\N	\N	\N	\N	\N	\N
25291	46.150	\N	\N	\N	\N	\N	\N	\N
26500	46.705	\N	\N	\N	\N	\N	\N	\N
17723	44.133	\N	\N	\N	\N	\N	\N	\N
27052	47.070	\N	\N	\N	\N	\N	\N	\N
21177	44.978	\N	\N	\N	\N	\N	\N	\N
18394	44.313	\N	\N	\N	\N	\N	\N	\N
20313	44.781	\N	\N	\N	\N	\N	\N	\N
26608	46.775	\N	\N	\N	\N	\N	\N	\N
27565	47.578	\N	\N	\N	\N	\N	\N	\N
23748	45.657	\N	\N	\N	\N	\N	\N	\N
26626	46.782	\N	\N	\N	\N	\N	\N	\N
27300	47.264	\N	\N	\N	\N	\N	\N	\N
25676	46.298	\N	\N	\N	\N	\N	\N	\N
23938	45.717	\N	\N	\N	\N	\N	\N	\N
26482	46.697	\N	\N	\N	\N	\N	\N	\N
27348	47.317	\N	\N	\N	\N	\N	\N	\N
20608	44.849	\N	\N	\N	\N	\N	\N	\N
26063	46.481	\N	\N	\N	\N	\N	\N	\N
16694	43.819	\N	\N	\N	\N	\N	\N	\N
26971	45.619	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
26793	46.898	\N	\N	\N	\N	\N	\N	\N
18376	44.309	\N	\N	\N	\N	\N	\N	\N
25171	46.112	\N	\N	\N	\N	\N	\N	\N
23148	45.480	\N	\N	\N	\N	\N	\N	\N
25231	46.129	\N	\N	\N	\N	\N	\N	\N
24430	45.864	\N	\N	\N	\N	\N	\N	\N
19347	44.554	\N	\N	\N	\N	\N	\N	\N
23390	45.549	\N	\N	\N	\N	\N	\N	\N
19005	44.469	\N	\N	\N	\N	\N	\N	\N
27873	48.100	\N	\N	\N	\N	\N	\N	\N
26799	46.901	\N	\N	\N	\N	\N	\N	\N
27639	47.697	\N	\N	\N	\N	\N	\N	\N
27151	47.149	\N	\N	\N	\N	\N	\N	\N
27825	47.028	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
28005	48.490	\N	\N	\N	\N	\N	\N	\N
25285	46.148	\N	\N	\N	\N	\N	\N	\N
27651	47.717	\N	\N	\N	\N	\N	\N	\N
27613	47.657	\N	\N	\N	\N	\N	\N	\N
27808	47.992	\N	\N	\N	\N	\N	\N	\N
27906	48.181	\N	\N	\N	\N	\N	\N	\N
27437	47.410	\N	\N	\N	\N	\N	\N	\N
27072	47.091	\N	\N	\N	\N	\N	\N	\N
26751	46.868	\N	\N	\N	\N	\N	\N	\N
27164	47.155	\N	\N	\N	\N	\N	\N	\N
27000	47.033	\N	\N	\N	\N	\N	\N	\N
27650	47.712	\N	\N	\N	\N	\N	\N	\N
26291	46.592	\N	\N	\N	\N	\N	\N	\N
27411	47.375	\N	\N	\N	\N	\N	\N	\N
26737	46.856	\N	\N	\N	\N	\N	\N	\N
20828	44.901	\N	\N	\N	\N	\N	\N	\N
26710	46.835	\N	\N	\N	\N	\N	\N	\N
27447	47.417	\N	\N	\N	\N	\N	\N	\N
27229	47.203	\N	\N	\N	\N	\N	\N	\N
25809	46.360	\N	\N	\N	\N	\N	\N	\N
28126	48.972	\N	\N	\N	\N	\N	\N	\N
25766	46.342	\N	\N	\N	\N	\N	\N	\N
26056	46.478	\N	\N	\N	\N	\N	\N	\N
26108	46.500	\N	\N	\N	\N	\N	\N	\N
27956	48.344	\N	\N	\N	\N	\N	\N	\N
21950	43.410	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27241	47.219	\N	\N	\N	\N	\N	\N	\N
21231	44.993	\N	\N	\N	\N	\N	\N	\N
27932	48.287	\N	\N	\N	\N	\N	\N	\N
28107	48.891	\N	\N	\N	\N	\N	\N	\N
28022	48.544	\N	\N	\N	\N	\N	\N	\N
27950	48.336	\N	\N	\N	\N	\N	\N	\N
27951	48.337	\N	\N	\N	\N	\N	\N	\N
28085	48.277	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
28111	48.908	\N	\N	\N	\N	\N	\N	\N
28007	48.502	\N	\N	\N	\N	\N	\N	\N
23796	45.501	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
27985	48.453	\N	\N	\N	\N	\N	\N	\N
25998	46.452	\N	\N	\N	\N	\N	\N	\N
17377	44.026	\N	\N	\N	\N	\N	\N	\N
19320	44.548	\N	\N	\N	\N	\N	\N	\N
28099	48.848	\N	\N	\N	\N	\N	\N	\N
24959	46.039	\N	\N	\N	\N	\N	\N	\N
20739	44.882	\N	\N	\N	\N	\N	\N	\N
16319	43.695	\N	\N	\N	\N	\N	\N	\N
28041	48.604	\N	\N	\N	\N	\N	\N	\N
27959	48.350	\N	\N	\N	\N	\N	\N	\N
28006	48.499	\N	\N	\N	\N	\N	\N	\N
27266	47.236	\N	\N	\N	\N	\N	\N	\N
26687	46.825	\N	\N	\N	\N	\N	\N	\N
24851	46.008	\N	\N	\N	\N	\N	\N	\N
28179	49.213	\N	\N	\N	\N	\N	\N	\N
27037	47.062	\N	\N	\N	\N	\N	\N	\N
28187	49.265	\N	\N	\N	\N	\N	\N	\N
17950	44.199	\N	\N	\N	\N	\N	\N	\N
26684	46.823	\N	\N	\N	\N	\N	\N	\N
28198	49.326	\N	\N	\N	\N	\N	\N	\N
28203	49.341	\N	\N	\N	\N	\N	\N	\N
16678	43.815	\N	\N	\N	\N	\N	\N	\N
27347	47.315	\N	\N	\N	\N	\N	\N	\N
28217	49.417	\N	\N	\N	\N	\N	\N	\N
28285	47.439	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
28303	49.041	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
28176	49.194	\N	\N	\N	\N	\N	\N	\N
28132	47.785	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
25229	46.129	\N	\N	\N	\N	\N	\N	\N
28174	49.189	\N	\N	\N	\N	\N	\N	\N
22183	45.230	\N	\N	\N	\N	\N	\N	\N
28114	48.920	\N	\N	\N	\N	\N	\N	\N
27456	47.431	\N	\N	\N	\N	\N	\N	\N
14589	42.486	\N	\N	\N	\N	\N	\N	\N
27328	47.294	\N	\N	\N	\N	\N	\N	\N
28137	49.038	\N	\N	\N	\N	\N	\N	\N
16402	43.723	\N	\N	\N	\N	\N	\N	\N
27999	48.472	\N	\N	\N	\N	\N	\N	\N
19536	44.602	\N	\N	\N	\N	\N	\N	\N
22986	45.436	\N	\N	\N	\N	\N	\N	\N
28175	49.189	\N	\N	\N	\N	\N	\N	\N
27744	47.874	\N	\N	\N	\N	\N	\N	\N
26918	46.989	\N	\N	\N	\N	\N	\N	\N
27850	48.063	\N	\N	\N	\N	\N	\N	\N
28275	49.796	\N	\N	\N	\N	\N	\N	\N
27944	48.328	\N	\N	\N	\N	\N	\N	\N
22599	45.333	\N	\N	\N	\N	\N	\N	\N
21111	44.963	\N	\N	\N	\N	\N	\N	\N
22758	45.379	\N	\N	\N	\N	\N	\N	\N
27927	48.272	\N	\N	\N	\N	\N	\N	\N
26770	46.879	\N	\N	\N	\N	\N	\N	\N
28247	49.602	\N	\N	\N	\N	\N	\N	\N
28299	50.044	\N	\N	\N	\N	\N	\N	\N
28287	49.909	\N	\N	\N	\N	\N	\N	\N
28163	49.145	\N	\N	\N	\N	\N	\N	\N
28295	49.968	\N	\N	\N	\N	\N	\N	\N
28240	49.515	\N	\N	\N	\N	\N	\N	\N
27273	47.243	\N	\N	\N	\N	\N	\N	\N
23234	45.505	\N	\N	\N	\N	\N	\N	\N
23004	45.442	\N	\N	\N	\N	\N	\N	\N
28328	50.408	\N	\N	\N	\N	\N	\N	\N
27991	48.457	\N	\N	\N	\N	\N	\N	\N
28341	50.537	\N	\N	\N	\N	\N	\N	\N
28343	50.591	\N	\N	\N	\N	\N	\N	\N
28211	49.384	\N	\N	\N	\N	\N	\N	\N
27739	47.867	\N	\N	\N	\N	\N	\N	\N
28326	50.357	\N	\N	\N	\N	\N	\N	\N
27617	47.662	\N	\N	\N	\N	\N	\N	\N
28082	48.769	\N	\N	\N	\N	\N	\N	\N
28375	51.018	\N	\N	\N	\N	\N	\N	\N
28405	51.372	\N	\N	\N	\N	\N	\N	\N
28346	50.614	\N	\N	\N	\N	\N	\N	\N
28283	49.853	\N	\N	\N	\N	\N	\N	\N
28354	50.720	\N	\N	\N	\N	\N	\N	\N
28400	51.355	\N	\N	\N	\N	\N	\N	\N
27823	48.025	\N	\N	\N	\N	\N	\N	\N
28409	51.453	\N	\N	\N	\N	\N	\N	\N
28195	49.311	\N	\N	\N	\N	\N	\N	\N
27882	48.124	\N	\N	\N	\N	\N	\N	\N
28223	49.441	\N	\N	\N	\N	\N	\N	\N
27994	48.463	\N	\N	\N	\N	\N	\N	\N
28413	51.507	\N	\N	\N	\N	\N	\N	\N
27552	47.554	\N	\N	\N	\N	\N	\N	\N
18519	44.344	\N	\N	\N	\N	\N	\N	\N
14644	42.543	Dordrecht (NED)	ISU World Cup	\N	\N	\N	\N	\N
27420	47.382	\N	\N	\N	\N	\N	\N	\N
28361	50.103	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
28387	49.413	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
27922	48.258	\N	\N	\N	\N	\N	\N	\N
28312	50.195	\N	\N	\N	\N	\N	\N	\N
28424	51.684	\N	\N	\N	\N	\N	\N	\N
28318	49.751	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
28428	51.772	\N	\N	\N	\N	\N	\N	\N
28332	50.413	\N	\N	\N	\N	\N	\N	\N
14754	42.807	\N	\N	\N	\N	\N	\N	\N
28471	52.903	\N	\N	\N	\N	\N	\N	\N
27232	47.210	\N	\N	\N	\N	\N	\N	\N
18300	44.290	\N	\N	\N	\N	\N	\N	\N
28152	49.093	\N	\N	\N	\N	\N	\N	\N
28458	52.395	\N	\N	\N	\N	\N	\N	\N
19424	44.571	\N	\N	\N	\N	\N	\N	\N
28316	50.250	\N	\N	\N	\N	\N	\N	\N
27977	48.414	\N	\N	\N	\N	\N	\N	\N
28462	52.537	\N	\N	\N	\N	\N	\N	\N
28321	50.311	\N	\N	\N	\N	\N	\N	\N
28433	51.869	\N	\N	\N	\N	\N	\N	\N
28463	52.568	\N	\N	\N	\N	\N	\N	\N
26839	46.925	\N	\N	\N	\N	\N	\N	\N
28483	53.397	\N	\N	\N	\N	\N	\N	\N
28395	51.270	\N	\N	\N	\N	\N	\N	\N
14967	43.027	\N	\N	\N	\N	\N	\N	\N
28431	51.823	\N	\N	\N	\N	\N	\N	\N
28492	53.597	\N	\N	\N	\N	\N	\N	\N
28493	53.632	\N	\N	\N	\N	\N	\N	\N
28510	54.198	\N	\N	\N	\N	\N	\N	\N
28495	53.704	\N	\N	\N	\N	\N	\N	\N
28484	53.435	\N	\N	\N	\N	\N	\N	\N
25111	46.093	\N	\N	\N	\N	\N	\N	\N
23457	45.566	\N	\N	\N	\N	\N	\N	\N
22508	45.312	\N	\N	\N	\N	\N	\N	\N
22463	45.302	\N	\N	\N	\N	\N	\N	\N
26662	46.808	\N	\N	\N	\N	\N	\N	\N
28371	50.906	\N	\N	\N	\N	\N	\N	\N
28550	55.869	\N	\N	\N	\N	\N	\N	\N
27564	47.574	\N	\N	\N	\N	\N	\N	\N
14830	42.898	\N	\N	\N	\N	\N	\N	\N
25742	46.330	\N	\N	\N	\N	\N	\N	\N
28448	52.243	\N	\N	\N	\N	\N	\N	\N
28475	53.093	\N	\N	\N	\N	\N	\N	\N
28401	51.358	\N	\N	\N	\N	\N	\N	\N
23763	45.295	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
28455	52.346	\N	\N	\N	\N	\N	\N	\N
14874	42.954	\N	\N	\N	\N	\N	\N	\N
28557	56.080	\N	\N	\N	\N	\N	\N	\N
15696	43.450	\N	\N	\N	\N	\N	\N	\N
15078	43.117	\N	\N	\N	\N	\N	\N	\N
28609	57.924	\N	\N	\N	\N	\N	\N	\N
25619	46.275	\N	\N	\N	\N	\N	\N	\N
14950	43.019	\N	\N	\N	\N	\N	\N	\N
14590	42.486	\N	\N	\N	\N	\N	\N	\N
28536	55.109	\N	\N	\N	\N	\N	\N	\N
15012	43.063	\N	\N	\N	\N	\N	\N	\N
28622	58.795	\N	\N	\N	\N	\N	\N	\N
18000	44.213	\N	\N	\N	\N	\N	\N	\N
22140	45.216	\N	\N	\N	\N	\N	\N	\N
14751	42.803	\N	\N	\N	\N	\N	\N	\N
14565	42.416	\N	\N	\N	\N	\N	\N	\N
14862	42.941	\N	\N	\N	\N	\N	\N	\N
22098	45.206	\N	\N	\N	\N	\N	\N	\N
25561	46.254	\N	\N	\N	\N	\N	\N	\N
24658	45.940	\N	\N	\N	\N	\N	\N	\N
25760	46.339	\N	\N	\N	\N	\N	\N	\N
17984	44.208	\N	\N	\N	\N	\N	\N	\N
24134	45.777	\N	\N	\N	\N	\N	\N	\N
18845	44.428	\N	\N	\N	\N	\N	\N	\N
28670	60.742	\N	\N	\N	\N	\N	\N	\N
21521	45.068	\N	\N	\N	\N	\N	\N	\N
23850	45.688	\N	\N	\N	\N	\N	\N	\N
21592	44.291	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
19942	44.701	\N	\N	\N	\N	\N	\N	\N
27429	47.397	\N	\N	\N	\N	\N	\N	\N
23782	45.666	\N	\N	\N	\N	\N	\N	\N
28720	62.269	\N	\N	\N	\N	\N	\N	\N
16759	43.839	\N	\N	\N	\N	\N	\N	\N
24349	45.837	\N	\N	\N	\N	\N	\N	\N
19391	44.562	\N	\N	\N	\N	\N	\N	\N
28732	62.682	\N	\N	\N	\N	\N	\N	\N
14935	43.000	\N	\N	\N	\N	\N	\N	\N
18260	44.279	\N	\N	\N	\N	\N	\N	\N
28737	62.944	\N	\N	\N	\N	\N	\N	\N
25438	46.205	\N	\N	\N	\N	\N	\N	\N
28241	48.604	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
24922	45.589	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
15248	43.184	Dresden (GER)	ISU World Cup	\N	\N	\N	\N	\N
14769	42.829	\N	\N	\N	\N	\N	\N	\N
18709	44.394	\N	\N	\N	\N	\N	\N	\N
27646	47.708	\N	\N	\N	\N	\N	\N	\N
21551	45.075	\N	\N	\N	\N	\N	\N	\N
17699	44.124	\N	\N	\N	\N	\N	\N	\N
16364	43.711	\N	\N	\N	\N	\N	\N	\N
14890	42.964	\N	\N	\N	\N	\N	\N	\N
17856	44.173	\N	\N	\N	\N	\N	\N	\N
18453	44.323	\N	\N	\N	\N	\N	\N	\N
28324	50.340	\N	\N	\N	\N	\N	\N	\N
23305	45.524	\N	\N	\N	\N	\N	\N	\N
28771	63.959	\N	\N	\N	\N	\N	\N	\N
21467	45.052	\N	\N	\N	\N	\N	\N	\N
24074	45.758	\N	\N	\N	\N	\N	\N	\N
26721	46.843	\N	\N	\N	\N	\N	\N	\N
15964	43.564	\N	\N	\N	\N	\N	\N	\N
16029	43.590	\N	\N	\N	\N	\N	\N	\N
26573	46.755	\N	\N	\N	\N	\N	\N	\N
23777	45.664	\N	\N	\N	\N	\N	\N	\N
17456	44.051	\N	\N	\N	\N	\N	\N	\N
18834	44.425	\N	\N	\N	\N	\N	\N	\N
25681	46.300	\N	\N	\N	\N	\N	\N	\N
24666	45.943	\N	\N	\N	\N	\N	\N	\N
28566	56.364	\N	\N	\N	\N	\N	\N	\N
20541	44.837	\N	\N	\N	\N	\N	\N	\N
28372	47.904	Dresden (GER)	ISU World Junior Short Track Championships 2023	\N	\N	\N	\N	\N
27133	47.136	\N	\N	\N	\N	\N	\N	\N
26940	47.000	\N	\N	\N	\N	\N	\N	\N
25848	46.382	\N	\N	\N	\N	\N	\N	\N
22013	45.185	\N	\N	\N	\N	\N	\N	\N
20155	44.747	\N	\N	\N	\N	\N	\N	\N
23386	45.548	\N	\N	\N	\N	\N	\N	\N
14908	42.980	\N	\N	\N	\N	\N	\N	\N
15366	43.293	\N	\N	\N	\N	\N	\N	\N
18494	44.338	\N	\N	\N	\N	\N	\N	\N
17303	44.000	\N	\N	\N	\N	\N	\N	\N
17175	43.967	\N	\N	\N	\N	\N	\N	\N
16772	43.843	\N	\N	\N	\N	\N	\N	\N
20947	44.930	\N	\N	\N	\N	\N	\N	\N
17766	44.144	\N	\N	\N	\N	\N	\N	\N
16751	43.836	\N	\N	\N	\N	\N	\N	\N
27846	48.060	\N	\N	\N	\N	\N	\N	\N
21756	45.125	\N	\N	\N	\N	\N	\N	\N
28923	70.590	\N	\N	\N	\N	\N	\N	\N
28764	63.721	\N	\N	\N	\N	\N	\N	\N
28087	48.784	\N	\N	\N	\N	\N	\N	\N
28181	49.215	\N	\N	\N	\N	\N	\N	\N
18973	44.462	\N	\N	\N	\N	\N	\N	\N
24453	45.872	\N	\N	\N	\N	\N	\N	\N
18784	44.413	\N	\N	\N	\N	\N	\N	\N
17097	43.944	\N	\N	\N	\N	\N	\N	\N
18307	44.292	\N	\N	\N	\N	\N	\N	\N
22530	45.316	\N	\N	\N	\N	\N	\N	\N
20630	44.855	\N	\N	\N	\N	\N	\N	\N
14738	42.792	\N	\N	\N	\N	\N	\N	\N
28570	56.531	\N	\N	\N	\N	\N	\N	\N
21873	45.153	\N	\N	\N	\N	\N	\N	\N
18860	44.432	\N	\N	\N	\N	\N	\N	\N
28981	72.967	\N	\N	\N	\N	\N	\N	\N
16900	43.883	\N	\N	\N	\N	\N	\N	\N
17749	44.140	\N	\N	\N	\N	\N	\N	\N
18673	44.385	\N	\N	\N	\N	\N	\N	\N
24395	45.853	\N	\N	\N	\N	\N	\N	\N
19985	44.709	\N	\N	\N	\N	\N	\N	\N
15325	43.267	\N	\N	\N	\N	\N	\N	\N
26045	46.473	\N	\N	\N	\N	\N	\N	\N
15938	43.553	\N	\N	\N	\N	\N	\N	\N
19206	44.515	\N	\N	\N	\N	\N	\N	\N
22765	45.380	\N	\N	\N	\N	\N	\N	\N
20439	44.813	\N	\N	\N	\N	\N	\N	\N
17656	44.113	\N	\N	\N	\N	\N	\N	\N
28611	57.994	\N	\N	\N	\N	\N	\N	\N
15465	43.348	\N	\N	\N	\N	\N	\N	\N
28161	49.136	\N	\N	\N	\N	\N	\N	\N
16392	43.720	\N	\N	\N	\N	\N	\N	\N
20471	44.819	\N	\N	\N	\N	\N	\N	\N
16554	43.257	Seoul (KOR)	KB ISU World Short Track Championships 2023	\N	\N	\N	\N	\N
20712	44.877	\N	\N	\N	\N	\N	\N	\N
15328	43.269	\N	\N	\N	\N	\N	\N	\N
27156	47.150	\N	\N	\N	\N	\N	\N	\N
27146	47.147	\N	\N	\N	\N	\N	\N	\N
16202	43.650	\N	\N	\N	\N	\N	\N	\N
22965	45.431	\N	\N	\N	\N	\N	\N	\N
15155	43.166	\N	\N	\N	\N	\N	\N	\N
14989	43.042	\N	\N	\N	\N	\N	\N	\N
23700	45.641	\N	\N	\N	\N	\N	\N	\N
21497	45.061	\N	\N	\N	\N	\N	\N	\N
25225	46.128	\N	\N	\N	\N	\N	\N	\N
17427	44.041	\N	\N	\N	\N	\N	\N	\N
27576	47.599	\N	\N	\N	\N	\N	\N	\N
29076	81.177	\N	\N	\N	\N	\N	\N	\N
17212	43.976	\N	\N	\N	\N	\N	\N	\N
29083	81.932	\N	\N	\N	\N	\N	\N	\N
18911	44.445	\N	\N	\N	\N	\N	\N	\N
16584	43.785	\N	\N	\N	\N	\N	\N	\N
18868	44.435	\N	\N	\N	\N	\N	\N	\N
15685	43.447	\N	\N	\N	\N	\N	\N	\N
28094	48.828	\N	\N	\N	\N	\N	\N	\N
21007	44.940	\N	\N	\N	\N	\N	\N	\N
18787	44.414	\N	\N	\N	\N	\N	\N	\N
24294	45.824	\N	\N	\N	\N	\N	\N	\N
19203	44.515	\N	\N	\N	\N	\N	\N	\N
18120	44.247	\N	\N	\N	\N	\N	\N	\N
18211	44.266	\N	\N	\N	\N	\N	\N	\N
20657	44.862	\N	\N	\N	\N	\N	\N	\N
19562	44.609	\N	\N	\N	\N	\N	\N	\N
15547	43.386	\N	\N	\N	\N	\N	\N	\N
19878	44.684	\N	\N	\N	\N	\N	\N	\N
14871	42.953	\N	\N	\N	\N	\N	\N	\N
14597	42.504	\N	\N	\N	\N	\N	\N	\N
14542	42.033	\N	\N	\N	\N	\N	\N	\N
15652	43.429	\N	\N	\N	\N	\N	\N	\N
15003	43.053	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: skaters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.skaters (skater_id, skater_name, dob, home_club, gender, country, region) FROM stdin;
14536	Xandra Velzeboer	\N	\N	Female	Netherlands	\N
14539	Kim Boutin	\N	\N	Female	Canada	\N
14542	Arianna Fontana	\N	\N	Female	Italy	\N
14543	Rikki Doak	\N	\N	Female	Canada	\N
14551	Suzanne Schulting	\N	\N	Female	Netherlands	\N
14552	Elise Christie	\N	\N	Female	United Kingdom	\N
14557	Natalia Maliszewska	\N	\N	Female	Poland	\N
14559	Minjeong Choi	\N	\N	Female	Republic of Korea	\N
14564	Chunyu Qu	\N	\N	Female	China	\N
14565	Elena Seregina	\N	\N	Female	Russia	\N
14566	Selma Poutsma	\N	\N	Female	Netherlands	\N
14572	Suk Hee Shim	\N	\N	Female	Republic of Korea	\N
14573	Marianne St-Gelais	\N	\N	Female	Canada	\N
14576	Lara Van Ruijven	\N	\N	Female	Netherlands	\N
14581	Kristen Santos-Griswold	\N	\N	Female	United States	\N
14589	Danae Blais	\N	\N	Female	Canada	\N
14590	Chutong Zhang	\N	\N	Female	China	\N
14592	Florence Brunelle	\N	\N	Female	Canada	\N
14597	Kexin Fan	\N	\N	Female	China	\N
14599	Sofia Prosvirnova	\N	\N	Female	Russia	\N
14605	Van Yara Kerkhof	\N	\N	Female	Netherlands	\N
14606	Kasandra Bradette	\N	\N	Female	Canada	\N
14616	Nikola Mazur	\N	\N	Female	Poland	\N
14626	Meng Wang	\N	\N	Female	China	\N
14629	Martina Valcepina	\N	\N	Female	Italy	\N
14636	Aurelie Monvoisin	\N	\N	Female	France	\N
14644	Corinne Stoddard	\N	\N	Female	United States	\N
14660	Alyson Charles	\N	\N	Female	Canada	\N
14668	Whimin Seo	\N	\N	Female	Republic of Korea	\N
14677	Petra Jaszapati	\N	\N	Female	Hungary	\N
14721	Michelle Velzeboer	\N	\N	Female	Netherlands	\N
14732	Arianna Valcepina	\N	\N	Female	Italy	\N
14738	Seung-Hi Park	\N	\N	Female	Republic of Korea	\N
14743	Yize Zang	\N	\N	Female	China	\N
14744	De Rianne Vries	\N	\N	Female	Netherlands	\N
14749	Li Gong	\N	\N	Female	China	\N
14751	Yuting Zhang	\N	\N	Female	China	\N
14754	Maame Biney	\N	\N	Female	United States	\N
14761	Emina Malagich	\N	\N	Female	Russia	\N
14769	Sumire Kikuchi	\N	\N	Female	Japan	\N
14791	Soyoun Lee	\N	\N	Female	Republic of Korea	\N
14830	Jiyoo Kim	\N	\N	Female	Republic of Korea	\N
14862	Hanne Desmet	\N	\N	Female	Belgium	\N
14871	Jorien Ter Mors	\N	\N	Female	Netherlands	\N
14874	Jamie Macdonald	\N	\N	Female	Canada	\N
14890	Valerie Maltais	\N	\N	Female	Canada	\N
14896	Jiyun Park	\N	\N	Female	Republic of Korea	\N
14908	Jessica Gregg	\N	\N	Female	Canada	\N
14910	Xinran Wang	\N	\N	Female	China	\N
14935	Shione Kaminaga	\N	\N	Female	Japan	\N
14950	Renee Marie Steenge	\N	\N	Female	Canada	\N
14965	Ye Jin Kim	\N	\N	Female	Republic of Korea	\N
14967	Ji-Soo Jeon	\N	\N	Female	Republic of Korea	\N
14989	Qiuhong Liu	\N	\N	Female	China	\N
14992	Jessica Kooreman	\N	\N	Female	United States	\N
15003	Andrea Keszler	\N	\N	Female	Hungary	\N
15004	Gabriela Topolska	\N	\N	Female	Poland	\N
15012	Gabrielle Williamson-Derraugh	\N	\N	Female	Canada	\N
15013	Elena Viviani	\N	\N	Female	Italy	\N
15064	Kathryn Thomson	\N	\N	Female	United Kingdom	\N
15078	Yu Tong Han	\N	\N	Female	China	\N
15101	Yue Lin	\N	\N	Female	China	\N
15110	Ekaterina Efremenkova	\N	\N	Female	Russia	\N
15114	Yubin Lee	\N	\N	Female	Republic of Korea	\N
15115	Kamila Stormowska	\N	\N	Female	Poland	\N
15125	Claudia Gagnon	\N	\N	Female	Canada	\N
15133	Veronique Pierron	\N	\N	Female	France	\N
15136	Tatiana Borodulina	\N	\N	Female	Russia	\N
15155	Gomez Nicole Botter	\N	\N	Female	Italy	\N
15163	Charlotte Gilmartin	\N	\N	Female	United Kingdom	\N
15166	Evgeniya Zakharova	\N	\N	Female	Russia	\N
15178	Marie-Eve Drolet	\N	\N	Female	Canada	\N
15197	Zsofia Konya	\N	\N	Female	Hungary	\N
15201	Anna Seidel	\N	\N	Female	GER	\N
15248	Courtney Sarault	\N	\N	Female	Canada	\N
15298	Daria Krasnokutskaia	\N	\N	Female	Russia	\N
15317	Ye Wang	\N	\N	Female	China	\N
15325	Kalyna Roberge	\N	\N	Female	Canada	\N
15328	Patrycja Maliszewska	\N	\N	Female	Poland	\N
15353	Moemi Kikuchi	\N	\N	Female	Japan	\N
15366	A Lang Kim	\N	\N	Female	Republic of Korea	\N
15402	Cynthia Mascitto	\N	\N	Female	Italy	\N
15431	Jinyu Li	\N	\N	Female	China	\N
15465	Ah Rum Noh	\N	\N	Female	Republic of Korea	\N
15487	Yana Khan	\N	\N	Female	Kazakhstan	\N
15512	Geon Hee Kim	\N	\N	Female	Republic of Korea	\N
15531	Gilli Kim	\N	\N	Female	Republic of Korea	\N
15547	Sayuri Shimizu	\N	\N	Female	Japan	\N
15548	Tifany Huot Marchand	\N	\N	Female	France	\N
15652	Bianca Walter	\N	\N	Female	GER	\N
15685	Jessica Hewitt	\N	\N	Female	Canada	\N
15696	Lucia Peretti	\N	\N	Female	Italy	\N
15741	Ayuko Ito	\N	\N	Female	Japan	\N
15775	Jianrou Li	\N	\N	Female	China	\N
15776	Yang Liu	\N	\N	Female	China	\N
15806	Audrey Phaneuf	\N	\N	Female	Canada	\N
15924	Ekaterina Konstantinova	\N	\N	Female	Russia	\N
15934	Agne Sereikaite	\N	\N	Female	Lithuania	\N
15938	Lana Gehring	\N	\N	Female	United States	\N
15964	Yihan Guo	\N	\N	Female	China	\N
16029	Lia Stepanova	\N	\N	Female	Russia	\N
16055	Magdalena Warakomska	\N	\N	Female	Poland	\N
16075	Yang Yang	\N	\N	Female	China	\N
16118	Tian Yu Fu	\N	\N	Female	China	\N
16198	Megan Boudrias	\N	\N	Female	Canada	\N
16199	Katherine Reutter-Adamek	\N	\N	Female	United States	\N
16202	Evgenia Radanova	\N	\N	Female	BUL	\N
16272	Hongshuang Li	\N	\N	Female	China	\N
16301	Den Tineke Dulk	\N	\N	Female	Belgium	\N
16319	Ha-Ri Cho	\N	\N	Female	Republic of Korea	\N
16364	Sofya Boytsova	\N	\N	Female	Russia	\N
16368	Do Hee Noh	\N	\N	Female	Republic of Korea	\N
16392	Nannan Zhao	\N	\N	Female	China	\N
16402	Se Jung Ahn	\N	\N	Female	Republic of Korea	\N
16446	Katerina Novotna	\N	\N	Female	Czechia	\N
16500	Caroline Truchon	\N	\N	Female	Canada	\N
16554	Arianna Sighel	\N	\N	Female	Italy	\N
16584	Alyson Dudek	\N	\N	Female	United States	\N
16672	Anastassiya Krestova	\N	\N	Female	Kazakhstan	\N
16678	Kimberly Goetz	\N	\N	Female	United States	\N
16694	Ami Hirai	\N	\N	Female	Japan	\N
16751	Yui Sakai	\N	\N	Female	Japan	\N
16759	Deanna Lockett	\N	\N	Female	Hungary	\N
16772	Camille De Serres-Rainville	\N	\N	Female	Canada	\N
16797	Chiara Betti	\N	\N	Female	Italy	\N
16869	Yang Song	\N	\N	Female	China	\N
16885	Ji Hyun Choi	\N	\N	Female	Republic of Korea	\N
16900	Tatiana Bodova	\N	\N	Female	Slovakia	\N
17023	Yulia Shishkina	\N	\N	Female	Russia	\N
17046	Xue Wang	\N	\N	Female	China	\N
17063	Yelyzaveta Sydorko	\N	\N	Female	Ukraine	\N
17097	Valeriya Reznik	\N	\N	Female	Russia	\N
17126	Cloe Ollivier	\N	\N	Female	France	\N
17170	Qi Yin	\N	\N	Female	China	\N
17175	Maria Garcia	\N	\N	Female	United States	\N
17193	Aoi Watanabe	\N	\N	Female	Japan	\N
17212	Marina Georgieva-Nikolova	\N	\N	Female	BUL	\N
17277	Yang Zhou	\N	\N	Female	China	\N
17278	Shin-Young Yang	\N	\N	Female	Republic of Korea	\N
17303	Eun Byul Lee	\N	\N	Female	Republic of Korea	\N
17346	Jiaying Tao	\N	\N	Female	China	\N
17377	Liesbeth Mau Asam	\N	\N	Female	Netherlands	\N
17391	Katrin Manoilova	\N	\N	Female	BUL	\N
17402	Valentina Ascic	\N	\N	Female	CRO	\N
17427	Erika Huszar	\N	\N	Female	Hungary	\N
17430	Petra Rusnakova	\N	\N	Female	Slovakia	\N
17433	Xiaoxue Meng	\N	\N	Female	China	\N
17456	Alison Desmarais	\N	\N	Female	Canada	\N
17482	Biba Sakurai	\N	\N	Female	Japan	\N
17531	Chae Hyun Kim	\N	\N	Female	Republic of Korea	\N
17545	Michaela Kuncirova	\N	\N	Female	Czechia	\N
17655	Linlin Sun	\N	\N	Female	China	\N
17656	Lucia Filipova	\N	\N	Female	Slovakia	\N
17696	Sara Luca Bacskai	\N	\N	Female	Hungary	\N
17699	Sae-Bom Shin	\N	\N	Female	Republic of Korea	\N
17723	Alexandra Danneel	\N	\N	Female	Belgium	\N
17740	Tina Grassow	\N	\N	Female	GER	\N
17746	Grace Lee	\N	\N	Female	United States	\N
17749	Bernadett Heidum	\N	\N	Female	Hungary	\N
17766	Sarah Lindsay	\N	\N	Female	United Kingdom	\N
17856	Georgie Dalrymple	\N	\N	Female	Netherlands	\N
17942	Hana Takahashi	\N	\N	Female	Japan	\N
17950	Kimberly Derrick	\N	\N	Female	United States	\N
17984	Inna Simonova	\N	\N	Female	Kazakhstan	\N
18000	Petra Vankova	\N	\N	Female	Czechia	\N
18038	Shenyi Cai	\N	\N	Female	China	\N
18047	Ba-Ra Jung	\N	\N	Female	Republic of Korea	\N
18071	Hitomi Saito	\N	\N	Female	Japan	\N
18114	Ekaterina Strelkova	\N	\N	Female	Russia	\N
18120	Annita Van Doorn	\N	\N	Female	Netherlands	\N
18142	Stephanie Bouvier	\N	\N	Female	France	\N
18211	Xinyue Wang	\N	\N	Female	Hong Kong	\N
18235	Anna Matveeva	\N	\N	Female	Russia	\N
18260	Julie Letai	\N	\N	Female	United States	\N
18300	Min-Jung Kim	\N	\N	Female	Republic of Korea	\N
18307	Susanne Rudolph	\N	\N	Female	GER	\N
18309	Kamryn Lute	\N	\N	Female	United States	\N
18347	Weiying Hao	\N	\N	Female	China	\N
18376	Holly Hoyland	\N	\N	Female	United Kingdom	\N
18394	Kseniya Adamenko	\N	\N	Female	Ukraine	\N
18396	Chanseo Kim	\N	\N	Female	Republic of Korea	\N
18418	Courtney Shmyr	\N	\N	Female	Canada	\N
18453	Erika Lindgren	\N	\N	Female	Sweden	\N
18494	Natalia Plugina	\N	\N	Female	Russia	\N
18499	Soo Lim Han	\N	\N	Female	Republic of Korea	\N
18503	Mariya Izafatava	\N	\N	Female	Belarus	\N
18519	Yuki Kikuchi	\N	\N	Female	Japan	\N
18535	Xuan Li	\N	\N	Female	China	\N
18569	Tania Vicent	\N	\N	Female	Canada	\N
18615	Tereza Pfeiferova	\N	\N	Female	Czechia	\N
18673	Soo-Min Son	\N	\N	Female	Republic of Korea	\N
18700	Lea Tessier	\N	\N	Female	Canada	\N
18709	Valerie Lambert	\N	\N	Female	Canada	\N
18715	Hiroko Sadakane	\N	\N	Female	Japan	\N
18759	Eunice Lee	\N	\N	Female	United States	\N
18784	Aida Bella	\N	\N	Female	Poland	\N
18787	Anne Maltais	\N	\N	Female	Canada	\N
18801	Alica Porubska	\N	\N	Female	Slovakia	\N
18829	Marie-Andree Mendes-Campeau	\N	\N	Female	Canada	\N
18834	Cecilia Maffei	\N	\N	Female	Italy	\N
18845	Olga Belyakova	\N	\N	Female	Russia	\N
18860	Julie Jung	\N	\N	Female	Australia	\N
18868	Sabrina Bourgela	\N	\N	Female	Canada	\N
18911	Sanne Van Kerkhof	\N	\N	Female	Netherlands	\N
18965	Lea Chamberland-Dostie	\N	\N	Female	Canada	\N
18973	Sarah Chen	\N	\N	Female	United States	\N
18992	Vera Rasskazova	\N	\N	Female	Russia	\N
19005	Marie Yoshida	\N	\N	Female	Japan	\N
19023	Malika Yermek	\N	\N	Female	Kazakhstan	\N
19030	Kii Kurokawa	\N	\N	Female	Japan	\N
19041	Elisa Confortola	\N	\N	Female	Italy	\N
19165	Namasthee Harris-Gauthier	\N	\N	Female	Canada	\N
19180	Tineke Den Dulk	\N	\N	Female	Netherlands	\N
19203	Marta Wojcik	\N	\N	Female	Poland	\N
19206	Ekaterina Belova	\N	\N	Female	Russia	\N
19265	Rebeka Sziliczei-Nemet	\N	\N	Female	Hungary	\N
19267	Allison Baver	\N	\N	Female	United States	\N
19274	Yuna Koike	\N	\N	Female	Japan	\N
19320	Mariia-Mahdalyna Uzakova	\N	\N	Female	Ukraine	\N
19328	Yichao Wang	\N	\N	Female	China	\N
19347	Veronika Windisch	\N	\N	Female	Austria	\N
19375	Ann-Sophie Bachand	\N	\N	Female	Canada	\N
19382	Hanna Izafatava	\N	\N	Female	Belarus	\N
19391	Alyona Volkovitskaya	\N	\N	Female	Kazakhstan	\N
19424	Dam Min Kim	\N	\N	Female	Republic of Korea	\N
19505	Aili Xu	\N	\N	Female	China	\N
19536	Gabriella Hachem	\N	\N	Female	United States	\N
19548	Yubin Choi	\N	\N	Female	Republic of Korea	\N
19562	Da-Hye Jeon	\N	\N	Female	Republic of Korea	\N
19683	Suyoun Lee	\N	\N	Female	Republic of Korea	\N
19776	Iong A Kim	\N	\N	Female	Kazakhstan	\N
19878	Federica Tombolato	\N	\N	Female	Italy	\N
19935	Gloria Ioriatti	\N	\N	Female	Italy	\N
19942	Barbara Somogyi	\N	\N	Female	Hungary	\N
19953	Milada Dosla	\N	\N	Female	Czechia	\N
19985	Emily Scott	\N	\N	Female	United States	\N
20072	Gwendoline Daudet	\N	\N	Female	France	\N
20155	Julia Riedel	\N	\N	Female	GER	\N
20265	Mariya Dolgopolova	\N	\N	Female	Ukraine	\N
20313	Katia Filippi	\N	\N	Female	Italy	\N
20319	Mika Ozawa	\N	\N	Female	Japan	\N
20410	Sangjeong Kong	\N	\N	Female	Republic of Korea	\N
20433	Ayisha Qi Miao	\N	\N	Female	Canada	\N
20439	Assel Taishmanova	\N	\N	Female	Kazakhstan	\N
20471	Magdalena Zych	\N	\N	Female	Poland	\N
20499	Gioya Lancee	\N	\N	Female	Netherlands	\N
20541	Volha Talayeva	\N	\N	Female	Belarus	\N
20608	Miwako Yamaura	\N	\N	Female	Japan	\N
20630	Tamara Frederick	\N	\N	Female	United States	\N
20657	Rozsa Darazs	\N	\N	Female	Hungary	\N
20704	Jong Song Ryo	\N	\N	Female	Korea, Democratic People's Republic of	\N
20708	Joanie Gervais	\N	\N	Female	Canada	\N
20712	Hyo Jin Kim	\N	\N	Female	Australia	\N
20739	Yulia Kichapova	\N	\N	Female	Russia	\N
20769	Angel Daleman	\N	\N	Female	Netherlands	\N
20828	Nina Evteeva	\N	\N	Female	Russia	\N
20894	Han Xiao	\N	\N	Female	China	\N
20931	Marta Knoch	\N	\N	Female	Hungary	\N
20947	Paula Bzura	\N	\N	Female	Poland	\N
20983	Yeonjae Jang	\N	\N	Female	Republic of Korea	\N
20996	Maja Somodi	\N	\N	Female	Hungary	\N
20997	Michaela Hruzova	\N	\N	Female	Czechia	\N
21007	Xue Kong	\N	\N	Female	China	\N
21111	Olena Korinchuk	\N	\N	Female	Ukraine	\N
21132	Jihee Kang	\N	\N	Female	Republic of Korea	\N
21177	Lisa Eckstein	\N	\N	Female	GER	\N
21212	Katia Zini	\N	\N	Female	Italy	\N
21230	Mi-Yeon Lee	\N	\N	Female	Republic of Korea	\N
21231	Vera Trybul	\N	\N	Female	Belarus	\N
21237	Jung-Won Choi	\N	\N	Female	Republic of Korea	\N
21298	Patrycja Markiewicz	\N	\N	Female	Poland	\N
21299	Anne Floor Otter	\N	\N	Female	Netherlands	\N
21371	Ailin Xing	\N	\N	Female	China	\N
21377	Hakyung Son	\N	\N	Female	Republic of Korea	\N
21384	Hyun Sun Hwang	\N	\N	Female	Republic of Korea	\N
21390	Hee Won Son	\N	\N	Female	Canada	\N
21426	Oliwia Gawlica	\N	\N	Female	Poland	\N
21433	Aliya Amirgaliyeva	\N	\N	Female	Kazakhstan	\N
21467	Caroline Murphy	\N	\N	Female	Luxembourg	\N
21470	Katherine Ralston	\N	\N	Female	United States	\N
21497	Szandra Lajtos	\N	\N	Female	Hungary	\N
21499	Avalon Aardoom	\N	\N	Female	Netherlands	\N
21521	Jacqueline Chen	\N	\N	Female	United States	\N
21551	Maaike Vos	\N	\N	Female	Netherlands	\N
21592	Aurelie Leveque	\N	\N	Female	France	\N
21626	Melissa Tunno	\N	\N	Female	Italy	\N
21658	Yoon Jung Park	\N	\N	Female	Republic of Korea	\N
21742	Vanessa Belanger-Marceau	\N	\N	Female	Canada	\N
21755	Junghyun Park	\N	\N	Female	Republic of Korea	\N
21756	Aika Klein	\N	\N	Female	GER	\N
21873	Josephine Meschnik	\N	\N	Female	GER	\N
21914	Geneve Belanger	\N	\N	Female	Canada	\N
21950	Myeongbi Jung	\N	\N	Female	GER	\N
22013	Zornica Pencheva	\N	\N	Female	BUL	\N
22027	Anastassiya Astrakhantseva	\N	\N	Female	Kazakhstan	\N
22053	Eun-Ju Jung	\N	\N	Female	Republic of Korea	\N
22098	Xeniya Motova	\N	\N	Female	Kazakhstan	\N
22140	Yulyia Yelsakova	\N	\N	Female	Belarus	\N
22183	Katarina Buric	\N	\N	Female	CRO	\N
22266	Anna Yakimova	\N	\N	Female	BUL	\N
22271	Hailey Choi	\N	\N	Female	United States	\N
22302	Marijn Wiersma	\N	\N	Female	Netherlands	\N
22328	Christin Priebst	\N	\N	Female	GER	\N
22463	Toko Nanri	\N	\N	Female	Japan	\N
22483	Ivanie Blondin	\N	\N	Female	Canada	\N
22508	Roza Kooystra	\N	\N	Female	Netherlands	\N
22530	Alex Stanley	\N	\N	Female	United Kingdom	\N
22599	Cheyenne Goh	\N	\N	Female	Singapore	\N
22686	Anna Spechenhauser	\N	\N	Female	Italy	\N
22721	Samantha Morrison	\N	\N	Female	United Kingdom	\N
22743	Karolina Milkowska	\N	\N	Female	Poland	\N
22758	Wei Lin	\N	\N	Female	TPE	\N
22765	Vera Antanenka	\N	\N	Female	Belarus	\N
22861	Andrea Do-Duc	\N	\N	Female	Canada	\N
22864	Maria Oborina	\N	\N	Female	Russia	\N
22902	Rina Yamana	\N	\N	Female	Japan	\N
22953	Anna Turi	\N	\N	Female	Hungary	\N
22963	Regina Eszter Varga	\N	\N	Female	Hungary	\N
22965	Barbara Kobylakiewicz	\N	\N	Female	Poland	\N
22986	Evelien Van Kerckvoorde	\N	\N	Female	Belgium	\N
23004	Safiya Vlasova	\N	\N	Female	Ukraine	\N
23087	Yuliia Beresneva	\N	\N	Female	Russia	\N
23100	Rika Kanai	\N	\N	Female	Japan	\N
23146	Lan Huang	\N	\N	Female	China	\N
23148	Marketa Fajkusova	\N	\N	Female	Czechia	\N
23234	Olga Tikhonova	\N	\N	Female	Kazakhstan	\N
23305	Meng Lin	\N	\N	Female	China	\N
23386	Laurie Marceau	\N	\N	Female	Canada	\N
23390	Yasuko Sakashita	\N	\N	Female	Japan	\N
23409	Gina Jacobs	\N	\N	Female	GER	\N
23454	Danielle Amos	\N	\N	Female	United States	\N
23457	Annik Plamondon	\N	\N	Female	Canada	\N
23483	Anastasia Surkova	\N	\N	Female	Russia	\N
23616	Aknur Zhanadil	\N	\N	Female	Kazakhstan	\N
23700	Veronika Denes	\N	\N	Female	Hungary	\N
23711	Kum Hyang Kim	\N	\N	Female	Korea, Democratic People's Republic of	\N
23748	Chika Ishida	\N	\N	Female	Japan	\N
23757	Miaohui Yu	\N	\N	Female	China	\N
23763	Thanutchaya Chatthaisong	\N	\N	Female	Thailand	\N
23777	Anke Hartmann	\N	\N	Female	GER	\N
23782	Evita Krievane	\N	\N	Female	LAT	\N
23796	Michaela Petrova	\N	\N	Female	BUL	\N
23813	Arthur Gotfrey	\N	\N	Female		\N
23850	Patricia Toth	\N	\N	Female	Hungary	\N
23938	Madina Zhanbusinova	\N	\N	Female	Kazakhstan	\N
23960	Dan Li	\N	\N	Female	China	\N
24014	Maria Orlova	\N	\N	Female	Russia	\N
24074	Ranya Ezzi	\N	\N	Female	Sweden	\N
24134	Mary Grace	\N	\N	Female	United States	\N
24146	Claudia Heeney	\N	\N	Female	Canada	\N
24180	Nagiho Yoshida	\N	\N	Female	Japan	\N
24294	Jessica Ausma	\N	\N	Female	Netherlands	\N
24349	Louise Milesi	\N	\N	Female	France	\N
24378	Liudmila Kozulina	\N	\N	Female	Russia	\N
24395	Raya Zaharieva	\N	\N	Female	BUL	\N
24430	Olga Maskaikina	\N	\N	Female	Russia	\N
24453	Ekaterina Baranok	\N	\N	Female	Russia	\N
24470	Lea Thibault	\N	\N	Female	Canada	\N
24598	Charlotte Hayward	\N	\N	Female	United Kingdom	\N
24658	Dariya Volokitina	\N	\N	Female	Kazakhstan	\N
24666	Jong Mi Kim	\N	\N	Female	Korea, Democratic People's Republic of	\N
24670	Angelina Tarasova	\N	\N	Female	Russia	\N
24671	Katsiaryna Chystaya	\N	\N	Female	Belarus	\N
28114	Marta Paskevica	\N	\N	Female	LAT	\N
24800	Jung Min Yoon	\N	\N	Female	Republic of Korea	\N
24806	Hanna Sokolowska	\N	\N	Female	Poland	\N
24824	Jennifer Pickering	\N	\N	Female	United Kingdom	\N
24851	Elisa Lenke	\N	\N	Female	GER	\N
24898	Jin Jingzhu	\N	\N	Female	China	\N
24922	Anna Jansone	\N	\N	Female	LAT	\N
24959	Kristina Vuteva	\N	\N	Female	BUL	\N
25031	Eva Grenouilloux	\N	\N	Female	France	\N
25106	Hyang Mi Ri	\N	\N	Female	Korea, Democratic People's Republic of	\N
25111	April Shin	\N	\N	Female	United States	\N
25171	Weronika Surowiec	\N	\N	Female	Poland	\N
25225	Anna Romanowicz	\N	\N	Female	Poland	\N
25229	Anita Nagay	\N	\N	Female	Kazakhstan	\N
25231	Anna Katharina Gaertner	\N	\N	Female	GER	\N
25282	Hee Jung Cheon	\N	\N	Female	Republic of Korea	\N
25285	Elizabeth Johnson	\N	\N	Female	United States	\N
25291	Hae Bin Kim	\N	\N	Female	Republic of Korea	\N
25438	Nicole Martinelli	\N	\N	Female	Italy	\N
25500	Xiaowan Sun	\N	\N	Female	China	\N
25561	Monika Heller	\N	\N	Female	GER	\N
25619	Fumi Kitabuki	\N	\N	Female	Japan	\N
25676	Debora Secchi	\N	\N	Female	Italy	\N
25681	Gergana Patsova	\N	\N	Female	BUL	\N
25736	Jaewon Song	\N	\N	Female	Republic of Korea	\N
25742	Anne-Sophie Davreux	\N	\N	Female	Belgium	\N
25760	Jung Hyun Park	\N	\N	Female	Republic of Korea	\N
25766	Tunde Balazs	\N	\N	Female	Romania	\N
25809	Diana Mykhalchuk	\N	\N	Female	Ukraine	\N
25833	Yingying Sun	\N	\N	Female	China	\N
25848	Anna Gamorina	\N	\N	Female	Russia	\N
25853	Tamara Tokarova	\N	\N	Female	Slovakia	\N
25894	Karolina Regucka	\N	\N	Female	Poland	\N
25939	Jana Dombrovskaya	\N	\N	Female	Belarus	\N
25998	Darya Goncharova	\N	\N	Female	Kazakhstan	\N
26045	Magdalena Szwajlik	\N	\N	Female	Poland	\N
26056	Lexi Burkholder	\N	\N	Female	United States	\N
26063	Monika Grzadkowska	\N	\N	Female	Poland	\N
26078	Karolina Parczewska	\N	\N	Female	Poland	\N
26108	Efi Papakonstanti	\N	\N	Female	GER	\N
26117	Alina Azhgaliyeva	\N	\N	Female	Kazakhstan	\N
26253	Gloria Confortola	\N	\N	Female	Italy	\N
26264	Ji Ryon Ri	\N	\N	Female	Korea, Democratic People's Republic of	\N
26291	Katalin Kristo	\N	\N	Female	Romania	\N
26311	Beata Podwysocka	\N	\N	Female	Poland	\N
26482	Ilaria Cotza	\N	\N	Female	Italy	\N
26500	Emma Hympanova	\N	\N	Female	Slovakia	\N
26513	Hye Jong Hwang	\N	\N	Female	Korea, Democratic People's Republic of	\N
26516	Tina Rietzke	\N	\N	Female	GER	\N
26573	Aafke Soet	\N	\N	Female	Netherlands	\N
26608	Svitlana Repetska	\N	\N	Female	Ukraine	\N
26626	Ylenia Tota	\N	\N	Female	Italy	\N
26655	Vera Miliyaeva	\N	\N	Female	Russia	\N
26661	Kadisha Bakhitkereyeva	\N	\N	Female	Kazakhstan	\N
26662	Talya Kaye	\N	\N	Female	United Kingdom	\N
26684	Hui Chang	\N	\N	Female	TPE	\N
26687	Kaja Pniewska	\N	\N	Female	Poland	\N
26710	Kinga Kovacs	\N	\N	Female	Romania	\N
7612	Sjinkie Knegt	\N	\N	Male	Netherlands	\N
7613	Jung Su Lee	\N	\N	Male	Republic of Korea	\N
7614	Semen Elistratov	\N	\N	Male	Russia	\N
7615	Charle Cournoyer	\N	\N	Male	Canada	\N
7616	Pascal Dion	\N	\N	Male	Canada	\N
7617	Shaolin Sandor Liu	\N	\N	Male	Hungary	\N
7618	Daeheon Hwang	\N	\N	Male	Republic of Korea	\N
7620	Csaba Burjan	\N	\N	Male	Hungary	\N
7621	Kazuki Yoshinaga	\N	\N	Male	Japan	\N
7622	Shaoang Liu	\N	\N	Male	Hungary	\N
7623	Steven Dubois	\N	\N	Male	Canada	\N
7625	Charles Hamelin	\N	\N	Male	Canada	\N
7627	Denis Ayrapetyan	\N	\N	Male	Russia	\N
7628	June Seo Lee	\N	\N	Male	Republic of Korea	\N
7629	Pengyu Wang	\N	\N	Male	China	\N
7630	Thibaut Fauconnet	\N	\N	Male	France	\N
7631	Samuel Girard	\N	\N	Male	Canada	\N
7635	Aaron Tran	\N	\N	Male	United States	\N
7636	Vladislav Bykanov	\N	\N	Male	Israel	\N
7638	Keita Watanabe	\N	\N	Male	Japan	\N
7639	Jang Hyuk Park	\N	\N	Male	Republic of Korea	\N
7642	Jens Almey	\N	\N	Male	Belgium	\N
7643	Tianyu Han	\N	\N	Male	China	\N
7644	Hyo Jun Lim	\N	\N	Male	Republic of Korea	\N
7645	Kyung Hwan Hong	\N	\N	Male	Republic of Korea	\N
7653	Sven Roes	\N	\N	Male	Netherlands	\N
7654	Kai An	\N	\N	Male	China	\N
7655	J.R. Celski	\N	\N	Male	United States	\N
7657	Sebastien Lepape	\N	\N	Male	France	\N
7658	Roberts Kruzbergs	\N	\N	Male	LAT	\N
7662	Yi Ra Seo	\N	\N	Male	Republic of Korea	\N
7663	Roberto Pukitis	\N	\N	Male	LAT	\N
7665	Stijn Desmet	\N	\N	Male	Belgium	\N
7667	Hyun Woo (Andy) Jung	\N	\N	Male	Australia	\N
7669	Mark Prinsen	\N	\N	Male	Netherlands	\N
7673	Christoph Schubert	\N	\N	Male	GER	\N
7676	Hiroki Yokoyama	\N	\N	Male	Japan	\N
7677	Ziwei Ren	\N	\N	Male	China	\N
7680	Vladimir Balbekov	\N	\N	Male	Russia	\N
7681	John-Henry Krueger	\N	\N	Male	United States	\N
7682	Vladimir Grigorev	\N	\N	Male	Russia	\N
7688	Adil Galiakhmetov	\N	\N	Male	Kazakhstan	\N
7690	Tommaso Dotti	\N	\N	Male	Italy	\N
7701	De Itzhak Laat	\N	\N	Male	Netherlands	\N
7711	Van 'T Jens Wout	\N	\N	Male	Netherlands	\N
7715	Pietro Sighel	\N	\N	Male	Italy	\N
7720	Farrell Treacy	\N	\N	Male	United Kingdom	\N
7723	Nicola Rodigari	\N	\N	Male	Italy	\N
7727	Seung Soo Han	\N	\N	Male	Republic of Korea	\N
7734	Ji Won Park	\N	\N	Male	Republic of Korea	\N
7736	Reinis Berzins	\N	\N	Male	LAT	\N
7741	Adwin Snellink	\N	\N	Male	Netherlands	\N
7743	Wenlong Li	\N	\N	Male	China	\N
7744	Nurtilek Kazhgali	\N	\N	Male	Kazakhstan	\N
7745	Da Woon Sin	\N	\N	Male	Republic of Korea	\N
7747	Yoon-Gy Kwak	\N	\N	Male	Republic of Korea	\N
7748	Adam Callister	\N	\N	Male	United States	\N
7750	Yuri Confortola	\N	\N	Male	Italy	\N
7751	Friso Emons	\N	\N	Male	Netherlands	\N
7756	Dan Iwasa	\N	\N	Male	Japan	\N
7772	Furkan Akar	\N	\N	Male	Turkey	\N
7776	Tae Sung Kim	\N	\N	Male	Republic of Korea	\N
7779	Brendan Corey	\N	\N	Male	Australia	\N
7781	Luca Spechenhauser	\N	\N	Male	Italy	\N
7789	Thibault Crolet	\N	\N	Male	France	\N
7792	Andrea Cassinelli	\N	\N	Male	Italy	\N
7795	William Dandjinou	\N	\N	Male	Canada	\N
7799	William Preudhomme	\N	\N	Male	Canada	\N
7801	Nico Andermann	\N	\N	Male	Austria	\N
7803	Michal Niewinski	\N	\N	Male	Poland	\N
7808	Gun Woo Kim	\N	\N	Male	Republic of Korea	\N
7811	Mersaid Zhaxybayev	\N	\N	Male	Kazakhstan	\N
7813	Songnan Yu	\N	\N	Male	China	\N
7817	Felix Roussel	\N	\N	Male	Canada	\N
7819	Ruslan Zakharov	\N	\N	Male	Russia	\N
7833	Koen Slootweg	\N	\N	Male	Netherlands	\N
7851	Karlis Kruzbergs	\N	\N	Male	LAT	\N
7852	Keith Carroll	\N	\N	Male	United States	\N
7855	Marcus Howard	\N	\N	Male	United States	\N
7857	Donghyun Lee	\N	\N	Male	Republic of Korea	\N
7860	Si Un Kim	\N	\N	Male	Republic of Korea	\N
7864	Guanyi Liu	\N	\N	Male	China	\N
7872	Mathieu Pelletier	\N	\N	Male	Canada	\N
7878	Yerkebulan Shamukhanov	\N	\N	Male	Kazakhstan	\N
7881	Alexander Shulginov	\N	\N	Male	Russia	\N
7886	Casey Mullarkey	\N	\N	Male	United States	\N
7892	In Wook Park	\N	\N	Male	Republic of Korea	\N
7896	Wesley Park	\N	\N	Male	United States	\N
7909	Qizhi Wang	\N	\N	Male	China	\N
7924	Pavel Sitnikov	\N	\N	Male	Russia	\N
7931	Davide Viscardi	\N	\N	Male	Italy	\N
7933	Tjerk De Boer	\N	\N	Male	Netherlands	\N
7938	Jiahua Song	\N	\N	Male	China	\N
7949	Denis Nikisha	\N	\N	Male	Kazakhstan	\N
7950	Hongzhi Xu	\N	\N	Male	China	\N
7956	Daan Breeuwsma	\N	\N	Male	Netherlands	\N
7971	Dongwook Kim	\N	\N	Male	Republic of Korea	\N
7978	Thomas Insuk Hong	\N	\N	Male	United States	\N
7980	Shogo Miyata	\N	\N	Male	Japan	\N
7987	Gabriel Volet	\N	\N	Male	France	\N
7994	Adrian Ludtke	\N	\N	Male	GER	\N
8004	Jingnan Shi	\N	\N	Male	China	\N
8008	Sungwoo Jang	\N	\N	Male	Republic of Korea	\N
8009	Cole William Isaac Krueger	\N	\N	Male	Hungary	\N
8013	Tristan Navarro	\N	\N	Male	France	\N
8016	Kota Kikuchi	\N	\N	Male	Japan	\N
8025	Nurbergen Zhumagaziyev	\N	\N	Male	Kazakhstan	\N
8028	Quentin Fercoq	\N	\N	Male	France	\N
8033	Mattia Antonioli	\N	\N	Male	Italy	\N
8045	Dennis Visser	\N	\N	Male	Netherlands	\N
8064	Guillaume Bastille	\N	\N	Male	Canada	\N
8097	Xiaojun Lin	\N	\N	Male	China	\N
8107	Ryan Mcanuff Mcanuff	\N	\N	Male	Ireland	\N
8108	Victor An	\N	\N	Male	Russia	\N
8117	Niall Treacy	\N	\N	Male	United Kingdom	\N
8123	Diane Sellier	\N	\N	Male	Poland	\N
8133	Keanu Blunden	\N	\N	Male	Australia	\N
8141	Radek Fajkus	\N	\N	Male	Czechia	\N
8156	Long Sun	\N	\N	Male	China	\N
8168	Kiichi Shigehiro	\N	\N	Male	Japan	\N
8177	Andrew Heo	\N	\N	Male	United States	\N
8187	Kosei Hayashi	\N	\N	Male	Japan	\N
8188	Bram Steenaart	\N	\N	Male	Netherlands	\N
8192	Firat Yardimci	\N	\N	Male	Turkey	\N
8196	Joshua Cheetham	\N	\N	Male	United Kingdom	\N
8211	Mateusz Mikolajuk	\N	\N	Male	Poland	\N
8212	Peter Riches	\N	\N	Male	United Kingdom	\N
8226	Viktor Knoch	\N	\N	Male	Hungary	\N
8235	Aibek Nassen	\N	\N	Male	Kazakhstan	\N
8258	Dylan Hoogerwerf	\N	\N	Male	Netherlands	\N
8264	Daniel Yoon	\N	\N	Male	United States	\N
8265	Bence Olah	\N	\N	Male	Hungary	\N
8285	Dimitar Georgiev	\N	\N	Male	BUL	\N
8287	Arthur Vanbesien	\N	\N	Male	France	\N
8296	Haobo Ren	\N	\N	Male	China	\N
8303	Jonathan So	\N	\N	Male	United States	\N
8316	Hok Young Jung	\N	\N	Male	Republic of Korea	\N
8322	Maksim Siarheyu	\N	\N	Male	Belarus	\N
8332	Pierre Boda	\N	\N	Male	Australia	\N
8342	Mateusz Krzeminski	\N	\N	Male	Poland	\N
8345	Mark Chong	\N	\N	Male	Italy	\N
8348	Francois Hamelin	\N	\N	Male	Canada	\N
8362	Ryosuke Sakazume	\N	\N	Male	Japan	\N
8375	Kay Huisman	\N	\N	Male	Netherlands	\N
8376	Fabrice Suh Dufberg	\N	\N	Male	Sweden	\N
8381	Vincent Jeanne	\N	\N	Male	France	\N
8395	Pawel Adamski	\N	\N	Male	Poland	\N
8400	Trevor Xu Xuan Tan	\N	\N	Male	Singapore	\N
8408	Kuandyk Suleymenov	\N	\N	Male	Kazakhstan	\N
8411	Ryan Pivirotto	\N	\N	Male	United States	\N
8422	Ryuta Inoue	\N	\N	Male	Japan	\N
8431	Xingguang Ma	\N	\N	Male	China	\N
8432	Zachary Biggs	\N	\N	Male	New Zealand	\N
8433	De Clayton Clemente	\N	\N	Male	United States	\N
8474	Yong Jin Lim	\N	\N	Male	Republic of Korea	\N
8485	Artem Kozlov	\N	\N	Male	Russia	\N
8494	Ibuki Hayashi	\N	\N	Male	Japan	\N
8495	Sanzhar Zhannisov	\N	\N	Male	Kazakhstan	\N
8496	Oleh Handei	\N	\N	Male	Ukraine	\N
8497	Dajing Wu	\N	\N	Male	China	\N
8504	Alex Varnyu	\N	\N	Male	Hungary	\N
8509	Jonathan Moody	\N	\N	Male	United Kingdom	\N
8522	Brandon Kim	\N	\N	Male	United States	\N
8536	Liam O'Brien	\N	\N	Male	Australia	\N
8550	Hyun Woo Chang	\N	\N	Male	Republic of Korea	\N
8554	Metehan Atan	\N	\N	Male	Turkey	\N
8565	Felix Spiegl	\N	\N	Male	GER	\N
8566	Muhammed Emir Han	\N	\N	Male	Turkey	\N
8573	Dmitry Migunov	\N	\N	Male	France	\N
8575	Minseo Kim	\N	\N	Male	Republic of Korea	\N
8601	Nicolas Perreault	\N	\N	Male	Canada	\N
8603	Thibault Metraux	\N	\N	Male	SUI	\N
8612	Hyo Been Lee	\N	\N	Male	Republic of Korea	\N
8619	Neithan Thomas	\N	\N	Male	Poland	\N
8624	Tobias Pietsch	\N	\N	Male	GER	\N
8640	Billy Simms	\N	\N	Male	United Kingdom	\N
8642	Attila Szasz	\N	\N	Male	Hungary	\N
8649	Gert-Jan Goeminne	\N	\N	Male	Belgium	\N
8651	Tom Rietzke	\N	\N	Male	GER	\N
8667	Aleksey Simakin	\N	\N	Male	Russia	\N
8677	Xin Sui	\N	\N	Male	Hong Kong	\N
8697	Dagyeom Kim	\N	\N	Male	Republic of Korea	\N
8703	Melle Van 'T Wout	\N	\N	Male	Netherlands	\N
8716	Tobias Wolf	\N	\N	Male	Austria	\N
8719	Alisher Abulkatimov	\N	\N	Male	Kazakhstan	\N
8725	Artsemi Slabodnik	\N	\N	Male	Belarus	\N
8727	Jordan Pierre-Gilles	\N	\N	Male	Canada	\N
8732	Rafal Anikiej	\N	\N	Male	Poland	\N
8743	Yifan Liu	\N	\N	Male	China	\N
8744	Augustin Gere	\N	\N	Male	Luxembourg	\N
8748	Daniil Eibog	\N	\N	Male	Russia	\N
8756	Adam Jnr Hill	\N	\N	Male	United Kingdom	\N
8759	Ward Petre	\N	\N	Male	Belgium	\N
8761	Geonnyeong Park	\N	\N	Male	Republic of Korea	\N
8763	Lucas Wareham	\N	\N	Male	Australia	\N
8768	Sean Mcanuff Mcanuff	\N	\N	Male	Ireland	\N
8786	Etienne Bastier	\N	\N	Male	France	\N
8793	O Liam Brien	\N	\N	Male	Ireland	\N
8816	Kongchao Li	\N	\N	Male	China	\N
8826	Rino Vanhooren	\N	\N	Male	Belgium	\N
8846	Aydar Bekzhanov	\N	\N	Male	Kazakhstan	\N
8853	Vladyslav Nemiro	\N	\N	Male	Ukraine	\N
8855	Edin Brankovic	\N	\N	Male	Bosnia and Herzegovina	\N
8862	Se Yeong Park	\N	\N	Male	Republic of Korea	\N
8874	Marco Giordano	\N	\N	Male	Italy	\N
8913	Jeongmin Lee	\N	\N	Male	Republic of Korea	\N
8983	Jasper Brunsmann	\N	\N	Male	Netherlands	\N
8984	Daan Kos	\N	\N	Male	Netherlands	\N
8988	Pietro Marinelli	\N	\N	Male	Italy	\N
9003	Takumi Wada	\N	\N	Male	Japan	\N
9004	Aaron Heo	\N	\N	Male	United States	\N
9005	Alessandro Loreggia	\N	\N	Male	Italy	\N
9006	Do Kyoum Kim	\N	\N	Male	Republic of Korea	\N
9028	Peter Murphy	\N	\N	Male	Luxembourg	\N
9040	Jun-Peng Su	\N	\N	Male	TPE	\N
9046	Konstantin Ivliev	\N	\N	Male	Russia	\N
9061	Adriaan Dewagtere	\N	\N	Male	Belgium	\N
9064	Martin Kolenc	\N	\N	Male	CRO	\N
9065	Davide Oss Chemper	\N	\N	Male	Italy	\N
9072	Hugo Bosma	\N	\N	Male	Netherlands	\N
9079	Dominic Andermann	\N	\N	Male	Austria	\N
9086	Van Warre Damme	\N	\N	Male	Belgium	\N
9088	Roberts Zvejnieks	\N	\N	Male	LAT	\N
9089	Artem Derkach	\N	\N	Male	Russia	\N
9091	Karol Niescier	\N	\N	Male	Poland	\N
9093	Daniil Krasnokutskii	\N	\N	Male	Russia	\N
9102	Fu Xu	\N	\N	Male	China	\N
9104	Marco Fritz Schumann	\N	\N	Male	Canada	\N
9105	Won Jun Moon	\N	\N	Male	Republic of Korea	\N
9109	Sean Qi Jun Yeo	\N	\N	Male	MAS	\N
9119	Un Song Choe	\N	\N	Male	Korea, Democratic People's Republic of	\N
9134	German Andres Oviedo Tirado	\N	\N	Male	Colombia	\N
9171	Alaksandr Zhermanau	\N	\N	Male	Belarus	\N
9172	Yoshiaki Oguro	\N	\N	Male	Japan	\N
9188	Heorhi Arlou	\N	\N	Male	Belarus	\N
9199	Jovan Djordjevic	\N	\N	Male	Serbia	\N
9203	Noh Won Park	\N	\N	Male	Republic of Korea	\N
9216	Bartosz Konopko	\N	\N	Male	Poland	\N
9237	Adam Szigeti	\N	\N	Male	Hungary	\N
9239	Dequan Chen	\N	\N	Male	China	\N
9248	Sergei Milovanov	\N	\N	Male	Russia	\N
9283	Robin Bendig	\N	\N	Male	GER	\N
9284	Nikita Nemiro	\N	\N	Male	Ukraine	\N
9292	Ivan Donchev	\N	\N	Male	BUL	\N
9296	Salvijus Ramanauskas	\N	\N	Male	Lithuania	\N
9315	Zdenek Sejpal	\N	\N	Male	Czechia	\N
9344	Andras Sziklasi	\N	\N	Male	Hungary	\N
9360	Yanghun Ben Jung	\N	\N	Male	GER	\N
9375	Weizhi Zhang	\N	\N	Male	China	\N
9378	Tunay Simsek	\N	\N	Male	Turkey	\N
9412	Clement Florac	\N	\N	Male	France	\N
9418	Adam Filipowicz	\N	\N	Male	Poland	\N
9432	Ivan Lahimakhay	\N	\N	Male	Belarus	\N
9434	Tarik Omeragic	\N	\N	Male	Bosnia and Herzegovina	\N
9452	Klaudio Nasri	\N	\N	Male	BUL	\N
9465	Sidney K Chu	\N	\N	Male	Hong Kong	\N
9490	Triphop Thongngam	\N	\N	Male	Thailand	\N
9492	Enzo Proost	\N	\N	Male	Belgium	\N
9500	Lubomir Kalchev	\N	\N	Male	BUL	\N
9503	Branden Marshall	\N	\N	Male	United Kingdom	\N
9511	Jacob Jansson	\N	\N	Male	Sweden	\N
9516	Yevgeniy Rebik	\N	\N	Male	Kazakhstan	\N
9519	Jason Clague	\N	\N	Male	New Zealand	\N
9520	Robbe Volckaert	\N	\N	Male	Belgium	\N
9524	Maxime Laoun	\N	\N	Male	Canada	\N
9543	Christopher Jarden	\N	\N	Male	New Zealand	\N
9558	Ethan Treacy	\N	\N	Male	United Kingdom	\N
9569	Joshua Kah	\N	\N	Male	New Zealand	\N
9578	Ethan De Rose	\N	\N	Male	New Zealand	\N
9579	Bartosz Bielecki	\N	\N	Male	Poland	\N
9609	Balazs Bontovics	\N	\N	Male	Hungary	\N
9611	Matthias Wolfgang	\N	\N	Male	Austria	\N
9622	Lucas Henry Koo	\N	\N	Male	Brazil	\N
9631	Volodymyr Handei	\N	\N	Male	Ukraine	\N
9634	Ivan Martinic	\N	\N	Male	CRO	\N
9647	Szymon Wilczyk	\N	\N	Male	Poland	\N
9654	Luca Loffler	\N	\N	Male	GER	\N
9655	Nurlibek Beiseev	\N	\N	Male	Kazakhstan	\N
9658	Mikita Mihdaliou	\N	\N	Male	Belarus	\N
9660	Jack Burrows	\N	\N	Male	United Kingdom	\N
9685	Thomas Simpkin	\N	\N	Male	Canada	\N
9713	Cedrik Blais	\N	\N	Male	Canada	\N
9721	Samuel Green	\N	\N	Male	Canada	\N
9727	Sebastian Hydzik	\N	\N	Male	Poland	\N
9744	Theo Collins	\N	\N	Male	United Kingdom	\N
9748	Tianyi Zhang	\N	\N	Male	China	\N
9781	Jialong Tian	\N	\N	Male	China	\N
9788	Tsvetan Tsankov	\N	\N	Male	BUL	\N
9796	Artem Khmelivskyi	\N	\N	Male	Ukraine	\N
9858	Attila Talabos	\N	\N	Male	Hungary	\N
9859	Sebastian Cano	\N	\N	Male	Colombia	\N
9861	Krystian Giszka	\N	\N	Male	Poland	\N
9887	Aydin Djemal	\N	\N	Male	United Kingdom	\N
9895	Denali Blunden	\N	\N	Male	Australia	\N
9898	Idse Van Benthum	\N	\N	Male	Netherlands	\N
9901	Yauheni Ryzhou	\N	\N	Male	Belarus	\N
9918	Dogyu Lee	\N	\N	Male	Republic of Korea	\N
9920	Natthapat Kancharin	\N	\N	Male	Thailand	\N
9923	Bence Nogradi	\N	\N	Male	Hungary	\N
9946	Mikita Migdaleov	\N	\N	Male	Belarus	\N
9952	Vladislav Mikhailov	\N	\N	Male	Belarus	\N
9967	Daniil Bergin	\N	\N	Male	Ukraine	\N
9989	Matej Pederson	\N	\N	Male	Canada	\N
10006	Gleb Ivchenko	\N	\N	Male	Kazakhstan	\N
10009	Artsem Aliatdzinau	\N	\N	Male	Belarus	\N
10023	Katsunori Koike	\N	\N	Male	Japan	\N
10046	Aliaksandr Arlou	\N	\N	Male	Belarus	\N
10058	Westley Yates	\N	\N	Male	United Kingdom	\N
10108	Kexin Sha	\N	\N	Male	China	\N
10115	Julian Macaraeg	\N	\N	Male	PHI	\N
10228	Peter Jaszapati	\N	\N	Male	Hungary	\N
10230	Jonas Hammermueller	\N	\N	Male	GER	\N
10253	Gibson Laurent Himbeault	\N	\N	Male	Canada	\N
10261	Nicolas Laborde	\N	\N	Male	Colombia	\N
10266	Cyprien Vacheron	\N	\N	Male	France	\N
10284	Hijiri Iwashita	\N	\N	Male	Japan	\N
10286	Einar Agdestein	\N	\N	Male	Norway	\N
10287	Tsz Fung Kwok	\N	\N	Male	Hong Kong	\N
10288	Shun Saito	\N	\N	Male	Japan	\N
10308	Thomas Nadalini	\N	\N	Male	Italy	\N
10312	Mukerrem Deniz	\N	\N	Male	Turkey	\N
10335	Chia-Wei Tsai	\N	\N	Male	TPE	\N
10342	Chonlachart Taprom	\N	\N	Male	Thailand	\N
10351	Victor Martinez-Blanch	\N	\N	Male	Spain	\N
10357	Menderes Eren	\N	\N	Male	Turkey	\N
10390	Ivan Radevic	\N	\N	Male	GER	\N
10392	Han Yuan Oh	\N	\N	Male	MAS	\N
10401	Murat Tahtaci	\N	\N	Male	Turkey	\N
10482	Joon Chun Kim	\N	\N	Male	Republic of Korea	\N
10507	Caleb Park	\N	\N	Male	United States	\N
10515	Hyun Jun Ahn	\N	\N	Male	Republic of Korea	\N
10517	Jenning De Boo	\N	\N	Male	Netherlands	\N
10534	Stefan-Alexander Kumurdjiev	\N	\N	Male	BUL	\N
10553	Matej Filip	\N	\N	Male	Slovakia	\N
10574	Seung-Min Kwon	\N	\N	Male	United States	\N
10629	Davut Tahtaci	\N	\N	Male	Turkey	\N
10632	Maxim Maximov	\N	\N	Male	BUL	\N
10666	Emil Imre	\N	\N	Male	Romania	\N
10678	Marc Gonzales	\N	\N	Male	PHI	\N
10689	Jakov Domitrek	\N	\N	Male	CRO	\N
10724	Un Hyok Kim	\N	\N	Male	Korea, Democratic People's Republic of	\N
10842	Assen Gyurov	\N	\N	Male	BUL	\N
10844	Alex Bryant	\N	\N	Male	Australia	\N
10886	Viacheslav Karpov	\N	\N	Male	Russia	\N
10964	Adam Timar	\N	\N	Male	Romania	\N
10989	Haidong Jia	\N	\N	Male	China	\N
11002	Denys Iofin	\N	\N	Male	Ukraine	\N
11027	Linards Reinis Laizans	\N	\N	Male	LAT	\N
11059	Benjamin Thornock	\N	\N	Male	United States	\N
11079	Sebastien Gagnon	\N	\N	Male	Canada	\N
11100	Xian-You Lin	\N	\N	Male	TPE	\N
11104	Byeong Jun Kim	\N	\N	Male	Republic of Korea	\N
11105	Alphonse Ouimette	\N	\N	Male	Canada	\N
11125	Lucas Jun Jie Ng	\N	\N	Male	Singapore	\N
11129	Oliver Ringer	\N	\N	Male	Slovakia	\N
11130	Ho Tung Chan	\N	\N	Male	Hong Kong	\N
11131	Hazar Karagol	\N	\N	Male	Turkey	\N
11135	Yuchen Zhong	\N	\N	Male	China	\N
11139	Abzal Azhgaliyev	\N	\N	Male	Kazakhstan	\N
11193	Yu-Chuan Chang	\N	\N	Male	TPE	\N
11215	Peter Joseph Groseclose	\N	\N	Male	PHI	\N
11234	Guillian Van Waasdijk	\N	\N	Male	Belgium	\N
11237	Daniel Tiborcz	\N	\N	Male	Hungary	\N
11302	Luca Lim	\N	\N	Male	United States	\N
11305	Kyle Ross-Waddell	\N	\N	Male	United Kingdom	\N
11331	Jeremia Wihardja	\N	\N	Male	INA	\N
11344	Shuta Matsuzu	\N	\N	Male	Japan	\N
11427	Tymofii Khokhelko	\N	\N	Male	Ukraine	\N
11461	Luka Jasic	\N	\N	Male	Serbia	\N
11476	Daniel Zastrugov	\N	\N	Male	BUL	\N
11485	Odin By Farstad	\N	\N	Male	Norway	\N
11552	Augusto Duzioni	\N	\N	Male	Italy	\N
11554	Chirawat Phonkat	\N	\N	Male	Thailand	\N
11557	Michal Klosinski	\N	\N	Male	Poland	\N
11580	Brandon Pok	\N	\N	Male	Singapore	\N
11593	Bor Luka Urlep	\N	\N	Male	SLO	\N
11603	Aliaksandr Volkau	\N	\N	Male	Belarus	\N
11612	Mathieu Bernier	\N	\N	Male	Canada	\N
11696	Endijs Vigants	\N	\N	Male	LAT	\N
11700	Pyol Song Kim	\N	\N	Male	Korea, Democratic People's Republic of	\N
11738	Lorenzo Morrone	\N	\N	Male	Italy	\N
11764	Chun-Chieh Lin	\N	\N	Male	TPE	\N
11783	Jedrzej Borowiecki	\N	\N	Male	Poland	\N
11807	Rafael Heredia-Barba	\N	\N	Male	Spain	\N
11825	Hazim Shahrum	\N	\N	Male	MAS	\N
11834	Piius Yie Kiat Sng	\N	\N	Male	Singapore	\N
11842	Moritz Kreuseler	\N	\N	Male	GER	\N
11850	Chiyuan Zhong	\N	\N	Male	United States	\N
11927	Sigurd Holbo Dyrset	\N	\N	Male	Norway	\N
11930	Stribor Suman	\N	\N	Male	CRO	\N
11939	Lukasz Kuczynski	\N	\N	Male	Poland	\N
11967	Pietro Castellazzi	\N	\N	Male	Italy	\N
11970	Karlis Pastors	\N	\N	Male	LAT	\N
11981	David Danneel	\N	\N	Male	Belgium	\N
12050	Skyler Kah	\N	\N	Male	Australia	\N
12059	Robin Tenzer	\N	\N	Male	GER	\N
12125	Philippe Daudelin	\N	\N	Male	Canada	\N
12150	Maris Janis Sternmanis	\N	\N	Male	LAT	\N
12167	Ryan Justice	\N	\N	Male	Australia	\N
12197	Tamas Antal	\N	\N	Male	Romania	\N
12221	Wei-Cheng Liao	\N	\N	Male	TPE	\N
12225	Muhammet Karadeniz	\N	\N	Male	Turkey	\N
12229	Mykyta Khochyn	\N	\N	Male	Ukraine	\N
12277	Lukas Macdonald	\N	\N	Male	New Zealand	\N
12306	Ashwin Calen Dsilva	\N	\N	Male	India	\N
12339	Ilya Dzmitryinka	\N	\N	Male	Belarus	\N
12356	Marc-Olivier Lemay	\N	\N	Male	Canada	\N
12379	Philemon Rainer	\N	\N	Male	Austria	\N
12392	Ong Ryo	\N	\N	Male	Singapore	\N
12412	Jing Feng Xu	\N	\N	Male	Singapore	\N
12413	Tibor Komericki	\N	\N	Male	SLO	\N
12420	Heinrich Liu	\N	\N	Male	Austria	\N
12444	Vincent Girard	\N	\N	Male	Canada	\N
12448	Ivan Mojsilovic	\N	\N	Male	Serbia	\N
12466	Brandon Jahn	\N	\N	Male	GER	\N
12467	Omer Faruk Saylar	\N	\N	Male	Turkey	\N
12477	Vasyl Pilnyk	\N	\N	Male	Ukraine	\N
12523	Yaroslav Morozov	\N	\N	Male	Ukraine	\N
12540	Tomass Bakevics	\N	\N	Male	LAT	\N
12585	Danielius Cech	\N	\N	Male	Lithuania	\N
12586	Stephane Barbera Peraleda	\N	\N	Male	Spain	\N
12619	Fredrik Pedersen	\N	\N	Male	Norway	\N
12627	Adam Muchlado	\N	\N	Male	Poland	\N
12633	Simon Francis	\N	\N	Male	Australia	\N
12640	Marian Buksar	\N	\N	Male	Slovakia	\N
12652	Tsz Ho Kwok	\N	\N	Male	Hong Kong	\N
12667	Kei Wing Kelvin Tsang	\N	\N	Male	Hong Kong	\N
12688	Jingfeng Xu	\N	\N	Male	Singapore	\N
12709	Jekabs Saulitis	\N	\N	Male	LAT	\N
12716	Kaloyan Angelov	\N	\N	Male	BUL	\N
12767	Khairil Ridhwan Khalil	\N	\N	Male	MAS	\N
12856	Akash Aradhya	\N	\N	Male	India	\N
12944	Kieran Guan	\N	\N	Male	Australia	\N
12995	Luke Cullen	\N	\N	Male	Australia	\N
13158	Valentino Senica Pintar	\N	\N	Male	SLO	\N
13219	Vladislav Hapon	\N	\N	Male	Belarus	\N
13230	Ivaylo Nedyalkov	\N	\N	Male	BUL	\N
13232	Jakub Karabin	\N	\N	Male	Slovakia	\N
13239	Jan Kovacic	\N	\N	Male	CRO	\N
13253	Jan Posavec	\N	\N	Male	CRO	\N
13263	David Cako	\N	\N	Male	Serbia	\N
13283	Vid Gal	\N	\N	Male	SLO	\N
13299	Kan Soponkij	\N	\N	Male	Thailand	\N
13303	Matej Popl	\N	\N	Male	Czechia	\N
13345	Yi-Siang Lai	\N	\N	Male	TPE	\N
13455	Rui-Zhe Li	\N	\N	Male	TPE	\N
13476	Adrian Rudy	\N	\N	Male	Canada	\N
13477	Mak Krstic	\N	\N	Male	Bosnia and Herzegovina	\N
13513	Stefan-Teodor Frighenciu	\N	\N	Male	Austria	\N
13514	Georgi Tsvetkov	\N	\N	Male	BUL	\N
13523	Lovro Zgoznik	\N	\N	Male	SLO	\N
13531	Bojan Baka	\N	\N	Male	Serbia	\N
13570	Michal Cuja	\N	\N	Male	Slovakia	\N
13579	Niranjan Rajeev	\N	\N	Male	India	\N
13618	Ariff Rasydan Fadzli Mohamad	\N	\N	Male	MAS	\N
13630	Kaviraj Prithvi Ashok Coimbatore	\N	\N	Male	India	\N
13632	Petko Dapchev	\N	\N	Male	BUL	\N
13642	Mohammed Al-Hourani	\N	\N	Male	Qatar	\N
13663	Nihad Basic	\N	\N	Male	Bosnia and Herzegovina	\N
13696	Ermin Rascic	\N	\N	Male	Bosnia and Herzegovina	\N
13714	Zen Sheng Sian Koh	\N	\N	Male	Singapore	\N
13724	Atiip Navarat	\N	\N	Male	Thailand	\N
13794	Vazhayil Muhammed Sinan Peedikayil	\N	\N	Male	India	\N
13812	Bora Baka	\N	\N	Male	Serbia	\N
13830	De Vin Wong	\N	\N	Male	MAS	\N
13848	M.A.I. Bin Fadzli Mohamad	\N	\N	Male	MAS	\N
14198	Leon Bloemhof	\N	\N	Male	Netherlands	\N
14247	Haotian Wang	\N	\N	Male	China	\N
14259	Danylo Fedorenko	\N	\N	Male	Ukraine	\N
14333	Jack Whelbourne	\N	\N	Male	United Kingdom	\N
14344	Sebastian Fidel Lencinas	\N	\N	Male	Argentina	\N
14347	Valeriy Klimenko	\N	\N	Male	Kazakhstan	\N
14436	Leon Kaufmann-Ludwig	\N	\N	Male	GER	\N
14452	Paul Beauchamp	\N	\N	Male	France	\N
26721	Yu-Tzu Lin	\N	\N	Female	TPE	\N
26730	Elizaveta Kuznetsova	\N	\N	Female	Russia	\N
26737	Morgan Izykowski	\N	\N	Female	United States	\N
26751	Anna Beiser	\N	\N	Female	GER	\N
26770	Neli Tsankova	\N	\N	Female	BUL	\N
26793	Catherine Alexander	\N	\N	Female	Belgium	\N
26799	Renata Szocs	\N	\N	Female	Romania	\N
26839	You Young Chea	\N	\N	Female	United States	\N
26876	Emma Van Zuijlen	\N	\N	Female	Netherlands	\N
26887	Mikayla Biggs	\N	\N	Female	New Zealand	\N
26899	Eszter Toth	\N	\N	Female	Hungary	\N
26918	Sandra Trusova	\N	\N	Female	Slovakia	\N
26936	Anna Ruysschaert	\N	\N	Female	Luxembourg	\N
26940	Izumi Nishii	\N	\N	Female	Japan	\N
26971	Ching Yan Lam	\N	\N	Female	Hong Kong	\N
26982	Chloe Tan	\N	\N	Female	Australia	\N
27000	Sarah Warren	\N	\N	Female	United States	\N
27037	Yueshuang Han	\N	\N	Female	Hong Kong	\N
27052	Nienke Schepers	\N	\N	Female	Belgium	\N
27055	Anja Chong	\N	\N	Female	MAS	\N
27072	Ema Zelinska	\N	\N	Female	Slovakia	\N
27103	Malika Ermek	\N	\N	Female	Kazakhstan	\N
27133	Gloria Malfatti	\N	\N	Female	Italy	\N
27146	Agnieszka Tawrel	\N	\N	Female	Poland	\N
27149	Mi Hyang Kim	\N	\N	Female	Korea, Democratic People's Republic of	\N
27151	Hannah Morrison	\N	\N	Female	United Kingdom	\N
27156	Alix-Myra Anderson	\N	\N	Female	Australia	\N
27164	Tereza Kolesarikova	\N	\N	Female	Czechia	\N
27189	Hsiao-Ying Chung_Falsch	\N	\N	Female	TPE	\N
27229	Lenka Zahumenska	\N	\N	Female	Czechia	\N
27232	Dione Shu Yen Tan	\N	\N	Female	MAS	\N
27241	Kristy Shoebridge	\N	\N	Female	Canada	\N
27256	Franchesca Bell	\N	\N	Female	United States	\N
27266	Hsiao-Ying Chung	\N	\N	Female	TPE	\N
27273	Anna Davydenko	\N	\N	Female	Ukraine	\N
27300	Margriet De Schutter	\N	\N	Female	Netherlands	\N
27316	Malwina Zawada	\N	\N	Female	Poland	\N
27328	Uliana Dubrova	\N	\N	Female	Ukraine	\N
27347	Danijela Ivandic	\N	\N	Female	CRO	\N
27348	Isabelle Roberts	\N	\N	Female	United Kingdom	\N
27411	Ayame Nakano	\N	\N	Female	Japan	\N
27420	Emma Coxon-Smith	\N	\N	Female	Australia	\N
27429	Ottilia Sillo	\N	\N	Female	Romania	\N
27437	Shreya Arun	\N	\N	Female	United States	\N
27447	Ilsiyar Sharafutdinova	\N	\N	Female	Russia	\N
27456	Rumiana Dimitrova	\N	\N	Female	BUL	\N
27552	Maja Ivandic	\N	\N	Female	CRO	\N
27564	Kyoko Tatsumi	\N	\N	Female	Japan	\N
27565	Alina Usatova	\N	\N	Female	LAT	\N
27576	Ann Veronique Michaud	\N	\N	Female	Canada	\N
27613	Ava Ryan	\N	\N	Female	Ireland	\N
27617	Petra Jasic	\N	\N	Female	Serbia	\N
27639	Jamie Jurak	\N	\N	Female	United States	\N
27646	Lilia Dzhustrova	\N	\N	Female	BUL	\N
27650	Kendal Pumphrey	\N	\N	Female	United States	\N
27651	Agnieszka Bawerna	\N	\N	Female	Poland	\N
27739	Liudmila Tsarykava	\N	\N	Female	Belarus	\N
27744	Tetyana Zarvanska	\N	\N	Female	Ukraine	\N
27808	Olivia Weedon	\N	\N	Female	United Kingdom	\N
27823	Iulia Kromido	\N	\N	Female	Ukraine	\N
27825	Gabija Astrauskaite	\N	\N	Female	Lithuania	\N
27846	Vira-Nika Khomenko	\N	\N	Female	Ukraine	\N
27850	Nathalie Prescher	\N	\N	Female	GER	\N
27858	Julia Albert	\N	\N	Female	Romania	\N
27873	Rachel Stewart	\N	\N	Female	United States	\N
27882	Marina Lukanova	\N	\N	Female	BUL	\N
27906	Jing Ying Alyssa Pok	\N	\N	Female	Singapore	\N
27922	Sinead Fogarty	\N	\N	Female	Australia	\N
27927	Katsiarina Skliarenka	\N	\N	Female	Belarus	\N
27932	Chia-Tung Lu	\N	\N	Female	TPE	\N
27944	Elisabeth Witt	\N	\N	Female	GER	\N
27950	Aye Soponkij	\N	\N	Female	Thailand	\N
27951	Kotryna Sokolovskyte	\N	\N	Female	Lithuania	\N
27956	Jerebelle Yutangco	\N	\N	Female	United States	\N
27959	Maria Amelina	\N	\N	Female	Russia	\N
27977	Maryia Tsiaselkina	\N	\N	Female	Belarus	\N
27985	Eleanora Samoilava	\N	\N	Female	Belarus	\N
27991	Margaux Maurice	\N	\N	Female	France	\N
27994	Natallia Tsaulika	\N	\N	Female	Belarus	\N
27999	Sema Cirti	\N	\N	Female	Turkey	\N
28005	Patricija Snikere	\N	\N	Female	LAT	\N
28006	Agnieszka Olechnicka	\N	\N	Female	Poland	\N
28007	Timea Toth	\N	\N	Female	Hungary	\N
28022	Siyu Wang	\N	\N	Female	Australia	\N
28041	Lois Kloor	\N	\N	Female	Netherlands	\N
28082	Melanie Brantner	\N	\N	Female	Austria	\N
28085	Michaela Izarova	\N	\N	Female	Slovakia	\N
28087	Ilze Urtane	\N	\N	Female	LAT	\N
28094	Rosalie Huisman	\N	\N	Female	Netherlands	\N
28099	Alena Kartseva	\N	\N	Female	Russia	\N
28107	Ainoa Peris Carreo	\N	\N	Female	Spain	\N
28111	Aybuke Han	\N	\N	Female	Turkey	\N
28126	Damla Akan	\N	\N	Female	Turkey	\N
28132	Barbora Gakova	\N	\N	Female	Czechia	\N
28137	Vorravalan Leechinnaphat	\N	\N	Female	Thailand	\N
28140	Katie Fabian	\N	\N	Female	Australia	\N
28152	Anja Obradovic	\N	\N	Female	Serbia	\N
28161	Michaela Poplova	\N	\N	Female	Czechia	\N
28163	Vera Katsov	\N	\N	Female	Israel	\N
28174	Guro Samdahl Melhuus	\N	\N	Female	Norway	\N
28175	Adela Bicanova	\N	\N	Female	Czechia	\N
28176	Alyona Kikolenko	\N	\N	Female	Kazakhstan	\N
28179	Mariya Zinchenko	\N	\N	Female	Kazakhstan	\N
28181	Ainara Equisoain	\N	\N	Female	Spain	\N
28186	Wiktoria Tkaczuk	\N	\N	Female	Poland	\N
28187	Petra Acker	\N	\N	Female	United States	\N
28195	Anna Samarina	\N	\N	Female	Kazakhstan	\N
28198	Kristina Metta	\N	\N	Female	Belarus	\N
28203	Elvira Bayazitova	\N	\N	Female	Russia	\N
28211	Francesca Jackson	\N	\N	Female	New Zealand	\N
28217	Maria Schulze	\N	\N	Female	GER	\N
28223	Maria Garkova	\N	\N	Female	BUL	\N
28240	Stephanie Fabian	\N	\N	Female	Australia	\N
28241	Alyssa Pok	\N	\N	Female	Singapore	\N
28247	Anastassiya Kuznetsova	\N	\N	Female	Kazakhstan	\N
28261	Samra Selimbegovic	\N	\N	Female	Bosnia and Herzegovina	\N
28275	Petia Georgieva	\N	\N	Female	BUL	\N
28283	Courtney Coburn	\N	\N	Female	New Zealand	\N
28285	Dina Span	\N	\N	Female	SLO	\N
28287	Sofiia Khochyna	\N	\N	Female	Ukraine	\N
28295	Sara Blekic	\N	\N	Female	CRO	\N
28299	Kristina Kobler	\N	\N	Female	Austria	\N
28303	Amelia Chua	\N	\N	Female	Singapore	\N
28312	Patricija Smogar	\N	\N	Female	CRO	\N
28316	Kynie Chan	\N	\N	Female	MAS	\N
28318	Alexia Turunen	\N	\N	Female	SUI	\N
28321	Lucia Ana Ilijic	\N	\N	Female	CRO	\N
28324	Ashley Sook Hui Chin	\N	\N	Female	MAS	\N
28326	Ieva Haino	\N	\N	Female	LAT	\N
28328	Theresa Tremmel	\N	\N	Female	Austria	\N
28332	Tjasa Kroflic	\N	\N	Female	SLO	\N
28341	Petra Sulovska	\N	\N	Female	Slovakia	\N
28343	Alexandra Rout	\N	\N	Female	New Zealand	\N
28346	Anna Makovetska	\N	\N	Female	Ukraine	\N
28354	Karyna Hryschanka	\N	\N	Female	Belarus	\N
28361	Nika Koprivnjak	\N	\N	Female	CRO	\N
28371	Josipa Tadic	\N	\N	Female	CRO	\N
28372	Pauliina Klevstuen	\N	\N	Female	Norway	\N
28375	Mu-Yin Tsou	\N	\N	Female	TPE	\N
28387	Sonya Stoyanova	\N	\N	Female	BUL	\N
28395	Sherry Stuthridge	\N	\N	Female	RSA	\N
28400	Lily Taitimu	\N	\N	Female	New Zealand	\N
28401	Katarina Jankovic	\N	\N	Female	Serbia	\N
28405	Ekaterina Krasnova	\N	\N	Female	Belarus	\N
28409	Teresa Moreno Balaguer	\N	\N	Female	Spain	\N
28413	Cecilia Backstrom	\N	\N	Female	Luxembourg	\N
28424	Valerie Postrigan	\N	\N	Female	Israel	\N
28428	Ho Yan Tso	\N	\N	Female	Hong Kong	\N
28431	Sherry Lea Stuthridge	\N	\N	Female	RSA	\N
28433	Kar Weng Soo	\N	\N	Female	Singapore	\N
28448	Kalina Giurova	\N	\N	Female	BUL	\N
28455	Duygu Kan	\N	\N	Female	Turkey	\N
28458	Nor Marissa Alia Binti Ahmad Lokman	\N	\N	Female	MAS	\N
28462	Ina Les	\N	\N	Female	SLO	\N
28463	Elif Ozden	\N	\N	Female	Turkey	\N
28471	Kuan-Ming Wang	\N	\N	Female	TPE	\N
28475	Chia-Yun Lee	\N	\N	Female	TPE	\N
28483	Patricija Sluga	\N	\N	Female	SLO	\N
28484	Burcu Kan	\N	\N	Female	Turkey	\N
28492	Mei-Chi Huang	\N	\N	Female	TPE	\N
28493	Leyla Yilmaz	\N	\N	Female	Turkey	\N
28495	Aarathy Kasturiraj	\N	\N	Female	India	\N
28510	Betul Yerdelen	\N	\N	Female	Turkey	\N
28536	Ursa Erjavec	\N	\N	Female	SLO	\N
28550	Garazi Ganuza	\N	\N	Female	Spain	\N
28557	Kristina Papp	\N	\N	Female	Serbia	\N
28566	Fatima Omerhodzic	\N	\N	Female	Bosnia and Herzegovina	\N
28570	Deanna See	\N	\N	Female	Singapore	\N
28609	Zeynep Erkilic	\N	\N	Female	Turkey	\N
28611	Benazir Meera	\N	\N	Female	India	\N
28622	Xuan Ming Ng	\N	\N	Female	Singapore	\N
28670	Gulnur Ganiyeva	\N	\N	Female	Kazakhstan	\N
28720	Seeliya Simmith	\N	\N	Female	India	\N
28732	Nilasha H Anand	\N	\N	Female	India	\N
28737	Diana Laura Vegi	\N	\N	Female	Hungary	\N
28764	Angeline Hui Theng Chan	\N	\N	Female	MAS	\N
28771	Natalija Smogar	\N	\N	Female	CRO	\N
28923	Anna Vostrikova	\N	\N	Female	Russia	\N
28981	Jia Yi Chew	\N	\N	Female	MAS	\N
29076	Varsha Kukreja	\N	\N	Female	India	\N
29083	Sahithya Sethuraman	\N	\N	Female	India	\N
29162	Rosalie Tremblay	\N	\N	Female	Canada	\N
29181	Qichao Zhang	\N	\N	Female	China	\N
29776	Svea Rothe	\N	\N	Female	GER	\N
29791	Yi-Ping Chiu	\N	\N	Female	TPE	\N
29834	Adam Law	2004-09-09	Vaughan	Male	Canada	Ontario
30256	Huiling Jia	\N	\N	Female	China	\N
30334	Guldana Zhalmukhan	\N	\N	Female	Kazakhstan	\N
30880	Teppei Kikuchi	\N	\N	Male	Japan	\N
31490	Tawan Thomas	\N	\N	Male	France	\N
32795	Lukas Kobuch	\N	\N	Male	GER	\N
32871	Alexandre Migner	\N	\N	Male	Canada	\N
32888	Valters Kanbergs	\N	\N	Male	LAT	\N
32921	Samuel Bureau	\N	\N	Male	Canada	\N
32979	Clemens Pfropper	\N	\N	Male	GER	\N
32985	Lorenzo Previtali	\N	\N	Male	Italy	\N
32987	Noah Buffet	\N	\N	Male	France	\N
33013	Alec Sklutovsky	\N	\N	Male	United States	\N
33015	Bas Van Der Valk	\N	\N	Male	Netherlands	\N
34073	Satoshi Sakashita	\N	\N	Male	Japan	\N
34378	Kei Saito	\N	\N	Male	Japan	\N
35357	Steavanus Wihardja	\N	\N	Male	INA	\N
42954	Felix Pigeon	\N	\N	Male	Canada	\N
42958	Jian Song	\N	\N	Male	China	\N
43111	Wan Akif Wan Faizal	\N	\N	Male	MAS	\N
43115	Ignacy Klujszo	\N	\N	Male	Poland	\N
43152	Dinmukhammed Zholdas	\N	\N	Male	Kazakhstan	\N
43349	Andy Kim	\N	\N	Male	United States	\N
43830	Florian Becker	\N	\N	Male	GER	\N
43835	Niels Kingma	\N	\N	Male	Netherlands	\N
44217	Shuai Yang	\N	\N	Male	China	\N
44224	Kwang Bom Jong	\N	\N	Male	Korea, Democratic People's Republic of	\N
45298	Hironobu Muratake	\N	\N	Male	Japan	\N
45310	Kyoung Won Lim	\N	\N	Male	Republic of Korea	\N
45411	Richard Shoebridge	\N	\N	Male	United Kingdom	\N
45535	Michal Domanski	\N	\N	Male	Poland	\N
45963	Mackenzie Blackburn	\N	\N	Male	TPE	\N
46405	Hongchao Zhang	\N	\N	Male	China	\N
46412	Patrick Duffy	\N	\N	Male	Canada	\N
46471	Teerasak Boonpok	\N	\N	Male	Thailand	\N
46480	Tae Song Kim	\N	\N	Male	Korea, Democratic People's Republic of	\N
46484	Chol Gwang Kim	\N	\N	Male	Korea, Democratic People's Republic of	\N
48522	Takayuki Muratake	\N	\N	Male	Japan	\N
48526	Liang Jin	\N	\N	Male	China	\N
51946	Seongwoo Lee	\N	\N	Male	Republic of Korea	\N
51947	Antoine Gagnon-Lamarche	\N	\N	Male	Canada	\N
51952	Brendan Ronald Corey	\N	\N	Male	Canada	\N
51953	Liu Shaoang	\N	\N	Male	Hungary	\N
51955	Zekai Bing	\N	\N	Male	China	\N
51956	Francis Dumouchel	\N	\N	Male	Canada	\N
51957	Beomsuk Seo	\N	\N	Male	Republic of Korea	\N
51960	Xiangwen Yu	\N	\N	Male	China	\N
51962	Alexis Marceau	\N	\N	Male	Canada	\N
51964	Sihyeong Lee	\N	\N	Male	Republic of Korea	\N
51965	Sandor Liu Shaolin	\N	\N	Male	Hungary	\N
51968	Jun Seo Lee	\N	\N	Male	Republic of Korea	\N
51972	Mckinley-Young Ethan Mckinley-Young	\N	\N	Male	Canada	\N
53607	Bohdan Moshenskyi	\N	\N	Male	Ukraine	\N
54330	Anton Khvan	\N	\N	Male	Kazakhstan	\N
54358	Leander Schepers	\N	\N	Male	Belgium	\N
54367	Vicko Poon	\N	\N	Male	Australia	\N
55987	Izabella Zakatsiolo	2006-01-09	Oakville	Female	Canada	Ontario
59515	Alexander Fathoullin	\N	\N	Male	Canada	\N
59517	Freek Van Der Wart	\N	\N	Male	Netherlands	\N
59521	Jon Eley	\N	\N	Male	United Kingdom	\N
59525	Paul Stanley	\N	\N	Male	United Kingdom	\N
59558	Torsten Kroeger	\N	\N	Male	GER	\N
59566	Jose Cavalli	\N	\N	Male	SUI	\N
59569	Cole Krueger	\N	\N	Male	United States	\N
59614	Yoann Martinez	\N	\N	Male	France	\N
59633	Guang Chen	\N	\N	Male	China	\N
59635	Viacheslav Kurginian	\N	\N	Male	Russia	\N
59636	Lachlan Hay	\N	\N	Male	Australia	\N
59672	Hanwool Kim	\N	\N	Male	Republic of Korea	\N
60290	Burak Akar	\N	\N	Male	Turkey	\N
60295	Stanislav Omelchenko	\N	\N	Male	Ukraine	\N
60300	Serhiy Lifyrenko	\N	\N	Male	Ukraine	\N
60488	Murray Cochrane	\N	\N	Male	United Kingdom	\N
60501	Wei Ma	\N	\N	Male	China	\N
60522	Chris Creveling	\N	\N	Male	United States	\N
60566	Bejamin Whiteside	\N	\N	Male	New Zealand	\N
61135	Koen Hakkenberg	\N	\N	Male	Netherlands	\N
61595	Roger Imbernon Vallverdu	\N	\N	Male	Spain	\N
61895	Bogdan Simonenko	\N	\N	Male	Ukraine	\N
61896	Yin-Cheng Chang	\N	\N	Male	TPE	\N
61917	Martinius Elvebakken	\N	\N	Male	Norway	\N
61924	Patrik Velicko	\N	\N	Male	Slovakia	\N
61937	Sohan Sudhir Tarkar	\N	\N	Male	India	\N
61958	Benjamin Oh	\N	\N	Male	United States	\N
61963	Matteo Pedranz	\N	\N	Male	Italy	\N
61964	Krystian Korecki	\N	\N	Male	Poland	\N
61979	Alex Nieto-Guarasa	\N	\N	Male	Spain	\N
62521	Timur Zakharov	\N	\N	Male	Russia	\N
62559	Michael Pickup	\N	\N	Male	Australia	\N
62560	Dmytro Poltavets	\N	\N	Male	Ukraine	\N
62567	Daniel Zetzsche	\N	\N	Male	GER	\N
62569	Shuai Shao	\N	\N	Male	China	\N
62572	Thibaut Meline	\N	\N	Male	France	\N
62604	Oleksiy Koshelenko	\N	\N	Male	Ukraine	\N
62669	Haochen Song	\N	\N	Male	China	\N
63266	Max Backstrom	\N	\N	Male	Luxembourg	\N
63826	Seonghun Lee	\N	\N	Male	Republic of Korea	\N
64436	Justin Liu	\N	\N	Male	United States	\N
64441	Teun Boer	\N	\N	Male	Netherlands	\N
64537	Kun Li	\N	\N	Male	China	\N
65022	Ryan Shane	\N	\N	Male	United States	\N
66637	Miika Klevstuen	\N	\N	Male	Norway	\N
66659	Raphael Moret	\N	\N	Male	SUI	\N
66947	Benjamin Czank-Varga	\N	\N	Male	Hungary	\N
66949	Jonas Hammermuller	\N	\N	Male	GER	\N
66950	Damir Kurmanov	\N	\N	Male	Kazakhstan	\N
66951	Emu Natsume	\N	\N	Male	Japan	\N
66959	Warre Noiron	\N	\N	Male	Belgium	\N
66961	Dongmin Lee	\N	\N	Male	Republic of Korea	\N
66964	Aibek Temirkhan	\N	\N	Male	Kazakhstan	\N
66967	Ted Dalrymple	\N	\N	Male	Netherlands	\N
66974	Stan Rijksen	\N	\N	Male	Netherlands	\N
66980	Muhammed Bozdag	\N	\N	Male	Turkey	\N
66981	Dong Min Shin	\N	\N	Male	Republic of Korea	\N
66982	Dominik Major	\N	\N	Male	Hungary	\N
66987	Victor Roy-Lafrance	\N	\N	Male	Canada	\N
66989	Alessandro Picchiarelli	\N	\N	Male	Italy	\N
66990	Fre Van Damme	\N	\N	Male	Belgium	\N
66993	Salih Can Kezer	\N	\N	Male	Turkey	\N
66999	Rafael Schlossareck	\N	\N	Male	GER	\N
67001	Ernestas Cech	\N	\N	Male	Lithuania	\N
67003	Shiqiang Wu	\N	\N	Male	China	\N
67005	Ihan Yoo	\N	\N	Male	Australia	\N
67009	Alexis Belanger	\N	\N	Male	Canada	\N
67016	Aleyandro Rivero Maerschalck	\N	\N	Male	Belgium	\N
67022	Vadim Sadovnikov	\N	\N	Male	Kazakhstan	\N
67025	Brandon Yan Kai Pok	\N	\N	Male	Singapore	\N
67027	David Wu Wei Jia	\N	\N	Male	Hungary	\N
67032	Marek Prochazka	\N	\N	Male	Czechia	\N
67048	Martin Prantl	\N	\N	Male	CRO	\N
67097	Jinxun Liu	\N	\N	Male	China	\N
67144	Toprak Efe Eroglu	\N	\N	Male	Turkey	\N
67145	Simon Bastier	\N	\N	Male	France	\N
67152	Linus August Risnes	\N	\N	Male	Norway	\N
67162	Rostyslav Leontenko	\N	\N	Male	Ukraine	\N
67164	Marco Comensoli	\N	\N	Male	Italy	\N
67175	Krzysztof Madry	\N	\N	Male	Poland	\N
67177	Eirik Andersen	\N	\N	Male	Norway	\N
67313	Tomass Kitoks	\N	\N	Male	LAT	\N
67327	Isaac Raizada	\N	\N	Male	United Kingdom	\N
67328	Dominik Palenceusz	\N	\N	Male	Poland	\N
67352	Mark Csizmadia	\N	\N	Male	Hungary	\N
67494	Niels Bergsma	\N	\N	Male	Netherlands	\N
67596	Prajwal Sharath	\N	\N	Male	India	\N
68321	Ilias Peeters	\N	\N	Male	Belgium	\N
69947	Moyuan Xu	\N	\N	Female	China	\N
71921	Adrienn Matyok	\N	\N	Female	Hungary	\N
73551	Tong Chen	\N	\N	Female	China	\N
74173	Juliette Brindamour	\N	\N	Female	Canada	\N
74174	Tanith Turner	\N	\N	Female	United Kingdom	\N
74189	Fanni Dobran	\N	\N	Female	Hungary	\N
74363	Risa Shinohara	\N	\N	Female	Japan	\N
74707	Anastasiia Migunova	\N	\N	Female	Russia	\N
82600	Alex Lepage-Farrell	\N	\N	Female	Canada	\N
84652	Mia Doskovic	\N	\N	Female	Serbia	\N
84765	Flora Dobran	\N	\N	Female	Hungary	\N
84770	Haruna Nagamori	\N	\N	Female	Japan	\N
84800	Yu Min Jeon	\N	\N	Female	Republic of Korea	\N
84818	De Viola Piazza	\N	\N	Female	Italy	\N
92577	Rianne De Vries	\N	\N	Female	Netherlands	\N
92663	Nicole Gomez Botter	\N	\N	Female	Italy	\N
93286	Maja Dora Somodi	\N	\N	Female	Hungary	\N
94007	Berenice Comby	\N	\N	Female	France	\N
94073	Hedvig Hilde	\N	\N	Female	Norway	\N
94098	Thea Johansson	\N	\N	Female	Sweden	\N
94256	Betty Moeske	\N	\N	Female	GER	\N
94260	Anna Falkowska	\N	\N	Female	Poland	\N
94265	Mirei Nakashima	\N	\N	Female	Japan	\N
94268	Margherita Betti	\N	\N	Female	Italy	\N
94272	Ada Majewska	\N	\N	Female	Poland	\N
94274	Michalina Wawer	\N	\N	Female	Poland	\N
94278	Laura Petrovica	\N	\N	Female	LAT	\N
94279	Lotte Donderwinkel	\N	\N	Female	Netherlands	\N
94281	Viola Simonini	\N	\N	Female	Italy	\N
94289	Vanessa Andreatta	\N	\N	Female	Italy	\N
94292	Jiarui Song	\N	\N	Female	China	\N
94301	Songmi Oh	\N	\N	Female	Republic of Korea	\N
94302	Zoe Deltrap	\N	\N	Female	Netherlands	\N
94303	Jianing Zhang	\N	\N	Female	China	\N
94304	Suah Seo	\N	\N	Female	Republic of Korea	\N
94345	Melinda Schonborn	\N	\N	Female	Hungary	\N
94352	Aoi Yoshizawa	\N	\N	Female	Japan	\N
94371	Diede Van Oorschot	\N	\N	Female	Netherlands	\N
94374	Dora Szigeti	\N	\N	Female	Hungary	\N
94398	Zeinep Kumarkan	\N	\N	Female	Kazakhstan	\N
94408	Federica Cola	\N	\N	Female	Italy	\N
94423	Aline Holbo Dyrset	\N	\N	Female	Norway	\N
94426	Agnieszka Bogdanowicz	\N	\N	Female	Poland	\N
94494	Ance Grosberga	\N	\N	Female	LAT	\N
94775	Louisiana Stahl	\N	\N	Female	United States	\N
94823	Myroslava Seliukova	\N	\N	Female	Ukraine	\N
97686	Sugdenaz Berrin Aydin	\N	\N	Female	Turkey	\N
97699	Anne-Clara Belley	\N	\N	Female	Canada	\N
97724	Viktoria Albert	\N	\N	Female	Hungary	\N
97766	Lucrezia Casagrande	\N	\N	Female	Italy	\N
\.


--
-- Name: skaters_skater_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skaters_skater_id_seq', 98502, true);


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

