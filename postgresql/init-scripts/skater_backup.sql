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
15197	89.929	Almaty	World Cup (1)	\N	\N	\N	\N	\N
15115	87.542	Almaty	World Cup (1)	\N	\N	\N	\N	\N
14950	89.944	Salt Lake City	Four Continents	\N	\N	\N	\N	\N
15317	89.769	Montreal	World Cup	\N	\N	\N	\N	\N
14551	85.958	Montreal	World Cup	\N	\N	\N	\N	\N
14557	90.486	Almaty	World Cup (1)	\N	\N	\N	\N	\N
14536	88.161	Montreal	World Cup	\N	\N	\N	\N	\N
14749	88.840	Almaty	World Cup (1)	\N	\N	\N	\N	\N
22027	91.361	Salt Lake City	World Cup	\N	\N	\N	\N	\N
15512	90.264	Montreal	World Cup	\N	\N	\N	\N	\N
14791	88.375	Montreal	World Cup	\N	\N	\N	\N	\N
14559	89.547	Montreal	World Cup	\N	\N	\N	\N	\N
14589	90.630	Montreal	World Cup	\N	\N	\N	\N	\N
21177	91.276	Almaty	World Cup (2)	\N	\N	\N	\N	\N
15004	92.083	Montreal	World Cup	\N	\N	\N	\N	\N
20712	92.991	Salt Lake City	Four Continents	\N	\N	\N	\N	\N
14590	89.606	Almaty	World Cup (1)	\N	\N	\N	\N	\N
14566	89.441	Almaty	World Cup (2)	\N	\N	\N	\N	\N
16797	88.018	Almaty	World Cup (1)	\N	\N	\N	\N	\N
19505	90.031	Montreal	World Cup	\N	\N	\N	\N	\N
16301	91.184	Montreal	World Cup	\N	\N	\N	\N	\N
14744	87.828	Almaty	World Cup (2)	\N	\N	\N	\N	\N
23938	89.638	Almaty	World Cup (2)	\N	\N	\N	\N	\N
18000	93.807	Almaty	World Cup (2)	\N	\N	\N	\N	\N
17402	92.227	Almaty	World Cup (1)	\N	\N	\N	\N	\N
19265	93.140	Almaty	World Cup (2)	\N	\N	\N	\N	\N
15531	88.761	Montreal	World Cup	\N	\N	\N	\N	\N
16554	92.702	Montreal	World Cup	\N	\N	\N	\N	\N
18309	93.528	Montreal	World Cup	\N	\N	\N	\N	\N
14721	89.698	Almaty	World Cup (1)	\N	\N	\N	\N	\N
17942	92.749	Almaty	World Cup (1)	\N	\N	\N	\N	\N
19041	90.409	Montreal	World Cup	\N	\N	\N	\N	\N
19391	92.763	Almaty	World Cup (1)	\N	\N	\N	\N	\N
14605	88.845	Montreal	World Cup	\N	\N	\N	\N	\N
18260	89.523	Almaty	World Cup (1)	\N	\N	\N	\N	\N
17063	92.736	Almaty	World Cup (1)	\N	\N	\N	\N	\N
16694	88.132	Montreal	World Cup	\N	\N	\N	\N	\N
18759	95.063	Montreal	World Cup	\N	\N	\N	\N	\N
15201	86.162	Salt Lake City	World Cup	\N	\N	\N	\N	\N
17126	95.348	Montreal	World Cup	\N	\N	\N	\N	\N
14572	88.262	Salt Lake City	Four Continents	\N	\N	\N	\N	\N
14644	88.730	Salt Lake City	Four Continents	\N	\N	\N	\N	\N
17193	88.082	Almaty	World Cup (2)	\N	\N	\N	\N	\N
19030	93.365	Almaty	World Cup (2)	\N	\N	\N	\N	\N
18394	95.564	Almaty	World Cup (1)	\N	\N	\N	\N	\N
21433	96.291	Salt Lake City	Four Continents	\N	\N	\N	\N	\N
26608	93.215	Almaty	World Cup (2)	\N	\N	\N	\N	\N
17723	93.783	Almaty	World Cup (1)	\N	\N	\N	\N	\N
23796	96.620	Almaty	World Cup (2)	\N	\N	\N	\N	\N
15487	93.371	Almaty	World Cup (1)	\N	\N	\N	\N	\N
15248	88.177	Almaty	World Cup (2)	\N	\N	\N	\N	\N
24598	97.026	Montreal	World Cup	\N	\N	\N	\N	\N
14862	86.982	Almaty	World Cup (2)	\N	\N	\N	\N	\N
14668	89.251	Almaty	World Cup (2)	\N	\N	\N	\N	\N
23100	92.834	Salt Lake City	Four Continents	\N	\N	\N	\N	\N
19935	91.062	Salt Lake City	World Cup	\N	\N	\N	\N	\N
23763	94.829	Montreal	World Cup	\N	\N	\N	\N	\N
20265	95.258	Almaty	World Cup (2)	\N	\N	\N	\N	\N
15155	90.348	Montreal	World Cup	\N	\N	\N	\N	\N
18376	93.387	Montreal	World Cup	\N	\N	\N	\N	\N
14616	91.662	Montreal	World Cup	\N	\N	\N	\N	\N
15125	88.785	Almaty	World Cup (2)	\N	\N	\N	\N	\N
22183	92.602	Almaty	World Cup (2)	\N	\N	\N	\N	\N
26117	93.205	Almaty	World Cup (2)	\N	\N	\N	\N	\N
14910	89.651	Almaty	World Cup (1)	\N	\N	\N	\N	\N
14539	88.305	Montreal	World Cup	\N	\N	\N	\N	\N
15353	90.271	Montreal	World Cup	\N	\N	\N	\N	\N
20313	92.379	Montreal	World Cup	\N	\N	\N	\N	\N
27552	97.634	Montreal	World Cup	\N	\N	\N	\N	\N
23234	89.567	Salt Lake City	World Cup	\N	\N	\N	\N	\N
17391	92.805	Montreal	World Cup	\N	\N	\N	\N	\N
20072	92.330	Montreal	World Cup	\N	\N	\N	\N	\N
14581	87.021	Montreal	World Cup	\N	\N	\N	\N	\N
24806	91.783	Montreal	World Cup	\N	\N	\N	\N	\N
14543	88.381	Montreal	World Cup	\N	\N	\N	\N	\N
20996	92.732	Almaty	World Cup (2)	\N	\N	\N	\N	\N
14896	89.994	Almaty	World Cup (1)	\N	\N	\N	\N	\N
17696	93.237	Almaty	World Cup (2)	\N	\N	\N	\N	\N
\.


--
-- Data for Name: results_1500; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.results_1500 (skater_id, all_time_best, all_time_location, all_time_competition_name, all_time_date, season_best, season_location, season_competition_name, season_date) FROM stdin;
8097	134.360	\N	\N	\N	\N	\N	\N	\N
7909	133.468	\N	\N	\N	\N	\N	\N	\N
7789	132.602	\N	\N	\N	\N	\N	\N	\N
8862	137.375	\N	\N	\N	\N	\N	\N	\N
8485	135.782	\N	\N	\N	\N	\N	\N	\N
8874	137.411	\N	\N	\N	\N	\N	\N	\N
9102	138.162	\N	\N	\N	\N	\N	\N	\N
7727	132.091	\N	\N	\N	\N	\N	\N	\N
8008	133.948	\N	\N	\N	\N	\N	\N	\N
9946	140.415	\N	\N	\N	\N	\N	\N	\N
9503	139.206	\N	\N	\N	\N	\N	\N	\N
9918	140.372	\N	\N	\N	\N	\N	\N	\N
8575	136.179	\N	\N	\N	\N	\N	\N	\N
7819	132.866	\N	\N	\N	\N	\N	\N	\N
8264	135.048	\N	\N	\N	\N	\N	\N	\N
7833	133.015	\N	\N	\N	\N	\N	\N	\N
10574	142.060	\N	\N	\N	\N	\N	\N	\N
10253	141.195	\N	\N	\N	\N	\N	\N	\N
10724	142.499	\N	\N	\N	\N	\N	\N	\N
9375	138.849	\N	\N	\N	\N	\N	\N	\N
9898	140.336	\N	\N	\N	\N	\N	\N	\N
9003	137.853	\N	\N	\N	\N	\N	\N	\N
9685	139.724	\N	\N	\N	\N	\N	\N	\N
8786	137.090	\N	\N	\N	\N	\N	\N	\N
9065	138.040	\N	\N	\N	\N	\N	\N	\N
11059	143.421	\N	\N	\N	\N	\N	\N	\N
8719	136.861	\N	\N	\N	\N	\N	\N	\N
8408	135.500	\N	\N	\N	\N	\N	\N	\N
9721	139.825	\N	\N	\N	\N	\N	\N	\N
8761	137.004	\N	\N	\N	\N	\N	\N	\N
8287	135.150	\N	\N	\N	\N	\N	\N	\N
9072	138.065	\N	\N	\N	\N	\N	\N	\N
8316	135.238	\N	\N	\N	\N	\N	\N	\N
10517	141.890	\N	\N	\N	\N	\N	\N	\N
8667	136.611	\N	\N	\N	\N	\N	\N	\N
7817	132.861	\N	\N	\N	\N	\N	\N	\N
7886	133.327	\N	\N	\N	\N	\N	\N	\N
7748	132.317	\N	\N	\N	\N	\N	\N	\N
11331	144.367	\N	\N	\N	\N	\N	\N	\N
8651	136.522	\N	\N	\N	\N	\N	\N	\N
11557	145.158	\N	\N	\N	\N	\N	\N	\N
8375	135.393	\N	\N	\N	\N	\N	\N	\N
9005	137.857	\N	\N	\N	\N	\N	\N	\N
9216	138.500	\N	\N	\N	\N	\N	\N	\N
9172	138.365	\N	\N	\N	\N	\N	\N	\N
11302	144.267	\N	\N	\N	\N	\N	\N	\N
9237	138.526	\N	\N	\N	\N	\N	\N	\N
8550	136.070	\N	\N	\N	\N	\N	\N	\N
11783	146.090	\N	\N	\N	\N	\N	\N	\N
9967	140.460	\N	\N	\N	\N	\N	\N	\N
8064	134.200	\N	\N	\N	\N	\N	\N	\N
11104	143.615	\N	\N	\N	\N	\N	\N	\N
8362	135.367	\N	\N	\N	\N	\N	\N	\N
8846	137.316	\N	\N	\N	\N	\N	\N	\N
7860	133.199	\N	\N	\N	\N	\N	\N	\N
8697	136.770	\N	\N	\N	\N	\N	\N	\N
9418	138.976	\N	\N	\N	\N	\N	\N	\N
11603	145.331	\N	\N	\N	\N	\N	\N	\N
10335	141.451	\N	\N	\N	\N	\N	\N	\N
7987	133.842	\N	\N	\N	\N	\N	\N	\N
8235	134.918	\N	\N	\N	\N	\N	\N	\N
11027	143.313	\N	\N	\N	\N	\N	\N	\N
7756	132.382	\N	\N	\N	\N	\N	\N	\N
8642	136.484	\N	\N	\N	\N	\N	\N	\N
9492	139.186	\N	\N	\N	\N	\N	\N	\N
11927	146.801	\N	\N	\N	\N	\N	\N	\N
11981	147.057	\N	\N	\N	\N	\N	\N	\N
9713	139.804	\N	\N	\N	\N	\N	\N	\N
12050	147.309	\N	\N	\N	\N	\N	\N	\N
10287	141.311	\N	\N	\N	\N	\N	\N	\N
9006	137.873	\N	\N	\N	\N	\N	\N	\N
11967	146.982	\N	\N	\N	\N	\N	\N	\N
10392	141.605	\N	\N	\N	\N	\N	\N	\N
11738	145.908	\N	\N	\N	\N	\N	\N	\N
9543	139.324	\N	\N	\N	\N	\N	\N	\N
8431	135.572	\N	\N	\N	\N	\N	\N	\N
8756	136.994	\N	\N	\N	\N	\N	\N	\N
12379	149.001	\N	\N	\N	\N	\N	\N	\N
11135	143.678	\N	\N	\N	\N	\N	\N	\N
8601	136.268	\N	\N	\N	\N	\N	\N	\N
10308	141.371	\N	\N	\N	\N	\N	\N	\N
7813	132.844	\N	\N	\N	\N	\N	\N	\N
9086	138.115	\N	\N	\N	\N	\N	\N	\N
10046	140.657	\N	\N	\N	\N	\N	\N	\N
10632	142.237	\N	\N	\N	\N	\N	\N	\N
7669	131.214	\N	\N	\N	\N	\N	\N	\N
8983	137.783	\N	\N	\N	\N	\N	\N	\N
10689	142.393	\N	\N	\N	\N	\N	\N	\N
10288	141.314	\N	\N	\N	\N	\N	\N	\N
12540	149.776	\N	\N	\N	\N	\N	\N	\N
8853	137.333	\N	\N	\N	\N	\N	\N	\N
11105	143.617	\N	\N	\N	\N	\N	\N	\N
10351	141.504	\N	\N	\N	\N	\N	\N	\N
9660	139.660	\N	\N	\N	\N	\N	\N	\N
12466	149.453	\N	\N	\N	\N	\N	\N	\N
12150	147.880	\N	\N	\N	\N	\N	\N	\N
10842	142.792	\N	\N	\N	\N	\N	\N	\N
7852	133.153	\N	\N	\N	\N	\N	\N	\N
7808	132.823	\N	\N	\N	\N	\N	\N	\N
11461	144.768	\N	\N	\N	\N	\N	\N	\N
10284	141.302	\N	\N	\N	\N	\N	\N	\N
12652	150.458	\N	\N	\N	\N	\N	\N	\N
12477	149.482	\N	\N	\N	\N	\N	\N	\N
12225	148.276	\N	\N	\N	\N	\N	\N	\N
7629	129.660	\N	\N	\N	\N	\N	\N	\N
11700	145.747	\N	\N	\N	\N	\N	\N	\N
11554	145.140	\N	\N	\N	\N	\N	\N	\N
12633	150.302	\N	\N	\N	\N	\N	\N	\N
8743	136.941	\N	\N	\N	\N	\N	\N	\N
9203	138.454	\N	\N	\N	\N	\N	\N	\N
8727	136.890	\N	\N	\N	\N	\N	\N	\N
11485	144.860	\N	\N	\N	\N	\N	\N	\N
12339	148.801	\N	\N	\N	\N	\N	\N	\N
7896	133.404	\N	\N	\N	\N	\N	\N	\N
9516	139.243	\N	\N	\N	\N	\N	\N	\N
9360	138.812	\N	\N	\N	\N	\N	\N	\N
8677	136.686	\N	\N	\N	\N	\N	\N	\N
11970	146.999	\N	\N	\N	\N	\N	\N	\N
7776	132.535	\N	\N	\N	\N	\N	\N	\N
9796	140.013	\N	\N	\N	\N	\N	\N	\N
9748	139.882	\N	\N	\N	\N	\N	\N	\N
7631	129.723	\N	\N	\N	\N	\N	\N	\N
8422	135.543	\N	\N	\N	\N	\N	\N	\N
12356	148.888	\N	\N	\N	\N	\N	\N	\N
10886	142.895	\N	\N	\N	\N	\N	\N	\N
9524	139.262	\N	\N	\N	\N	\N	\N	\N
8748	136.975	\N	\N	\N	\N	\N	\N	\N
9781	139.975	\N	\N	\N	\N	\N	\N	\N
12688	150.781	\N	\N	\N	\N	\N	\N	\N
8226	134.900	\N	\N	\N	\N	\N	\N	\N
7615	128.872	\N	\N	\N	\N	\N	\N	\N
12413	149.218	\N	\N	\N	\N	\N	\N	\N
7881	133.320	\N	\N	\N	\N	\N	\N	\N
8348	135.327	\N	\N	\N	\N	\N	\N	\N
9283	138.619	\N	\N	\N	\N	\N	\N	\N
9622	139.562	\N	\N	\N	\N	\N	\N	\N
9609	139.522	\N	\N	\N	\N	\N	\N	\N
7655	130.937	\N	\N	\N	\N	\N	\N	\N
9239	138.533	\N	\N	\N	\N	\N	\N	\N
8303	135.196	\N	\N	\N	\N	\N	\N	\N
10666	142.344	\N	\N	\N	\N	\N	\N	\N
9452	139.064	\N	\N	\N	\N	\N	\N	\N
8565	136.130	\N	\N	\N	\N	\N	\N	\N
9119	138.213	\N	\N	\N	\N	\N	\N	\N
8816	137.202	\N	\N	\N	\N	\N	\N	\N
8640	136.480	\N	\N	\N	\N	\N	\N	\N
9647	139.620	\N	\N	\N	\N	\N	\N	\N
11552	145.129	\N	\N	\N	\N	\N	\N	\N
11002	143.238	\N	\N	\N	\N	\N	\N	\N
11842	146.365	\N	\N	\N	\N	\N	\N	\N
10515	141.887	\N	\N	\N	\N	\N	\N	\N
9887	140.305	\N	\N	\N	\N	\N	\N	\N
9171	138.357	\N	\N	\N	\N	\N	\N	\N
8322	135.242	\N	\N	\N	\N	\N	\N	\N
8913	137.555	\N	\N	\N	\N	\N	\N	\N
8033	134.064	\N	\N	\N	\N	\N	\N	\N
7680	131.482	\N	\N	\N	\N	\N	\N	\N
7892	133.369	\N	\N	\N	\N	\N	\N	\N
7971	133.751	\N	\N	\N	\N	\N	\N	\N
8345	135.317	\N	\N	\N	\N	\N	\N	\N
7924	133.566	\N	\N	\N	\N	\N	\N	\N
8332	135.269	\N	\N	\N	\N	\N	\N	\N
9744	139.873	\N	\N	\N	\N	\N	\N	\N
11476	144.817	\N	\N	\N	\N	\N	\N	\N
9920	140.374	\N	\N	\N	\N	\N	\N	\N
7931	133.581	\N	\N	\N	\N	\N	\N	\N
11139	143.683	\N	\N	\N	\N	\N	\N	\N
9105	138.171	\N	\N	\N	\N	\N	\N	\N
9895	140.326	\N	\N	\N	\N	\N	\N	\N
10989	143.184	\N	\N	\N	\N	\N	\N	\N
9104	138.165	\N	\N	\N	\N	\N	\N	\N
11131	143.672	\N	\N	\N	\N	\N	\N	\N
8016	133.978	\N	\N	\N	\N	\N	\N	\N
9579	139.427	\N	\N	\N	\N	\N	\N	\N
13219	155.806	\N	\N	\N	\N	\N	\N	\N
7621	129.240	\N	\N	\N	\N	\N	\N	\N
11764	146.022	\N	\N	\N	\N	\N	\N	\N
11696	145.725	\N	\N	\N	\N	\N	\N	\N
8265	135.060	\N	\N	\N	\N	\N	\N	\N
7734	132.204	\N	\N	\N	\N	\N	\N	\N
12523	149.684	\N	\N	\N	\N	\N	\N	\N
8725	136.884	\N	\N	\N	\N	\N	\N	\N
9923	140.377	\N	\N	\N	\N	\N	\N	\N
11427	144.664	\N	\N	\N	\N	\N	\N	\N
11344	144.398	\N	\N	\N	\N	\N	\N	\N
12467	149.455	\N	\N	\N	\N	\N	\N	\N
12167	147.945	\N	\N	\N	\N	\N	\N	\N
10228	141.116	\N	\N	\N	\N	\N	\N	\N
13303	157.168	\N	\N	\N	\N	\N	\N	\N
9088	138.129	\N	\N	\N	\N	\N	\N	\N
8768	137.035	\N	\N	\N	\N	\N	\N	\N
12197	148.127	\N	\N	\N	\N	\N	\N	\N
12585	149.997	\N	\N	\N	\N	\N	\N	\N
12059	147.347	\N	\N	\N	\N	\N	\N	\N
12221	148.255	\N	\N	\N	\N	\N	\N	\N
11850	146.404	\N	\N	\N	\N	\N	\N	\N
12306	148.620	\N	\N	\N	\N	\N	\N	\N
9989	140.534	\N	\N	\N	\N	\N	\N	\N
13299	157.080	\N	\N	\N	\N	\N	\N	\N
8763	137.007	\N	\N	\N	\N	\N	\N	\N
11807	146.212	\N	\N	\N	\N	\N	\N	\N
7639	130.176	\N	\N	\N	\N	\N	\N	\N
10006	140.566	\N	\N	\N	\N	\N	\N	\N
11237	144.020	\N	\N	\N	\N	\N	\N	\N
8004	133.927	\N	\N	\N	\N	\N	\N	\N
9859	140.200	\N	\N	\N	\N	\N	\N	\N
13283	156.782	\N	\N	\N	\N	\N	\N	\N
10009	140.569	\N	\N	\N	\N	\N	\N	\N
7772	132.518	\N	\N	\N	\N	\N	\N	\N
10964	143.096	\N	\N	\N	\N	\N	\N	\N
12412	149.218	\N	\N	\N	\N	\N	\N	\N
8296	135.172	\N	\N	\N	\N	\N	\N	\N
12586	150.011	\N	\N	\N	\N	\N	\N	\N
7864	133.221	\N	\N	\N	\N	\N	\N	\N
8025	134.026	\N	\N	\N	\N	\N	\N	\N
11129	143.669	\N	\N	\N	\N	\N	\N	\N
8474	135.740	\N	\N	\N	\N	\N	\N	\N
7747	132.310	\N	\N	\N	\N	\N	\N	\N
9093	138.136	\N	\N	\N	\N	\N	\N	\N
12277	148.493	\N	\N	\N	\N	\N	\N	\N
8612	136.330	\N	\N	\N	\N	\N	\N	\N
12944	152.759	\N	\N	\N	\N	\N	\N	\N
8495	135.813	\N	\N	\N	\N	\N	\N	\N
12856	152.035	\N	\N	\N	\N	\N	\N	\N
9654	139.639	\N	\N	\N	\N	\N	\N	\N
7636	129.932	\N	\N	\N	\N	\N	\N	\N
8732	136.906	\N	\N	\N	\N	\N	\N	\N
13345	157.988	\N	\N	\N	\N	\N	\N	\N
8716	136.846	\N	\N	\N	\N	\N	\N	\N
12392	149.082	\N	\N	\N	\N	\N	\N	\N
7682	131.514	\N	\N	\N	\N	\N	\N	\N
12125	147.775	\N	\N	\N	\N	\N	\N	\N
11079	143.503	\N	\N	\N	\N	\N	\N	\N
11100	143.609	\N	\N	\N	\N	\N	\N	\N
13476	160.084	\N	\N	\N	\N	\N	\N	\N
9199	138.445	\N	\N	\N	\N	\N	\N	\N
7613	128.646	\N	\N	\N	\N	\N	\N	\N
7642	130.314	\N	\N	\N	\N	\N	\N	\N
7627	129.559	\N	\N	\N	\N	\N	\N	\N
8566	136.130	\N	\N	\N	\N	\N	\N	\N
8196	134.780	\N	\N	\N	\N	\N	\N	\N
9861	140.202	\N	\N	\N	\N	\N	\N	\N
7949	133.657	\N	\N	\N	\N	\N	\N	\N
8432	135.577	\N	\N	\N	\N	\N	\N	\N
13232	155.994	\N	\N	\N	\N	\N	\N	\N
11930	146.817	\N	\N	\N	\N	\N	\N	\N
7645	130.498	\N	\N	\N	\N	\N	\N	\N
9109	138.179	\N	\N	\N	\N	\N	\N	\N
12444	149.338	\N	\N	\N	\N	\N	\N	\N
8258	135.024	\N	\N	\N	\N	\N	\N	\N
12995	153.167	\N	\N	\N	\N	\N	\N	\N
7681	131.501	\N	\N	\N	\N	\N	\N	\N
11612	145.376	\N	\N	\N	\N	\N	\N	\N
13230	155.989	\N	\N	\N	\N	\N	\N	\N
13523	160.878	\N	\N	\N	\N	\N	\N	\N
9490	139.175	\N	\N	\N	\N	\N	\N	\N
10507	141.854	\N	\N	\N	\N	\N	\N	\N
7663	131.165	\N	\N	\N	\N	\N	\N	\N
9901	140.340	\N	\N	\N	\N	\N	\N	\N
7855	133.168	\N	\N	\N	\N	\N	\N	\N
13263	156.447	\N	\N	\N	\N	\N	\N	\N
13570	162.023	\N	\N	\N	\N	\N	\N	\N
8188	134.755	\N	\N	\N	\N	\N	\N	\N
13579	162.297	\N	\N	\N	\N	\N	\N	\N
8381	135.430	\N	\N	\N	\N	\N	\N	\N
8649	136.520	\N	\N	\N	\N	\N	\N	\N
9315	138.687	\N	\N	\N	\N	\N	\N	\N
8400	135.480	\N	\N	\N	\N	\N	\N	\N
9378	138.853	\N	\N	\N	\N	\N	\N	\N
8504	135.844	\N	\N	\N	\N	\N	\N	\N
9432	139.004	\N	\N	\N	\N	\N	\N	\N
8603	136.272	\N	\N	\N	\N	\N	\N	\N
8494	135.813	\N	\N	\N	\N	\N	\N	\N
7676	131.392	\N	\N	\N	\N	\N	\N	\N
9079	138.094	\N	\N	\N	\N	\N	\N	\N
10342	141.469	\N	\N	\N	\N	\N	\N	\N
11834	146.319	\N	\N	\N	\N	\N	\N	\N
8141	134.599	\N	\N	\N	\N	\N	\N	\N
9091	138.134	\N	\N	\N	\N	\N	\N	\N
7662	131.126	\N	\N	\N	\N	\N	\N	\N
11130	143.670	\N	\N	\N	\N	\N	\N	\N
13455	159.785	\N	\N	\N	\N	\N	\N	\N
12229	148.289	\N	\N	\N	\N	\N	\N	\N
13632	163.941	\N	\N	\N	\N	\N	\N	\N
9046	137.977	\N	\N	\N	\N	\N	\N	\N
7665	131.169	\N	\N	\N	\N	\N	\N	\N
7933	133.590	\N	\N	\N	\N	\N	\N	\N
10844	142.800	\N	\N	\N	\N	\N	\N	\N
10312	141.382	\N	\N	\N	\N	\N	\N	\N
7667	131.183	\N	\N	\N	\N	\N	\N	\N
10357	141.520	\N	\N	\N	\N	\N	\N	\N
10534	141.931	\N	\N	\N	\N	\N	\N	\N
11193	143.868	\N	\N	\N	\N	\N	\N	\N
7711	131.909	\N	\N	\N	\N	\N	\N	\N
9296	138.645	\N	\N	\N	\N	\N	\N	\N
9134	138.258	\N	\N	\N	\N	\N	\N	\N
8703	136.807	\N	\N	\N	\N	\N	\N	\N
13642	164.313	\N	\N	\N	\N	\N	\N	\N
8433	135.579	\N	\N	\N	\N	\N	\N	\N
7628	129.622	\N	\N	\N	\N	\N	\N	\N
8855	137.341	\N	\N	\N	\N	\N	\N	\N
8108	134.419	\N	\N	\N	\N	\N	\N	\N
9188	138.410	\N	\N	\N	\N	\N	\N	\N
7980	133.799	\N	\N	\N	\N	\N	\N	\N
13618	163.397	\N	\N	\N	\N	\N	\N	\N
10266	141.229	\N	\N	\N	\N	\N	\N	\N
13253	156.362	\N	\N	\N	\N	\N	\N	\N
13514	160.683	\N	\N	\N	\N	\N	\N	\N
8395	135.457	\N	\N	\N	\N	\N	\N	\N
12667	150.603	\N	\N	\N	\N	\N	\N	\N
9004	137.854	\N	\N	\N	\N	\N	\N	\N
7872	133.282	\N	\N	\N	\N	\N	\N	\N
8107	134.413	\N	\N	\N	\N	\N	\N	\N
8285	135.148	\N	\N	\N	\N	\N	\N	\N
9284	138.619	\N	\N	\N	\N	\N	\N	\N
11593	145.302	\N	\N	\N	\N	\N	\N	\N
12448	149.362	\N	\N	\N	\N	\N	\N	\N
11215	143.936	\N	\N	\N	\N	\N	\N	\N
7799	132.746	\N	\N	\N	\N	\N	\N	\N
8536	135.993	\N	\N	\N	\N	\N	\N	\N
13630	163.849	\N	\N	\N	\N	\N	\N	\N
7723	132.003	\N	\N	\N	\N	\N	\N	\N
13239	156.141	\N	\N	\N	\N	\N	\N	\N
7751	132.334	\N	\N	\N	\N	\N	\N	\N
7715	131.948	\N	\N	\N	\N	\N	\N	\N
12767	151.295	\N	\N	\N	\N	\N	\N	\N
8411	135.517	\N	\N	\N	\N	\N	\N	\N
7743	132.271	\N	\N	\N	\N	\N	\N	\N
7658	130.999	\N	\N	\N	\N	\N	\N	\N
10401	141.623	\N	\N	\N	\N	\N	\N	\N
9558	139.383	\N	\N	\N	\N	\N	\N	\N
11305	144.272	\N	\N	\N	\N	\N	\N	\N
8168	134.696	\N	\N	\N	\N	\N	\N	\N
10023	140.598	\N	\N	\N	\N	\N	\N	\N
7795	132.689	\N	\N	\N	\N	\N	\N	\N
9292	138.636	\N	\N	\N	\N	\N	\N	\N
13531	160.989	\N	\N	\N	\N	\N	\N	\N
7653	130.841	\N	\N	\N	\N	\N	\N	\N
8826	137.241	\N	\N	\N	\N	\N	\N	\N
10230	141.118	\N	\N	\N	\N	\N	\N	\N
11580	145.262	\N	\N	\N	\N	\N	\N	\N
12627	150.268	\N	\N	\N	\N	\N	\N	\N
8187	134.752	\N	\N	\N	\N	\N	\N	\N
8045	134.126	\N	\N	\N	\N	\N	\N	\N
9061	138.012	\N	\N	\N	\N	\N	\N	\N
10482	141.802	\N	\N	\N	\N	\N	\N	\N
10058	140.684	\N	\N	\N	\N	\N	\N	\N
13714	168.867	\N	\N	\N	\N	\N	\N	\N
11939	146.854	\N	\N	\N	\N	\N	\N	\N
7801	132.760	\N	\N	\N	\N	\N	\N	\N
8211	134.857	\N	\N	\N	\N	\N	\N	\N
8509	135.852	\N	\N	\N	\N	\N	\N	\N
9727	139.835	\N	\N	\N	\N	\N	\N	\N
8009	133.955	\N	\N	\N	\N	\N	\N	\N
7618	129.219	\N	\N	\N	\N	\N	\N	\N
13724	169.668	\N	\N	\N	\N	\N	\N	\N
7630	129.681	\N	\N	\N	\N	\N	\N	\N
9511	139.230	\N	\N	\N	\N	\N	\N	\N
12716	150.974	\N	\N	\N	\N	\N	\N	\N
10629	142.227	\N	\N	\N	\N	\N	\N	\N
9611	139.528	\N	\N	\N	\N	\N	\N	\N
13477	160.094	\N	\N	\N	\N	\N	\N	\N
10553	142.011	\N	\N	\N	\N	\N	\N	\N
12709	150.933	\N	\N	\N	\N	\N	\N	\N
10678	142.369	\N	\N	\N	\N	\N	\N	\N
9634	139.593	\N	\N	\N	\N	\N	\N	\N
8573	136.168	\N	\N	\N	\N	\N	\N	\N
13794	173.900	\N	\N	\N	\N	\N	\N	\N
12619	150.203	\N	\N	\N	\N	\N	\N	\N
9658	139.659	\N	\N	\N	\N	\N	\N	\N
13158	155.038	\N	\N	\N	\N	\N	\N	\N
7950	133.663	\N	\N	\N	\N	\N	\N	\N
10390	141.603	\N	\N	\N	\N	\N	\N	\N
13513	160.679	\N	\N	\N	\N	\N	\N	\N
8212	134.858	\N	\N	\N	\N	\N	\N	\N
9569	139.407	\N	\N	\N	\N	\N	\N	\N
13812	175.136	\N	\N	\N	\N	\N	\N	\N
8013	133.971	\N	\N	\N	\N	\N	\N	\N
8496	135.817	\N	\N	\N	\N	\N	\N	\N
7938	133.607	\N	\N	\N	\N	\N	\N	\N
9064	138.017	\N	\N	\N	\N	\N	\N	\N
8793	137.135	\N	\N	\N	\N	\N	\N	\N
12640	150.354	\N	\N	\N	\N	\N	\N	\N
7781	132.553	\N	\N	\N	\N	\N	\N	\N
7623	129.254	\N	\N	\N	\N	\N	\N	\N
8759	137.002	\N	\N	\N	\N	\N	\N	\N
7654	130.923	\N	\N	\N	\N	\N	\N	\N
8117	134.491	\N	\N	\N	\N	\N	\N	\N
9858	140.196	\N	\N	\N	\N	\N	\N	\N
8522	135.924	\N	\N	\N	\N	\N	\N	\N
13696	167.506	\N	\N	\N	\N	\N	\N	\N
7803	132.782	\N	\N	\N	\N	\N	\N	\N
8619	136.370	\N	\N	\N	\N	\N	\N	\N
7635	129.928	\N	\N	\N	\N	\N	\N	\N
8123	134.509	\N	\N	\N	\N	\N	\N	\N
9520	139.255	\N	\N	\N	\N	\N	\N	\N
8554	136.076	\N	\N	\N	\N	\N	\N	\N
8133	134.538	\N	\N	\N	\N	\N	\N	\N
7673	131.294	\N	\N	\N	\N	\N	\N	\N
12420	149.238	\N	\N	\N	\N	\N	\N	\N
9500	139.202	\N	\N	\N	\N	\N	\N	\N
7643	130.395	\N	\N	\N	\N	\N	\N	\N
13848	179.730	\N	\N	\N	\N	\N	\N	\N
9248	138.553	\N	\N	\N	\N	\N	\N	\N
7741	132.259	\N	\N	\N	\N	\N	\N	\N
7617	129.213	\N	\N	\N	\N	\N	\N	\N
11234	144.004	\N	\N	\N	\N	\N	\N	\N
8988	137.794	\N	\N	\N	\N	\N	\N	\N
8177	134.728	\N	\N	\N	\N	\N	\N	\N
8624	136.396	\N	\N	\N	\N	\N	\N	\N
10261	141.214	\N	\N	\N	\N	\N	\N	\N
9519	139.250	\N	\N	\N	\N	\N	\N	\N
8497	135.823	\N	\N	\N	\N	\N	\N	\N
9578	139.423	\N	\N	\N	\N	\N	\N	\N
9788	139.992	\N	\N	\N	\N	\N	\N	\N
7956	133.685	\N	\N	\N	\N	\N	\N	\N
9655	139.653	\N	\N	\N	\N	\N	\N	\N
13830	177.630	\N	\N	\N	\N	\N	\N	\N
11125	143.663	\N	\N	\N	\N	\N	\N	\N
9465	139.102	\N	\N	\N	\N	\N	\N	\N
9040	137.961	\N	\N	\N	\N	\N	\N	\N
7851	133.148	\N	\N	\N	\N	\N	\N	\N
8156	134.645	\N	\N	\N	\N	\N	\N	\N
9434	139.014	\N	\N	\N	\N	\N	\N	\N
7994	133.865	\N	\N	\N	\N	\N	\N	\N
7720	131.988	\N	\N	\N	\N	\N	\N	\N
7857	133.174	\N	\N	\N	\N	\N	\N	\N
7612	127.943	\N	\N	\N	\N	\N	\N	\N
11825	146.268	\N	\N	\N	\N	\N	\N	\N
9412	138.963	\N	\N	\N	\N	\N	\N	\N
7736	132.219	\N	\N	\N	\N	\N	\N	\N
9089	138.129	\N	\N	\N	\N	\N	\N	\N
8984	137.784	\N	\N	\N	\N	\N	\N	\N
8342	135.306	\N	\N	\N	\N	\N	\N	\N
7625	129.364	\N	\N	\N	\N	\N	\N	\N
9344	138.787	\N	\N	\N	\N	\N	\N	\N
7622	129.244	\N	\N	\N	\N	\N	\N	\N
7616	129.185	\N	\N	\N	\N	\N	\N	\N
7657	130.977	\N	\N	\N	\N	\N	\N	\N
7677	131.430	\N	\N	\N	\N	\N	\N	\N
7638	130.058	\N	\N	\N	\N	\N	\N	\N
10108	140.816	\N	\N	\N	\N	\N	\N	\N
10286	141.309	\N	\N	\N	\N	\N	\N	\N
7701	131.781	\N	\N	\N	\N	\N	\N	\N
9952	140.438	\N	\N	\N	\N	\N	\N	\N
7688	131.584	\N	\N	\N	\N	\N	\N	\N
7690	131.602	\N	\N	\N	\N	\N	\N	\N
8376	135.399	\N	\N	\N	\N	\N	\N	\N
7745	132.295	\N	\N	\N	\N	\N	\N	\N
7779	132.546	\N	\N	\N	\N	\N	\N	\N
13663	165.392	\N	\N	\N	\N	\N	\N	\N
7978	133.785	\N	\N	\N	\N	\N	\N	\N
7750	132.331	\N	\N	\N	\N	\N	\N	\N
7878	133.310	\N	\N	\N	\N	\N	\N	\N
7614	128.655	\N	\N	\N	\N	\N	\N	\N
7620	129.240	\N	\N	\N	\N	\N	\N	\N
7744	132.295	\N	\N	\N	\N	\N	\N	\N
8192	134.763	\N	\N	\N	\N	\N	\N	\N
8744	136.944	\N	\N	\N	\N	\N	\N	\N
9631	139.581	\N	\N	\N	\N	\N	\N	\N
7811	132.842	\N	\N	\N	\N	\N	\N	\N
7792	132.649	\N	\N	\N	\N	\N	\N	\N
9028	137.930	\N	\N	\N	\N	\N	\N	\N
8028	134.033	\N	\N	\N	\N	\N	\N	\N
7644	130.485	\N	\N	\N	\N	\N	\N	\N
10115	140.828	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: results_500; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.results_500 (skater_id, all_time_best, all_time_location, all_time_competition_name, all_time_date, season_best, season_location, season_competition_name, season_date) FROM stdin;
18569	44.358	\N	\N	\N	\N	\N	\N	\N
17746	44.140	\N	\N	\N	\N	\N	\N	\N
18700	44.391	\N	\N	\N	\N	\N	\N	\N
19328	44.550	\N	\N	\N	\N	\N	\N	\N
14592	42.491	\N	\N	\N	\N	\N	\N	\N
18396	44.313	\N	\N	\N	\N	\N	\N	\N
15317	43.263	\N	\N	\N	\N	\N	\N	\N
19180	44.508	\N	\N	\N	\N	\N	\N	\N
18038	44.223	\N	\N	\N	\N	\N	\N	\N
14896	42.970	\N	\N	\N	\N	\N	\N	\N
15431	43.333	\N	\N	\N	\N	\N	\N	\N
18347	44.301	\N	\N	\N	\N	\N	\N	\N
21299	45.007	\N	\N	\N	\N	\N	\N	\N
17170	43.965	\N	\N	\N	\N	\N	\N	\N
20769	44.887	\N	\N	\N	\N	\N	\N	\N
15298	43.253	\N	\N	\N	\N	\N	\N	\N
16272	43.677	\N	\N	\N	\N	\N	\N	\N
22053	45.194	\N	\N	\N	\N	\N	\N	\N
17531	44.078	\N	\N	\N	\N	\N	\N	\N
17433	44.042	\N	\N	\N	\N	\N	\N	\N
14668	42.682	\N	\N	\N	\N	\N	\N	\N
16075	43.604	\N	\N	\N	\N	\N	\N	\N
20996	44.938	\N	\N	\N	\N	\N	\N	\N
17655	44.113	\N	\N	\N	\N	\N	\N	\N
14721	42.771	\N	\N	\N	\N	\N	\N	\N
21371	45.030	\N	\N	\N	\N	\N	\N	\N
20433	44.811	\N	\N	\N	\N	\N	\N	\N
21658	45.100	\N	\N	\N	\N	\N	\N	\N
15512	43.371	\N	\N	\N	\N	\N	\N	\N
20704	44.876	\N	\N	\N	\N	\N	\N	\N
23454	45.565	\N	\N	\N	\N	\N	\N	\N
18965	44.460	\N	\N	\N	\N	\N	\N	\N
15125	43.144	\N	\N	\N	\N	\N	\N	\N
23616	45.617	\N	\N	\N	\N	\N	\N	\N
16869	43.875	\N	\N	\N	\N	\N	\N	\N
18535	44.349	\N	\N	\N	\N	\N	\N	\N
16198	43.648	\N	\N	\N	\N	\N	\N	\N
19375	44.559	\N	\N	\N	\N	\N	\N	\N
20983	44.936	\N	\N	\N	\N	\N	\N	\N
19548	44.605	\N	\N	\N	\N	\N	\N	\N
16118	43.617	\N	\N	\N	\N	\N	\N	\N
16797	43.850	\N	\N	\N	\N	\N	\N	\N
24146	45.779	\N	\N	\N	\N	\N	\N	\N
23711	45.644	\N	\N	\N	\N	\N	\N	\N
24180	45.790	\N	\N	\N	\N	\N	\N	\N
23100	45.469	\N	\N	\N	\N	\N	\N	\N
19267	44.535	\N	\N	\N	\N	\N	\N	\N
23146	45.479	\N	\N	\N	\N	\N	\N	\N
23483	45.574	\N	\N	\N	\N	\N	\N	\N
14626	42.597	\N	\N	\N	\N	\N	\N	\N
15775	43.486	\N	\N	\N	\N	\N	\N	\N
19776	44.663	\N	\N	\N	\N	\N	\N	\N
22271	45.250	\N	\N	\N	\N	\N	\N	\N
16301	43.688	\N	\N	\N	\N	\N	\N	\N
21132	44.969	\N	\N	\N	\N	\N	\N	\N
22963	45.431	\N	\N	\N	\N	\N	\N	\N
22953	45.429	\N	\N	\N	\N	\N	\N	\N
24800	45.986	\N	\N	\N	\N	\N	\N	\N
24806	45.990	\N	\N	\N	\N	\N	\N	\N
20319	44.783	\N	\N	\N	\N	\N	\N	\N
23757	45.658	\N	\N	\N	\N	\N	\N	\N
16500	43.754	\N	\N	\N	\N	\N	\N	\N
17277	43.992	\N	\N	\N	\N	\N	\N	\N
24898	46.020	\N	\N	\N	\N	\N	\N	\N
14965	43.027	\N	\N	\N	\N	\N	\N	\N
19165	44.505	\N	\N	\N	\N	\N	\N	\N
18235	44.273	\N	\N	\N	\N	\N	\N	\N
22861	45.402	\N	\N	\N	\N	\N	\N	\N
17046	43.930	\N	\N	\N	\N	\N	\N	\N
16199	43.648	\N	\N	\N	\N	\N	\N	\N
18047	44.225	\N	\N	\N	\N	\N	\N	\N
17942	44.197	\N	\N	\N	\N	\N	\N	\N
25500	46.226	\N	\N	\N	\N	\N	\N	\N
18829	44.423	\N	\N	\N	\N	\N	\N	\N
24670	45.946	\N	\N	\N	\N	\N	\N	\N
24378	45.846	\N	\N	\N	\N	\N	\N	\N
18418	44.318	\N	\N	\N	\N	\N	\N	\N
22483	45.306	\N	\N	\N	\N	\N	\N	\N
22027	45.188	\N	\N	\N	\N	\N	\N	\N
21742	45.122	\N	\N	\N	\N	\N	\N	\N
24671	45.946	\N	\N	\N	\N	\N	\N	\N
18114	44.245	\N	\N	\N	\N	\N	\N	\N
24014	45.741	\N	\N	\N	\N	\N	\N	\N
20410	44.804	\N	\N	\N	\N	\N	\N	\N
25282	46.147	\N	\N	\N	\N	\N	\N	\N
20894	44.915	\N	\N	\N	\N	\N	\N	\N
21384	45.033	\N	\N	\N	\N	\N	\N	\N
24470	45.877	\N	\N	\N	\N	\N	\N	\N
23087	45.465	\N	\N	\N	\N	\N	\N	\N
17482	44.063	\N	\N	\N	\N	\N	\N	\N
21499	45.061	\N	\N	\N	\N	\N	\N	\N
16885	43.880	\N	\N	\N	\N	\N	\N	\N
19683	44.641	\N	\N	\N	\N	\N	\N	\N
21390	45.035	\N	\N	\N	\N	\N	\N	\N
26311	46.601	\N	\N	\N	\N	\N	\N	\N
22686	45.354	\N	\N	\N	\N	\N	\N	\N
21914	45.163	\N	\N	\N	\N	\N	\N	\N
17346	44.014	\N	\N	\N	\N	\N	\N	\N
20931	44.925	\N	\N	\N	\N	\N	\N	\N
21626	45.092	\N	\N	\N	\N	\N	\N	\N
26516	46.714	\N	\N	\N	\N	\N	\N	\N
19023	44.473	\N	\N	\N	\N	\N	\N	\N
14743	42.795	\N	\N	\N	\N	\N	\N	\N
25833	46.376	\N	\N	\N	\N	\N	\N	\N
26661	46.808	\N	\N	\N	\N	\N	\N	\N
21212	44.989	\N	\N	\N	\N	\N	\N	\N
17278	43.992	\N	\N	\N	\N	\N	\N	\N
18715	44.396	\N	\N	\N	\N	\N	\N	\N
21377	45.031	\N	\N	\N	\N	\N	\N	\N
23813	45.678	\N	\N	\N	\N	\N	\N	\N
26730	46.851	\N	\N	\N	\N	\N	\N	\N
18142	44.252	\N	\N	\N	\N	\N	\N	\N
22902	45.415	\N	\N	\N	\N	\N	\N	\N
19041	44.477	\N	\N	\N	\N	\N	\N	\N
26078	46.488	\N	\N	\N	\N	\N	\N	\N
19030	44.475	\N	\N	\N	\N	\N	\N	\N
26982	47.026	\N	\N	\N	\N	\N	\N	\N
15806	43.499	\N	\N	\N	\N	\N	\N	\N
17126	43.951	\N	\N	\N	\N	\N	\N	\N
26253	46.572	\N	\N	\N	\N	\N	\N	\N
26655	46.803	\N	\N	\N	\N	\N	\N	\N
17063	43.934	\N	\N	\N	\N	\N	\N	\N
18759	44.405	\N	\N	\N	\N	\N	\N	\N
23960	45.723	\N	\N	\N	\N	\N	\N	\N
21237	44.995	\N	\N	\N	\N	\N	\N	\N
27149	47.148	\N	\N	\N	\N	\N	\N	\N
26936	46.995	\N	\N	\N	\N	\N	\N	\N
26876	46.957	\N	\N	\N	\N	\N	\N	\N
26264	46.575	\N	\N	\N	\N	\N	\N	\N
18615	44.371	\N	\N	\N	\N	\N	\N	\N
25736	46.327	\N	\N	\N	\N	\N	\N	\N
27256	47.231	\N	\N	\N	\N	\N	\N	\N
26899	46.975	\N	\N	\N	\N	\N	\N	\N
18309	44.293	\N	\N	\N	\N	\N	\N	\N
25853	46.386	\N	\N	\N	\N	\N	\N	\N
26117	46.504	\N	\N	\N	\N	\N	\N	\N
22302	45.257	\N	\N	\N	\N	\N	\N	\N
22328	45.266	\N	\N	\N	\N	\N	\N	\N
19505	44.593	\N	\N	\N	\N	\N	\N	\N
25894	46.403	\N	\N	\N	\N	\N	\N	\N
26513	46.714	\N	\N	\N	\N	\N	\N	\N
24598	45.918	\N	\N	\N	\N	\N	\N	\N
18992	44.465	\N	\N	\N	\N	\N	\N	\N
27189	47.177	\N	\N	\N	\N	\N	\N	\N
22743	45.372	\N	\N	\N	\N	\N	\N	\N
21755	45.125	\N	\N	\N	\N	\N	\N	\N
22864	45.403	\N	\N	\N	\N	\N	\N	\N
15004	43.053	\N	\N	\N	\N	\N	\N	\N
27316	47.281	\N	\N	\N	\N	\N	\N	\N
22721	45.364	\N	\N	\N	\N	\N	\N	\N
21433	45.045	\N	\N	\N	\N	\N	\N	\N
21230	44.993	\N	\N	\N	\N	\N	\N	\N
20708	44.877	\N	\N	\N	\N	\N	\N	\N
25939	46.423	\N	\N	\N	\N	\N	\N	\N
25106	46.091	\N	\N	\N	\N	\N	\N	\N
20313	44.781	\N	\N	\N	\N	\N	\N	\N
20499	44.827	\N	\N	\N	\N	\N	\N	\N
27103	47.120	\N	\N	\N	\N	\N	\N	\N
27565	47.578	\N	\N	\N	\N	\N	\N	\N
19274	44.537	\N	\N	\N	\N	\N	\N	\N
17723	44.133	\N	\N	\N	\N	\N	\N	\N
23748	45.657	\N	\N	\N	\N	\N	\N	\N
27052	47.070	\N	\N	\N	\N	\N	\N	\N
21177	44.978	\N	\N	\N	\N	\N	\N	\N
18394	44.313	\N	\N	\N	\N	\N	\N	\N
26626	46.782	\N	\N	\N	\N	\N	\N	\N
26887	46.967	\N	\N	\N	\N	\N	\N	\N
26608	46.775	\N	\N	\N	\N	\N	\N	\N
26500	46.705	\N	\N	\N	\N	\N	\N	\N
25291	46.150	\N	\N	\N	\N	\N	\N	\N
27300	47.264	\N	\N	\N	\N	\N	\N	\N
25676	46.298	\N	\N	\N	\N	\N	\N	\N
21298	45.007	\N	\N	\N	\N	\N	\N	\N
26793	46.898	\N	\N	\N	\N	\N	\N	\N
20608	44.849	\N	\N	\N	\N	\N	\N	\N
26971	47.018	\N	\N	\N	\N	\N	\N	\N
26482	46.697	\N	\N	\N	\N	\N	\N	\N
23938	45.717	\N	\N	\N	\N	\N	\N	\N
23148	45.480	\N	\N	\N	\N	\N	\N	\N
16694	43.819	\N	\N	\N	\N	\N	\N	\N
25171	46.112	\N	\N	\N	\N	\N	\N	\N
27348	47.317	\N	\N	\N	\N	\N	\N	\N
24430	45.864	\N	\N	\N	\N	\N	\N	\N
25231	46.129	\N	\N	\N	\N	\N	\N	\N
19347	44.554	\N	\N	\N	\N	\N	\N	\N
23390	45.549	\N	\N	\N	\N	\N	\N	\N
26063	46.481	\N	\N	\N	\N	\N	\N	\N
19005	44.469	\N	\N	\N	\N	\N	\N	\N
18376	44.309	\N	\N	\N	\N	\N	\N	\N
27873	48.100	\N	\N	\N	\N	\N	\N	\N
27437	47.410	\N	\N	\N	\N	\N	\N	\N
27651	47.717	\N	\N	\N	\N	\N	\N	\N
25285	46.148	\N	\N	\N	\N	\N	\N	\N
27164	47.155	\N	\N	\N	\N	\N	\N	\N
27000	47.033	\N	\N	\N	\N	\N	\N	\N
26751	46.868	\N	\N	\N	\N	\N	\N	\N
27906	48.181	\N	\N	\N	\N	\N	\N	\N
27613	47.657	\N	\N	\N	\N	\N	\N	\N
27072	47.091	\N	\N	\N	\N	\N	\N	\N
27639	47.697	\N	\N	\N	\N	\N	\N	\N
27650	47.712	\N	\N	\N	\N	\N	\N	\N
27151	47.149	\N	\N	\N	\N	\N	\N	\N
26799	46.901	\N	\N	\N	\N	\N	\N	\N
26291	46.592	\N	\N	\N	\N	\N	\N	\N
27411	47.375	\N	\N	\N	\N	\N	\N	\N
26737	46.856	\N	\N	\N	\N	\N	\N	\N
27808	47.992	\N	\N	\N	\N	\N	\N	\N
28005	48.490	\N	\N	\N	\N	\N	\N	\N
20828	44.901	\N	\N	\N	\N	\N	\N	\N
27825	48.027	\N	\N	\N	\N	\N	\N	\N
26710	46.835	\N	\N	\N	\N	\N	\N	\N
27447	47.417	\N	\N	\N	\N	\N	\N	\N
27229	47.203	\N	\N	\N	\N	\N	\N	\N
26108	46.500	\N	\N	\N	\N	\N	\N	\N
23796	45.671	\N	\N	\N	\N	\N	\N	\N
21950	45.171	\N	\N	\N	\N	\N	\N	\N
25766	46.342	\N	\N	\N	\N	\N	\N	\N
27241	47.219	\N	\N	\N	\N	\N	\N	\N
27932	48.287	\N	\N	\N	\N	\N	\N	\N
27951	48.337	\N	\N	\N	\N	\N	\N	\N
28007	48.502	\N	\N	\N	\N	\N	\N	\N
25998	46.452	\N	\N	\N	\N	\N	\N	\N
17377	44.026	\N	\N	\N	\N	\N	\N	\N
28099	48.848	\N	\N	\N	\N	\N	\N	\N
28085	48.779	\N	\N	\N	\N	\N	\N	\N
27950	48.336	\N	\N	\N	\N	\N	\N	\N
27956	48.344	\N	\N	\N	\N	\N	\N	\N
24959	46.039	\N	\N	\N	\N	\N	\N	\N
27985	48.453	\N	\N	\N	\N	\N	\N	\N
28126	48.972	\N	\N	\N	\N	\N	\N	\N
20739	44.882	\N	\N	\N	\N	\N	\N	\N
21231	44.993	\N	\N	\N	\N	\N	\N	\N
16319	43.695	\N	\N	\N	\N	\N	\N	\N
28041	48.604	\N	\N	\N	\N	\N	\N	\N
27959	48.350	\N	\N	\N	\N	\N	\N	\N
28107	48.891	\N	\N	\N	\N	\N	\N	\N
28111	48.908	\N	\N	\N	\N	\N	\N	\N
28006	48.499	\N	\N	\N	\N	\N	\N	\N
19320	44.548	\N	\N	\N	\N	\N	\N	\N
26056	46.478	\N	\N	\N	\N	\N	\N	\N
27266	47.236	\N	\N	\N	\N	\N	\N	\N
26687	46.825	\N	\N	\N	\N	\N	\N	\N
25809	46.360	\N	\N	\N	\N	\N	\N	\N
24851	46.008	\N	\N	\N	\N	\N	\N	\N
28179	49.213	\N	\N	\N	\N	\N	\N	\N
27037	47.062	\N	\N	\N	\N	\N	\N	\N
28187	49.265	\N	\N	\N	\N	\N	\N	\N
17950	44.199	\N	\N	\N	\N	\N	\N	\N
28022	48.544	\N	\N	\N	\N	\N	\N	\N
28198	49.326	\N	\N	\N	\N	\N	\N	\N
27999	48.472	\N	\N	\N	\N	\N	\N	\N
28132	49.016	\N	\N	\N	\N	\N	\N	\N
28203	49.341	\N	\N	\N	\N	\N	\N	\N
19536	44.602	\N	\N	\N	\N	\N	\N	\N
14589	42.486	\N	\N	\N	\N	\N	\N	\N
28137	49.038	\N	\N	\N	\N	\N	\N	\N
28217	49.417	\N	\N	\N	\N	\N	\N	\N
22986	45.436	\N	\N	\N	\N	\N	\N	\N
26684	46.823	\N	\N	\N	\N	\N	\N	\N
27328	47.294	\N	\N	\N	\N	\N	\N	\N
28114	48.920	\N	\N	\N	\N	\N	\N	\N
28176	49.194	\N	\N	\N	\N	\N	\N	\N
27456	47.431	\N	\N	\N	\N	\N	\N	\N
28175	49.189	\N	\N	\N	\N	\N	\N	\N
28240	49.515	\N	\N	\N	\N	\N	\N	\N
27850	48.063	\N	\N	\N	\N	\N	\N	\N
28275	49.796	\N	\N	\N	\N	\N	\N	\N
27944	48.328	\N	\N	\N	\N	\N	\N	\N
21111	44.963	\N	\N	\N	\N	\N	\N	\N
22758	45.379	\N	\N	\N	\N	\N	\N	\N
27927	48.272	\N	\N	\N	\N	\N	\N	\N
27273	47.243	\N	\N	\N	\N	\N	\N	\N
28285	49.879	\N	\N	\N	\N	\N	\N	\N
26770	46.879	\N	\N	\N	\N	\N	\N	\N
28247	49.602	\N	\N	\N	\N	\N	\N	\N
28299	50.044	\N	\N	\N	\N	\N	\N	\N
28163	49.145	\N	\N	\N	\N	\N	\N	\N
25229	46.129	\N	\N	\N	\N	\N	\N	\N
28295	49.968	\N	\N	\N	\N	\N	\N	\N
27744	47.874	\N	\N	\N	\N	\N	\N	\N
16678	43.815	\N	\N	\N	\N	\N	\N	\N
23004	45.442	\N	\N	\N	\N	\N	\N	\N
27347	47.315	\N	\N	\N	\N	\N	\N	\N
28328	50.408	\N	\N	\N	\N	\N	\N	\N
22183	45.230	\N	\N	\N	\N	\N	\N	\N
27991	48.457	\N	\N	\N	\N	\N	\N	\N
22599	45.333	\N	\N	\N	\N	\N	\N	\N
28303	50.064	\N	\N	\N	\N	\N	\N	\N
28174	49.189	\N	\N	\N	\N	\N	\N	\N
16402	43.723	\N	\N	\N	\N	\N	\N	\N
28341	50.537	\N	\N	\N	\N	\N	\N	\N
28343	50.591	\N	\N	\N	\N	\N	\N	\N
26918	46.989	\N	\N	\N	\N	\N	\N	\N
23234	45.505	\N	\N	\N	\N	\N	\N	\N
28287	49.909	\N	\N	\N	\N	\N	\N	\N
28211	49.384	\N	\N	\N	\N	\N	\N	\N
27739	47.867	\N	\N	\N	\N	\N	\N	\N
28326	50.357	\N	\N	\N	\N	\N	\N	\N
28316	50.250	\N	\N	\N	\N	\N	\N	\N
28312	50.195	\N	\N	\N	\N	\N	\N	\N
28375	51.018	\N	\N	\N	\N	\N	\N	\N
28283	49.853	\N	\N	\N	\N	\N	\N	\N
28361	50.832	\N	\N	\N	\N	\N	\N	\N
28354	50.720	\N	\N	\N	\N	\N	\N	\N
27617	47.662	\N	\N	\N	\N	\N	\N	\N
27977	48.414	\N	\N	\N	\N	\N	\N	\N
28195	49.311	\N	\N	\N	\N	\N	\N	\N
28400	51.355	\N	\N	\N	\N	\N	\N	\N
27994	48.463	\N	\N	\N	\N	\N	\N	\N
28405	51.372	\N	\N	\N	\N	\N	\N	\N
27552	47.554	\N	\N	\N	\N	\N	\N	\N
28223	49.441	\N	\N	\N	\N	\N	\N	\N
27420	47.382	\N	\N	\N	\N	\N	\N	\N
28318	50.260	\N	\N	\N	\N	\N	\N	\N
27922	48.258	\N	\N	\N	\N	\N	\N	\N
28424	51.684	\N	\N	\N	\N	\N	\N	\N
28428	51.772	\N	\N	\N	\N	\N	\N	\N
28332	50.413	\N	\N	\N	\N	\N	\N	\N
28433	51.869	\N	\N	\N	\N	\N	\N	\N
28152	49.093	\N	\N	\N	\N	\N	\N	\N
28387	51.191	\N	\N	\N	\N	\N	\N	\N
18300	44.290	\N	\N	\N	\N	\N	\N	\N
19424	44.571	\N	\N	\N	\N	\N	\N	\N
27823	48.025	\N	\N	\N	\N	\N	\N	\N
28346	50.614	\N	\N	\N	\N	\N	\N	\N
27882	48.124	\N	\N	\N	\N	\N	\N	\N
28413	51.507	\N	\N	\N	\N	\N	\N	\N
27232	47.210	\N	\N	\N	\N	\N	\N	\N
28321	50.311	\N	\N	\N	\N	\N	\N	\N
28463	52.568	\N	\N	\N	\N	\N	\N	\N
26839	46.925	\N	\N	\N	\N	\N	\N	\N
28409	51.453	\N	\N	\N	\N	\N	\N	\N
28458	52.395	\N	\N	\N	\N	\N	\N	\N
18519	44.344	\N	\N	\N	\N	\N	\N	\N
28471	52.903	\N	\N	\N	\N	\N	\N	\N
28483	53.397	\N	\N	\N	\N	\N	\N	\N
28395	51.270	\N	\N	\N	\N	\N	\N	\N
14967	43.027	\N	\N	\N	\N	\N	\N	\N
28431	51.823	\N	\N	\N	\N	\N	\N	\N
28462	52.537	\N	\N	\N	\N	\N	\N	\N
14644	42.639	\N	\N	\N	\N	\N	\N	\N
28492	53.597	\N	\N	\N	\N	\N	\N	\N
28493	53.632	\N	\N	\N	\N	\N	\N	\N
28082	48.769	\N	\N	\N	\N	\N	\N	\N
14754	42.807	\N	\N	\N	\N	\N	\N	\N
28510	54.198	\N	\N	\N	\N	\N	\N	\N
14751	42.803	\N	\N	\N	\N	\N	\N	\N
28495	53.704	\N	\N	\N	\N	\N	\N	\N
28484	53.435	\N	\N	\N	\N	\N	\N	\N
26662	46.808	\N	\N	\N	\N	\N	\N	\N
23457	45.566	\N	\N	\N	\N	\N	\N	\N
28536	55.109	\N	\N	\N	\N	\N	\N	\N
14862	42.941	\N	\N	\N	\N	\N	\N	\N
28475	53.093	\N	\N	\N	\N	\N	\N	\N
22463	45.302	\N	\N	\N	\N	\N	\N	\N
14874	42.954	\N	\N	\N	\N	\N	\N	\N
28401	51.358	\N	\N	\N	\N	\N	\N	\N
28448	52.243	\N	\N	\N	\N	\N	\N	\N
28371	50.906	\N	\N	\N	\N	\N	\N	\N
15078	43.117	\N	\N	\N	\N	\N	\N	\N
28550	55.869	\N	\N	\N	\N	\N	\N	\N
27564	47.574	\N	\N	\N	\N	\N	\N	\N
22508	45.312	\N	\N	\N	\N	\N	\N	\N
14830	42.898	\N	\N	\N	\N	\N	\N	\N
25742	46.330	\N	\N	\N	\N	\N	\N	\N
18000	44.213	\N	\N	\N	\N	\N	\N	\N
14950	43.019	\N	\N	\N	\N	\N	\N	\N
28455	52.346	\N	\N	\N	\N	\N	\N	\N
28557	56.080	\N	\N	\N	\N	\N	\N	\N
25111	46.093	\N	\N	\N	\N	\N	\N	\N
14565	42.416	\N	\N	\N	\N	\N	\N	\N
28609	57.924	\N	\N	\N	\N	\N	\N	\N
25619	46.275	\N	\N	\N	\N	\N	\N	\N
15696	43.450	\N	\N	\N	\N	\N	\N	\N
15012	43.063	\N	\N	\N	\N	\N	\N	\N
28622	58.795	\N	\N	\N	\N	\N	\N	\N
22140	45.216	\N	\N	\N	\N	\N	\N	\N
14590	42.486	\N	\N	\N	\N	\N	\N	\N
23763	45.660	\N	\N	\N	\N	\N	\N	\N
22098	45.206	\N	\N	\N	\N	\N	\N	\N
25561	46.254	\N	\N	\N	\N	\N	\N	\N
24658	45.940	\N	\N	\N	\N	\N	\N	\N
25760	46.339	\N	\N	\N	\N	\N	\N	\N
17984	44.208	\N	\N	\N	\N	\N	\N	\N
24134	45.777	\N	\N	\N	\N	\N	\N	\N
18845	44.428	\N	\N	\N	\N	\N	\N	\N
28670	60.742	\N	\N	\N	\N	\N	\N	\N
21521	45.068	\N	\N	\N	\N	\N	\N	\N
19942	44.701	\N	\N	\N	\N	\N	\N	\N
14935	43.000	\N	\N	\N	\N	\N	\N	\N
16364	43.711	\N	\N	\N	\N	\N	\N	\N
17456	44.051	\N	\N	\N	\N	\N	\N	\N
24922	46.025	\N	\N	\N	\N	\N	\N	\N
19391	44.562	\N	\N	\N	\N	\N	\N	\N
26721	46.843	\N	\N	\N	\N	\N	\N	\N
27429	47.397	\N	\N	\N	\N	\N	\N	\N
23782	45.666	\N	\N	\N	\N	\N	\N	\N
28720	62.269	\N	\N	\N	\N	\N	\N	\N
15248	43.228	\N	\N	\N	\N	\N	\N	\N
18834	44.425	\N	\N	\N	\N	\N	\N	\N
16759	43.839	\N	\N	\N	\N	\N	\N	\N
28732	62.682	\N	\N	\N	\N	\N	\N	\N
28737	62.944	\N	\N	\N	\N	\N	\N	\N
25438	46.205	\N	\N	\N	\N	\N	\N	\N
21467	45.052	\N	\N	\N	\N	\N	\N	\N
18709	44.394	\N	\N	\N	\N	\N	\N	\N
21551	45.075	\N	\N	\N	\N	\N	\N	\N
17699	44.124	\N	\N	\N	\N	\N	\N	\N
18260	44.279	\N	\N	\N	\N	\N	\N	\N
28324	50.340	\N	\N	\N	\N	\N	\N	\N
14890	42.964	\N	\N	\N	\N	\N	\N	\N
28241	49.521	\N	\N	\N	\N	\N	\N	\N
27646	47.708	\N	\N	\N	\N	\N	\N	\N
24074	45.758	\N	\N	\N	\N	\N	\N	\N
23305	45.524	\N	\N	\N	\N	\N	\N	\N
28771	63.959	\N	\N	\N	\N	\N	\N	\N
23850	45.688	\N	\N	\N	\N	\N	\N	\N
24349	45.837	\N	\N	\N	\N	\N	\N	\N
17856	44.173	\N	\N	\N	\N	\N	\N	\N
16029	43.590	\N	\N	\N	\N	\N	\N	\N
26573	46.755	\N	\N	\N	\N	\N	\N	\N
18453	44.323	\N	\N	\N	\N	\N	\N	\N
23777	45.664	\N	\N	\N	\N	\N	\N	\N
21592	45.086	\N	\N	\N	\N	\N	\N	\N
14769	42.829	\N	\N	\N	\N	\N	\N	\N
25681	46.300	\N	\N	\N	\N	\N	\N	\N
15964	43.564	\N	\N	\N	\N	\N	\N	\N
24666	45.943	\N	\N	\N	\N	\N	\N	\N
28566	56.364	\N	\N	\N	\N	\N	\N	\N
19265	44.533	\N	\N	\N	\N	\N	\N	\N
15548	43.386	\N	\N	\N	\N	\N	\N	\N
15776	43.486	\N	\N	\N	\N	\N	\N	\N
14791	42.857	\N	\N	\N	\N	\N	\N	\N
20072	44.727	\N	\N	\N	\N	\N	\N	\N
27133	47.136	\N	\N	\N	\N	\N	\N	\N
26940	47.000	\N	\N	\N	\N	\N	\N	\N
25848	46.382	\N	\N	\N	\N	\N	\N	\N
14660	42.665	\N	\N	\N	\N	\N	\N	\N
16772	43.843	\N	\N	\N	\N	\N	\N	\N
28372	50.931	\N	\N	\N	\N	\N	\N	\N
20155	44.747	\N	\N	\N	\N	\N	\N	\N
15487	43.355	\N	\N	\N	\N	\N	\N	\N
14536	41.416	\N	\N	\N	\N	\N	\N	\N
23386	45.548	\N	\N	\N	\N	\N	\N	\N
14908	42.980	\N	\N	\N	\N	\N	\N	\N
24824	45.997	\N	\N	\N	\N	\N	\N	\N
18494	44.338	\N	\N	\N	\N	\N	\N	\N
15531	43.378	\N	\N	\N	\N	\N	\N	\N
14636	42.613	\N	\N	\N	\N	\N	\N	\N
22266	45.249	\N	\N	\N	\N	\N	\N	\N
17193	43.971	\N	\N	\N	\N	\N	\N	\N
17545	44.081	\N	\N	\N	\N	\N	\N	\N
17175	43.967	\N	\N	\N	\N	\N	\N	\N
15353	43.281	\N	\N	\N	\N	\N	\N	\N
20947	44.930	\N	\N	\N	\N	\N	\N	\N
14761	42.819	\N	\N	\N	\N	\N	\N	\N
17766	44.144	\N	\N	\N	\N	\N	\N	\N
20541	44.837	\N	\N	\N	\N	\N	\N	\N
15366	43.293	\N	\N	\N	\N	\N	\N	\N
14599	42.516	\N	\N	\N	\N	\N	\N	\N
15197	43.198	\N	\N	\N	\N	\N	\N	\N
14576	42.453	\N	\N	\N	\N	\N	\N	\N
27846	48.060	\N	\N	\N	\N	\N	\N	\N
15110	43.140	\N	\N	\N	\N	\N	\N	\N
14910	42.982	\N	\N	\N	\N	\N	\N	\N
21756	45.125	\N	\N	\N	\N	\N	\N	\N
28923	70.590	\N	\N	\N	\N	\N	\N	\N
17391	44.030	\N	\N	\N	\N	\N	\N	\N
28764	63.721	\N	\N	\N	\N	\N	\N	\N
28087	48.784	\N	\N	\N	\N	\N	\N	\N
28181	49.215	\N	\N	\N	\N	\N	\N	\N
14616	42.566	\N	\N	\N	\N	\N	\N	\N
18503	44.340	\N	\N	\N	\N	\N	\N	\N
15201	43.199	\N	\N	\N	\N	\N	\N	\N
18973	44.462	\N	\N	\N	\N	\N	\N	\N
25031	46.060	\N	\N	\N	\N	\N	\N	\N
24453	45.872	\N	\N	\N	\N	\N	\N	\N
18784	44.413	\N	\N	\N	\N	\N	\N	\N
18071	44.235	\N	\N	\N	\N	\N	\N	\N
14543	42.094	\N	\N	\N	\N	\N	\N	\N
14744	42.795	\N	\N	\N	\N	\N	\N	\N
17097	43.944	\N	\N	\N	\N	\N	\N	\N
16751	43.836	\N	\N	\N	\N	\N	\N	\N
28261	49.684	\N	\N	\N	\N	\N	\N	\N
19935	44.698	\N	\N	\N	\N	\N	\N	\N
18307	44.292	\N	\N	\N	\N	\N	\N	\N
22530	45.316	\N	\N	\N	\N	\N	\N	\N
20630	44.855	\N	\N	\N	\N	\N	\N	\N
14738	42.792	\N	\N	\N	\N	\N	\N	\N
28570	56.531	\N	\N	\N	\N	\N	\N	\N
21873	45.153	\N	\N	\N	\N	\N	\N	\N
17303	44.000	\N	\N	\N	\N	\N	\N	\N
22013	45.185	\N	\N	\N	\N	\N	\N	\N
15924	43.546	\N	\N	\N	\N	\N	\N	\N
15136	43.149	\N	\N	\N	\N	\N	\N	\N
17023	43.923	\N	\N	\N	\N	\N	\N	\N
18860	44.432	\N	\N	\N	\N	\N	\N	\N
28981	72.967	\N	\N	\N	\N	\N	\N	\N
14566	42.418	\N	\N	\N	\N	\N	\N	\N
16900	43.883	\N	\N	\N	\N	\N	\N	\N
15064	43.104	\N	\N	\N	\N	\N	\N	\N
18673	44.385	\N	\N	\N	\N	\N	\N	\N
14992	43.046	\N	\N	\N	\N	\N	\N	\N
16554	43.774	\N	\N	\N	\N	\N	\N	\N
19985	44.709	\N	\N	\N	\N	\N	\N	\N
14557	42.377	\N	\N	\N	\N	\N	\N	\N
17656	44.113	\N	\N	\N	\N	\N	\N	\N
15325	43.267	\N	\N	\N	\N	\N	\N	\N
17740	44.138	\N	\N	\N	\N	\N	\N	\N
26045	46.473	\N	\N	\N	\N	\N	\N	\N
15115	43.141	\N	\N	\N	\N	\N	\N	\N
16446	43.736	\N	\N	\N	\N	\N	\N	\N
19953	44.703	\N	\N	\N	\N	\N	\N	\N
17430	44.041	\N	\N	\N	\N	\N	\N	\N
20439	44.813	\N	\N	\N	\N	\N	\N	\N
24395	45.853	\N	\N	\N	\N	\N	\N	\N
19206	44.515	\N	\N	\N	\N	\N	\N	\N
22765	45.380	\N	\N	\N	\N	\N	\N	\N
15163	43.176	\N	\N	\N	\N	\N	\N	\N
14732	42.787	\N	\N	\N	\N	\N	\N	\N
28611	57.994	\N	\N	\N	\N	\N	\N	\N
20997	44.938	\N	\N	\N	\N	\N	\N	\N
16392	43.720	\N	\N	\N	\N	\N	\N	\N
14572	42.440	\N	\N	\N	\N	\N	\N	\N
14581	42.464	\N	\N	\N	\N	\N	\N	\N
20265	44.771	\N	\N	\N	\N	\N	\N	\N
15402	43.317	\N	\N	\N	\N	\N	\N	\N
14677	42.692	\N	\N	\N	\N	\N	\N	\N
14573	42.441	\N	\N	\N	\N	\N	\N	\N
27156	47.150	\N	\N	\N	\N	\N	\N	\N
16672	43.814	\N	\N	\N	\N	\N	\N	\N
14749	42.800	\N	\N	\N	\N	\N	\N	\N
27146	47.147	\N	\N	\N	\N	\N	\N	\N
16202	43.650	\N	\N	\N	\N	\N	\N	\N
19382	44.561	\N	\N	\N	\N	\N	\N	\N
15114	43.141	\N	\N	\N	\N	\N	\N	\N
14629	42.603	\N	\N	\N	\N	\N	\N	\N
23409	45.553	\N	\N	\N	\N	\N	\N	\N
22965	45.431	\N	\N	\N	\N	\N	\N	\N
17402	44.033	\N	\N	\N	\N	\N	\N	\N
14989	43.042	\N	\N	\N	\N	\N	\N	\N
23700	45.641	\N	\N	\N	\N	\N	\N	\N
20471	44.819	\N	\N	\N	\N	\N	\N	\N
17696	44.124	\N	\N	\N	\N	\N	\N	\N
15938	43.553	\N	\N	\N	\N	\N	\N	\N
21426	45.043	\N	\N	\N	\N	\N	\N	\N
14551	42.330	\N	\N	\N	\N	\N	\N	\N
15934	43.551	\N	\N	\N	\N	\N	\N	\N
21497	45.061	\N	\N	\N	\N	\N	\N	\N
25225	46.128	\N	\N	\N	\N	\N	\N	\N
17427	44.041	\N	\N	\N	\N	\N	\N	\N
27576	47.599	\N	\N	\N	\N	\N	\N	\N
15155	43.166	\N	\N	\N	\N	\N	\N	\N
20712	44.877	\N	\N	\N	\N	\N	\N	\N
29076	81.177	\N	\N	\N	\N	\N	\N	\N
17212	43.976	\N	\N	\N	\N	\N	\N	\N
15328	43.269	\N	\N	\N	\N	\N	\N	\N
18499	44.339	\N	\N	\N	\N	\N	\N	\N
29083	81.932	\N	\N	\N	\N	\N	\N	\N
18911	44.445	\N	\N	\N	\N	\N	\N	\N
15741	43.471	\N	\N	\N	\N	\N	\N	\N
15101	43.129	\N	\N	\N	\N	\N	\N	\N
15133	43.148	\N	\N	\N	\N	\N	\N	\N
28161	49.136	\N	\N	\N	\N	\N	\N	\N
14559	42.384	\N	\N	\N	\N	\N	\N	\N
16584	43.785	\N	\N	\N	\N	\N	\N	\N
16055	43.597	\N	\N	\N	\N	\N	\N	\N
28140	49.045	\N	\N	\N	\N	\N	\N	\N
21470	45.053	\N	\N	\N	\N	\N	\N	\N
18868	44.435	\N	\N	\N	\N	\N	\N	\N
16368	43.713	\N	\N	\N	\N	\N	\N	\N
27858	48.073	\N	\N	\N	\N	\N	\N	\N
15685	43.447	\N	\N	\N	\N	\N	\N	\N
28186	49.260	\N	\N	\N	\N	\N	\N	\N
15166	43.178	\N	\N	\N	\N	\N	\N	\N
14539	41.936	\N	\N	\N	\N	\N	\N	\N
14606	42.536	\N	\N	\N	\N	\N	\N	\N
28094	48.828	\N	\N	\N	\N	\N	\N	\N
14552	42.335	\N	\N	\N	\N	\N	\N	\N
27055	47.073	\N	\N	\N	\N	\N	\N	\N
14564	42.411	\N	\N	\N	\N	\N	\N	\N
15465	43.348	\N	\N	\N	\N	\N	\N	\N
21007	44.940	\N	\N	\N	\N	\N	\N	\N
14605	42.530	\N	\N	\N	\N	\N	\N	\N
18787	44.414	\N	\N	\N	\N	\N	\N	\N
24294	45.824	\N	\N	\N	\N	\N	\N	\N
19203	44.515	\N	\N	\N	\N	\N	\N	\N
15178	43.184	\N	\N	\N	\N	\N	\N	\N
17749	44.140	\N	\N	\N	\N	\N	\N	\N
18120	44.247	\N	\N	\N	\N	\N	\N	\N
18211	44.266	\N	\N	\N	\N	\N	\N	\N
18801	44.417	\N	\N	\N	\N	\N	\N	\N
15013	43.064	\N	\N	\N	\N	\N	\N	\N
20657	44.862	\N	\N	\N	\N	\N	\N	\N
15652	43.429	\N	\N	\N	\N	\N	\N	\N
15003	43.053	\N	\N	\N	\N	\N	\N	\N
19562	44.609	\N	\N	\N	\N	\N	\N	\N
14542	42.033	\N	\N	\N	\N	\N	\N	\N
19878	44.684	\N	\N	\N	\N	\N	\N	\N
15547	43.386	\N	\N	\N	\N	\N	\N	\N
14871	42.953	\N	\N	\N	\N	\N	\N	\N
14597	42.504	\N	\N	\N	\N	\N	\N	\N
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
\.


--
-- Name: skaters_skater_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skaters_skater_id_seq', 29833, true);


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

