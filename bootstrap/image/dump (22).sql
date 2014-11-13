--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- Name: tb_grade; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_grade (
    id bigint NOT NULL,
    kd_grade character varying(20) NOT NULL,
    kd_nama character varying(30) NOT NULL,
    modified timestamp without time zone DEFAULT now()
);


ALTER TABLE public.tb_grade OWNER TO postgres;

--
-- Name: kd_grade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE kd_grade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kd_grade_id_seq OWNER TO postgres;

--
-- Name: kd_grade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE kd_grade_id_seq OWNED BY tb_grade.id;


SET default_with_oids = false;

--
-- Name: tb_agama; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_agama (
    kd_agama smallint NOT NULL,
    agama_name character varying(30) NOT NULL,
    modified timestamp without time zone DEFAULT now(),
    id bigint NOT NULL
);


ALTER TABLE public.tb_agama OWNER TO postgres;

--
-- Name: tb_agama_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tb_agama_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_agama_id_seq OWNER TO postgres;

--
-- Name: tb_agama_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tb_agama_id_seq OWNED BY tb_agama.id;


SET default_with_oids = true;

--
-- Name: tb_departemen; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_departemen (
    id bigint NOT NULL,
    kd_departemen character varying(20) NOT NULL,
    nama_departemen character varying(40) NOT NULL,
    modified timestamp without time zone
);


ALTER TABLE public.tb_departemen OWNER TO postgres;

--
-- Name: tb_departemen_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tb_departemen_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_departemen_id_seq OWNER TO postgres;

--
-- Name: tb_departemen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tb_departemen_id_seq OWNED BY tb_departemen.id;


SET default_with_oids = false;

--
-- Name: tb_divisi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_divisi (
    id bigint NOT NULL,
    kd_divisi character varying(20) NOT NULL,
    kd_nama character varying(150) NOT NULL,
    modified timestamp without time zone DEFAULT now()
);


ALTER TABLE public.tb_divisi OWNER TO postgres;

--
-- Name: tb_divisi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tb_divisi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_divisi_id_seq OWNER TO postgres;

--
-- Name: tb_divisi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tb_divisi_id_seq OWNED BY tb_divisi.id;


SET default_with_oids = true;

--
-- Name: tb_item; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_item (
    item_id character varying NOT NULL,
    item_nama character varying(200) NOT NULL,
    item_harga double precision NOT NULL,
    item_stok double precision NOT NULL,
    item_tgl_lastadd date NOT NULL
);


ALTER TABLE public.tb_item OWNER TO postgres;

--
-- Name: tb_itemreq; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_itemreq (
    id_req bigint NOT NULL,
    item_id character varying(20) NOT NULL,
    item_qty double precision NOT NULL,
    nik character varying(30) NOT NULL,
    tgl_req date NOT NULL
);


ALTER TABLE public.tb_itemreq OWNER TO postgres;

--
-- Name: tb_itemreq_id_req_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tb_itemreq_id_req_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_itemreq_id_req_seq OWNER TO postgres;

--
-- Name: tb_itemreq_id_req_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tb_itemreq_id_req_seq OWNED BY tb_itemreq.id_req;


--
-- Name: tb_jabatan; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_jabatan (
    id bigint NOT NULL,
    kd_jabatan character varying(35) NOT NULL,
    kd_nama character varying(40) NOT NULL,
    modified timestamp without time zone DEFAULT now()
);


ALTER TABLE public.tb_jabatan OWNER TO postgres;

--
-- Name: tb_jabatan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tb_jabatan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_jabatan_id_seq OWNER TO postgres;

--
-- Name: tb_jabatan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tb_jabatan_id_seq OWNED BY tb_jabatan.id;


SET default_with_oids = false;

--
-- Name: tb_karyawan; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_karyawan (
    nik character(12) NOT NULL,
    nama_karyawan character varying(50) NOT NULL,
    npwp character(25),
    tmpt_lahir character varying(50),
    tgl_lahir date NOT NULL,
    alamat text,
    no_astek character(20),
    status_nikah character(2),
    jk character(1),
    tanggungan integer,
    tgl_masuk date NOT NULL,
    status integer,
    gambar character varying(50),
    kd_divisi bigint,
    kd_grade bigint,
    emergency_nama character varying(50),
    emergency_alamat character varying(50),
    emergency_hubungan character varying(50),
    emergency_phone character varying(50),
    kd_transport bigint,
    tinggi character(50),
    berat character varying(20),
    gol_darah character varying(20),
    tgl_kontrak date,
    jamsostek_start date,
    jamsostek_finish character varying,
    pukfspmi_start date,
    pukfspmi_finish date,
    no_asuransi character varying(50),
    no_paspor character varying(50),
    id bigint NOT NULL,
    kd_jabatan bigint,
    status_kary character varying(1),
    kd_pendidikan bigint,
    kd_agama bigint,
    kd_departemen bigint
);


ALTER TABLE public.tb_karyawan OWNER TO postgres;

--
-- Name: tb_karyawan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tb_karyawan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_karyawan_id_seq OWNER TO postgres;

--
-- Name: tb_karyawan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tb_karyawan_id_seq OWNED BY tb_karyawan.id;


SET default_with_oids = true;

--
-- Name: tb_level; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_level (
    level_id integer NOT NULL,
    level_name character varying(30)
);


ALTER TABLE public.tb_level OWNER TO postgres;

--
-- Name: tb_menu; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_menu (
    menu_id bigint NOT NULL,
    menu_nama character varying(200) NOT NULL,
    menu_uri character varying(200) NOT NULL,
    menu_allowed character varying(200) NOT NULL,
    id_item bigint
);


ALTER TABLE public.tb_menu OWNER TO postgres;

--
-- Name: tb_menu_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tb_menu_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_menu_menu_id_seq OWNER TO postgres;

--
-- Name: tb_menu_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tb_menu_menu_id_seq OWNED BY tb_menu.menu_id;


SET default_with_oids = false;

--
-- Name: tb_pendidikan; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_pendidikan (
    id bigint NOT NULL,
    kd_pendidikan character varying(20) NOT NULL,
    pendidikan_name character varying(30) NOT NULL,
    modified timestamp without time zone DEFAULT now()
);


ALTER TABLE public.tb_pendidikan OWNER TO postgres;

--
-- Name: tb_pendidikan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tb_pendidikan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_pendidikan_id_seq OWNER TO postgres;

--
-- Name: tb_pendidikan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tb_pendidikan_id_seq OWNED BY tb_pendidikan.id;


--
-- Name: tb_transport; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_transport (
    id bigint NOT NULL,
    kd_transport character varying NOT NULL,
    transport_name character varying(30) NOT NULL,
    modified timestamp without time zone DEFAULT now(),
    tunj_transport double precision
);


ALTER TABLE public.tb_transport OWNER TO postgres;

--
-- Name: tb_transport_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tb_transport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_transport_id_seq OWNER TO postgres;

--
-- Name: tb_transport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tb_transport_id_seq OWNED BY tb_transport.id;


SET default_with_oids = true;

--
-- Name: tb_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tb_user (
    user_id bigint NOT NULL,
    user_nama character varying(30) NOT NULL,
    user_username character varying(30) NOT NULL,
    user_password character varying(100) NOT NULL,
    user_level integer NOT NULL
);


ALTER TABLE public.tb_user OWNER TO postgres;

--
-- Name: tb_user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tb_user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_user_user_id_seq OWNER TO postgres;

--
-- Name: tb_user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tb_user_user_id_seq OWNED BY tb_user.user_id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_agama ALTER COLUMN id SET DEFAULT nextval('tb_agama_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_departemen ALTER COLUMN id SET DEFAULT nextval('tb_departemen_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_divisi ALTER COLUMN id SET DEFAULT nextval('tb_divisi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_grade ALTER COLUMN id SET DEFAULT nextval('kd_grade_id_seq'::regclass);


--
-- Name: id_req; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_itemreq ALTER COLUMN id_req SET DEFAULT nextval('tb_itemreq_id_req_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_jabatan ALTER COLUMN id SET DEFAULT nextval('tb_jabatan_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_karyawan ALTER COLUMN id SET DEFAULT nextval('tb_karyawan_id_seq'::regclass);


--
-- Name: menu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_menu ALTER COLUMN menu_id SET DEFAULT nextval('tb_menu_menu_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_pendidikan ALTER COLUMN id SET DEFAULT nextval('tb_pendidikan_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_transport ALTER COLUMN id SET DEFAULT nextval('tb_transport_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_user ALTER COLUMN user_id SET DEFAULT nextval('tb_user_user_id_seq'::regclass);


--
-- Name: kd_grade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('kd_grade_id_seq', 98, true);


--
-- Data for Name: tb_agama; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_agama (kd_agama, agama_name, modified, id) FROM stdin;
1	Islam	2014-05-14 10:06:15.025167	1
2	Katolik	2014-05-19 08:22:34.308374	2
3	Protestan	2014-05-19 08:22:40.711128	3
4	Hindu	2014-05-19 08:22:47.270094	4
5	Budha	2014-05-19 08:22:52.050643	5
\.


--
-- Name: tb_agama_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tb_agama_id_seq', 5, true);


--
-- Data for Name: tb_departemen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_departemen (id, kd_departemen, nama_departemen, modified) FROM stdin;
1	BOD	BOD	2014-05-22 08:02:12.963385
2	FNC	FINANCE & ACCOUNTING	2014-05-22 08:03:06.524888
3	PROD	PRODUKSI	2014-05-22 08:03:31.333348
4	PCH	PURCHASING	2014-05-22 08:03:41.837178
5	MKT	MARKETING	2014-05-22 08:03:51.517283
6	ENG	ENGGINERING	2014-05-22 08:04:02.924548
7	PGA	PGA	2014-05-22 08:04:14.35617
\.


--
-- Name: tb_departemen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tb_departemen_id_seq', 7, true);


--
-- Data for Name: tb_divisi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_divisi (id, kd_divisi, kd_nama, modified) FROM stdin;
30	DRV	DRV	2014-05-19 08:07:39.567987
31	DWG	DWG	2014-05-19 08:07:39.567987
32	ENG	ENG	2014-05-19 08:07:39.567987
33	FIN	FIN	2014-05-19 08:07:39.567987
34	GAF	GAF	2014-05-19 08:07:39.567987
35	GFH	GFH	2014-05-19 08:07:39.567987
36	GFS	GFS	2014-05-19 08:07:39.567987
37	GIF	GIF	2014-05-19 08:07:39.567987
38	GPR	GPR	2014-05-19 08:07:39.567987
39	GRF	GRF	2014-05-19 08:07:39.567987
40	GZP	GZP	2014-05-19 08:07:39.567987
41	LAP	LAP	2014-05-19 08:07:39.567987
42	MIF	MIF	2014-05-19 08:07:39.567987
43	MIS	MIS	2014-05-19 08:07:39.567987
44	MKT	MKT	2014-05-19 08:07:39.567987
45	MTC	MTC	2014-05-19 08:07:39.567987
46	OBY	OBY	2014-05-19 08:07:39.567987
47	OSD	OSD	2014-05-19 08:07:39.567987
48	PCH	PCH	2014-05-19 08:07:39.567987
49	PGA	PGA	2014-05-19 08:07:39.567987
50	PPC	PPC	2014-05-19 08:07:39.567987
51	PRO	PRO	2014-05-19 08:07:39.567987
52	QCD	QCD	2014-05-19 08:07:39.567987
53	QCDD	QCDD	2014-05-19 08:07:39.567987
54	REP	REP	2014-05-19 08:07:39.567987
55	SLS	SLS	2014-05-19 08:07:39.567987
56	WBR	WBR	2014-05-19 08:07:39.567987
\.


--
-- Name: tb_divisi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tb_divisi_id_seq', 56, true);


--
-- Data for Name: tb_grade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_grade (id, kd_grade, kd_nama, modified) FROM stdin;
65	C	C	2014-05-19 08:23:59.654025
66	C1	C1	2014-05-19 08:23:59.654025
67	IA-4	IA-4	2014-05-19 08:23:59.654025
68	IA-5	IA-5	2014-05-19 08:23:59.654025
69	IA-6	IA-6	2014-05-19 08:23:59.654025
70	IA-7	IA-7	2014-05-19 08:23:59.654025
71	IA-8	IA-8	2014-05-19 08:23:59.654025
72	IIA-1	IIA-1	2014-05-19 08:23:59.654025
73	IIA-2	IIA-2	2014-05-19 08:23:59.654025
74	IIA-3	IIA-3	2014-05-19 08:23:59.654025
75	IIA-4	IIA-4	2014-05-19 08:23:59.654025
76	IIA-5	IIA-5	2014-05-19 08:23:59.654025
77	IIA-6	IIA-6	2014-05-19 08:23:59.654025
78	IIIA-1	IIIA-1	2014-05-19 08:23:59.654025
79	IIIA-10	IIIA-10	2014-05-19 08:23:59.654025
80	IIIA-11	IIIA-11	2014-05-19 08:23:59.654025
81	IIIA-2	IIIA-2	2014-05-19 08:23:59.654025
82	IIIA-3	IIIA-3	2014-05-19 08:23:59.654025
83	IIIA-4	IIIA-4	2014-05-19 08:23:59.654025
84	IIIA-5	IIIA-5	2014-05-19 08:23:59.654025
85	IIIA-6	IIIA-6	2014-05-19 08:23:59.654025
86	IIIA-7	IIIA-7	2014-05-19 08:23:59.654025
87	IIIA-8	IIIA-8	2014-05-19 08:23:59.654025
88	IIIA-9	IIIA-9	2014-05-19 08:23:59.654025
89	IVA-1	IVA-1	2014-05-19 08:23:59.654025
90	IVA-4	IVA-4	2014-05-19 08:23:59.654025
91	IVA-7	IVA-7	2014-05-19 08:23:59.654025
92	VA-1	VA-1	2014-05-19 08:23:59.654025
93	VIA-1	VIA-1	2014-05-19 08:23:59.654025
94	VIA-2	VIA-2	2014-05-19 08:23:59.654025
95	VIA-3	VIA-3	2014-05-19 08:23:59.654025
96	VIIA-1	VIIA-1	2014-05-19 08:23:59.654025
\.


--
-- Data for Name: tb_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_item (item_id, item_nama, item_harga, item_stok, item_tgl_lastadd) FROM stdin;
002	Lakban Kecil	3200	8	2014-05-12
004	Kerupuk	2500	12	2014-05-11
001	Tisu Toilet	3200	13	2014-05-12
006	Penjepit Kertas	2100	20	2014-05-22
\.


--
-- Data for Name: tb_itemreq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_itemreq (id_req, item_id, item_qty, nik, tgl_req) FROM stdin;
4	001	2	98888	2014-05-16
5	001	1	121209977667	2014-05-20
6	002	4	10011	2014-05-20
1	001	2	12300022	2014-05-11
7	001	3	0123w12	2014-05-20
8	006	12	11312557    	2014-05-22
\.


--
-- Name: tb_itemreq_id_req_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tb_itemreq_id_req_seq', 8, true);


--
-- Data for Name: tb_jabatan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_jabatan (id, kd_jabatan, kd_nama, modified) FROM stdin;
18	ADM	ADM	2014-05-19 08:20:05.298638
19	AFR	ASS. FOREMAN	2014-05-19 08:20:05.298638
20	AGM	ASS. GENERAL MANAGER	2014-05-19 08:20:05.298638
21	ALD	ASS. LEADER	2014-05-19 08:20:05.298638
22	AMG	ASS. MANAGER	2014-05-19 08:20:05.298638
23	AFR	ASS.FOREMAN	2014-05-19 08:20:05.298638
24	ASP	ASS.SUPERVISOR	2014-05-19 08:20:05.298638
25	CFR	CHIEF FOREMAN	2014-05-19 08:20:05.298638
26	CSP	CHIEF SUPERVISOR	2014-05-19 08:20:05.298638
27	FRM	FOREMAN	2014-05-19 08:20:05.298638
28	LDR	LEADER	2014-05-19 08:20:05.298638
29	MGR	MANAGER	2014-05-19 08:20:05.298638
30	OPR	OPERATOR	2014-05-19 08:20:05.298638
31	SLS	SLS	2014-05-19 08:20:05.298638
32	STF	STAFF	2014-05-19 08:20:05.298638
33	SPV	SUPERVISOR	2014-05-19 08:20:05.298638
\.


--
-- Name: tb_jabatan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tb_jabatan_id_seq', 33, true);


--
-- Data for Name: tb_karyawan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_karyawan (nik, nama_karyawan, npwp, tmpt_lahir, tgl_lahir, alamat, no_astek, status_nikah, jk, tanggungan, tgl_masuk, status, gambar, kd_divisi, kd_grade, emergency_nama, emergency_alamat, emergency_hubungan, emergency_phone, kd_transport, tinggi, berat, gol_darah, tgl_kontrak, jamsostek_start, jamsostek_finish, pukfspmi_start, pukfspmi_finish, no_asuransi, no_paspor, id, kd_jabatan, status_kary, kd_pendidikan, kd_agama, kd_departemen) FROM stdin;
11003469    	Syaefudin	58.520.971.1-041.000     	Jakarta	1973-10-05	Jl.Muara Baru Rt.19/17 Penjaringan Jak-Ut	                    	K 	L	3	2010-03-01	\N	\N	30	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1148	30	K	7	1	3
11307544    	Mardiyanto	58.520.938.0-514.000     	Kendal	1979-06-22	Jl.Pakin Kmp Baru No.35 Rt02/04 Penjaringan Jak-Ut	                    	K 	L	2	2013-07-02	\N	\N	30	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1149	30	K	8	1	3
11001468    	Syafrudin	89.172.699.4-017.000     	Bima	1962-03-17	Komp.Ex.Zipur Viii/517 Rt5/16 Srengseng Swh Jak-Se	                    	K 	L	3	2010-02-01	\N	\N	30	66	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1150	30	K	2	1	3
11001467    	Karsa Supriatna	45.165.578.1-439.000     	Subang	1973-10-01	Lag.Trs Jl.B Gg 3 C Ii/23 Rt12/003 Lagoa Jak-Ut	                    	K 	L	2	2010-02-01	\N	\N	30	66	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1151	30	K	2	1	3
11.04.336   	Ade Herman Sentoso	48.072.022.6-004.000     	Kuningan	1972-07-15	Kp.Pulo Rt.007/014 Jt.Negara Cakung Jak-Tim	                    	K 	L	0	2006-04-01	\N	\N	30	67	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1152	30	K	2	1	3
99.10.108   	Roni Kurniawan	48.072.026.7-414.000     	Jakarta	1968-04-14	Jl.Pedurenan Masjid Rt.0016/04 Kuningan Jak-Sel	98K10355438         	K 	L	3	1998-10-28	\N	\N	30	69	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1153	30	K	2	1	3
00.03.109   	Romli	48.072.024.2-017.000     	Sumedang	1971-12-25	Kebagusan Besar Rt.007/06 No.9 Ps.Minggu Jak-Sel	99K10079325         	K 	L	3	1999-03-08	\N	\N	30	69	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1154	30	K	2	1	3
01.03.140   	Yanto Susanto	48.072.018.4-414.000     	Ciamis	1968-06-24	Graha Ciantra Blok B5 No.2 Rt.003/006 Cikarang Bks	00K10168191         	K 	L	2	2000-03-13	\N	\N	30	69	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1155	30	K	2	1	3
95.10.011   	Kosasih A.S	48.072.009.3-006.000     	Jakarta	1964-01-15	Pulo Gebang Permai D20 No.22 Cakung Jak-Tim	95K10422291         	K 	L	1	1995-03-13	\N	\N	30	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1156	30	K	7	1	3
95.10.020   	Suwandi	48.072.034.1-017.000     	Jakarta	1967-03-25	Kebagusan Besar Rt.006/07 No.24 Ps.Minggu Jak-Sel	95K10528618         	K 	L	3	1995-04-26	\N	\N	30	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1157	30	K	7	1	3
96.05.036   	Suyoto	48.072.020.0-414.000     	Ngawi	1969-05-05	Jl. Beruang Iv No. 10 Cikarang Baru Bekasi	95K10789376         	K 	L	2	1995-11-02	\N	\N	30	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1158	30	K	7	1	3
95.11.025   	Kamiyo	48.072.035.8-402.000     	Surakarta	1961-04-04	Cipadu Jaya Rt.003/04 No.21 Kreo Ciledug Tng	95K10528600         	K 	L	2	1995-06-07	\N	\N	30	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1159	30	K	7	1	3
02.10.175   	Resi Rahmawati	48.072.647.0-414.000     	Sumedang	1981-12-02	Kp.Cijingga Rt.003/001 Serang Cikarang Selatan Bks	01KE0016960         	T 	P	0	2001-10-25	\N	\N	31	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1160	21	T	2	1	6
01.09.151   	Dani Yulianto	48.131.217.1-412.000     	Kuningan	1981-04-20	Kp. Kebon Kopi Ds. Sukadami Cikarang Selatan  Bks	00K10580288         	K 	L	1	2000-09-01	\N	\N	31	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1161	21	K	2	1	6
13.12.360   	Wiji Setiyati	34.486.490.5-413.000     	Purworejo	1992-05-23	Jrabang Rt.2/10,Grenseng,Kr.Anyar Kebumen	                    	T 	P	0	2009-12-23	\N	\N	31	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1162	32	T	8	1	6
11205514    	Alfiana	36.199.781.0-533.000     	Wonosobo	1990-12-25	Kp.Rw Lintah Ds.Mekarmukti Rt,02/01 Ckr Utr Bekasi	                    	T 	P	0	2012-05-07	\N	\N	31	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1163	32	T	8	1	6
11309548    	Eko Fitria Wardani	98.268.451.6-543.000     	Bantul	1992-03-29	Perum Ksb Serang Bekasi	                    	T 	L	0	2013-09-01	\N	\N	31	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1164	32	T	8	1	6
10.08.327   	Yuni Susanti	67.092.154.3-524.000     	Magelang	1989-06-06	Kp. Cijingga Rt/Rw. 004/008 Serang, Cikarang Bks	                    	K 	P	0	2008-02-13	\N	\N	31	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1165	32	K	2	1	6
06.07.297   	Siswadi	48.131.226.2-435.000     	Kebumen	1984-02-03	Permata Trias Blok B1/35 Cibitung Bekasi	                    	K 	L	2	2005-07-01	\N	\N	31	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1166	32	K	2	1	6
07.07.305   	Irpan Hilmi	48.131.228.8-414.000     	Ciamis	1986-02-10	Jl.Amphibi Rt07/01 Sukaresmi Ckr Selatan Bekasi	                    	K 	L	1	2006-01-11	\N	\N	31	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1167	32	K	2	1	6
07.07.306   	Jejen Zaenal Aripin	48.131.224.7-425.000     	Garut	1985-08-15	G.H.Jamil Rt03/02 No.8 Serang Ckr Selatan Bekasi	                    	T 	L	0	2006-01-11	\N	\N	31	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1168	32	T	2	1	6
04.05.227   	Marikar Dani P.	48.131.227.0-414.000     	Makasar	1978-05-30	Jl.Singa Ii/T3 No.12 Cikarang Baru Bekasi	                    	K 	L	1	2003-05-08	\N	\N	31	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1169	32	K	2	1	6
05.12.256   	Nur Hartanto	48.131.222.1-526.000     	Boyolali	1984-10-10	Sukaresmi Rt,01/02 Ckr Sltn Bekasi	                    	K 	L	2	2004-12-20	\N	\N	31	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1170	32	K	2	1	6
99.10.101   	Agung Sularman	48.072.617.3-414.000     	Klaten	1979-02-15	Villa Mutiara Cikarang Blok B G/3 Ckr Sltn Bekasi	98K10293118         	K 	L	2	1998-10-01	\N	\N	32	88	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1171	25	K	2	1	6
97.01.056   	Sudaryanto	48.131.225.4-414.000     	Pati	1974-06-15	Jl. Kancil Ix No. 107 Cikarang Baru Bekasi	95K10854006         	K 	L	3	1996-07-15	\N	\N	32	91	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1172	26	K	3	1	6
97.12.087   	Heni Retnowati	48.072.649.6-435.000     	Klaten	1976-08-08	Bumi Lestari Blok H31 No.22 Tambun  Bekasi	96K10265195         	T 	P	0	1997-06-30	\N	\N	32	78	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1173	28	T	2	1	6
99.10.100   	Eko Subandi	48.072.639.7-541.000     	Bantul	1978-07-24	Jl.Kakalia Ii Blok 7/4 Cikarang Baru Bekasi	98K10293100         	K 	L	2	1998-10-01	\N	\N	32	78	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1174	28	K	2	1	6
10.04.325   	Muhamad Yusup	67.092.156.8-527.000     	Boyolali	1985-03-14	Kerten Rt.01/Iv Banyudono Kec.Banyudono Boyolali	                    	T 	L	0	2008-04-07	\N	\N	32	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1175	32	T	3	1	6
12.05.345   	Muhammad Rizki Rahman	89.742.302.6-313.000     	Prabumulih	1987-10-02	Jl.M.Yamin Gg.Tapus/66 Rt.03/05 Prabumulih Sumsel	                    	K 	L	1	2010-05-03	\N	\N	32	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1176	32	K	3	1	6
12.12.354   	Andi Nathalino	68.044.709.1-445.000     	Bandung	1986-12-27	Jl.Sadang Kp Pasantren Rt.01/12 Margahayu Bdg	                    	K 	L	1	2010-12-20	\N	\N	32	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1177	32	K	4	1	6
00.05.110   	Nursunah Putri A.	48.072.024.2-017.001     	Langsa	1974-12-17	Kp.Lw.Malang Ds.Sukaresmi Ckr Selatan Bekasi	99K10141034         	T 	P	0	1999-05-10	\N	\N	33	79	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1178	27	T	3	1	2
97.03.072   	Willyam Harnel	48.072.039.0-413.000     	Bukittinggi	1971-06-19	Mutiara Bekasi Jaya Blok L12 No.6 Cibarusah Bekasi	96K10627129         	K 	L	2	1996-09-24	\N	\N	33	95	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1179	29	K	3	1	2
11204512    	Meri Widya Amdayani	26.446.199.7-435.000     	Cilacap	1987-08-03	Kompas Indah Rt01/08 Blk C6/16 Tambun Selatan Bks	                    	T 	P	0	2012-04-04	\N	\N	33	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1180	32	T	5	1	2
11305543    	Lia Noviyanti	46.236.062.9-435.000     	Pangkalpinang	1990-11-23	Pesona Gading Blk I.1 No.22A Rt.008/015 Wnjaya Cbt	                    	T 	P	0	2013-05-20	\N	\N	33	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1181	32	T	5	1	2
08.09.321   	Agung Hendri N.	48.072.041.6-432.000     	Jakarta	1983-11-16	Graha Harapan Blok E14/7 Mustika Jaya Bks Timur	                    	K 	L	0	2006-09-12	\N	\N	33	85	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1182	32	K	5	1	2
11.08.342   	Dewi Rinawati	67.092.152.7-501.000     	Tegal	1984-03-09	Bumijawwa Rt.08/03 Bumijawa Tegal Ja-Teng	                    	T 	P	0	2007-08-13	\N	\N	34	71	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1183	30	T	2	1	3
99.10.105   	Hariyo Saputra	47.199.979.7-414.000     	Yogyakarta	1979-08-07	Rt.01/01 Kebon Kopi Serang Ckr Selatan Bekasi	98K10293134         	K 	L	3	1998-10-01	\N	\N	35	76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1184	21	K	2	1	3
97.01.055   	Heri Sugiyanto	47.199.983.9-414.000     	Purworejo	1976-05-25	Jl.Rusa Viii K80 Cikarang Baru Bekasi	95K10528220         	K 	L	3	1996-07-22	\N	\N	35	77	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1185	21	K	2	1	3
11309547    	Imam Nurul Rahman	68.133.490.0-532.000     	Wonogiri	1993-03-07		                    	T 	L	0	2013-09-01	\N	\N	35	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1186	30	T	8	1	3
13.10.359   	Dede Maulana	                         	Bandung	1992-10-03	Vila Mutiara 2 Blk D12 No 5 Cikarang Selatan Bekas	                    	T 	L	0	2010-10-14	\N	\N	35	69	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1187	30	T	2	1	3
06.02.266   	Adi Rahmadi	47.199.993.8-414.000     	Jakarta	1986-04-21	Jl. Industri Jababeka I Gg. Uyut Sabiin No. 67	                    	K 	L	1	2005-02-01	\N	\N	35	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1188	30	K	8	1	3
06.03.273   	Entis Sutisna B	47.200.006.6-414.000     	Majalengka	1983-05-03	Kp.Leuweungmalang Ds.Sukaresmi Ckr Sltn Bekasi	                    	K 	L	1	2005-03-28	\N	\N	35	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1189	30	K	8	1	3
07.08.315   	Deni Muhamad Jowhari	48.072.612.4-429.000     	Bandung	1985-12-12	Jl.Sukamiskin Kp.Kertasari Rt.02/04 No.50 Bdg	                    	K 	L	1	2006-02-06	\N	\N	35	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1190	30	K	8	1	3
06.03.272   	Desi Susanto	47.200.010.8-414.000     	Magelang	1984-12-19	Mutiara Bekasi Jaya Blok D15/4 Cibarusah Bekasi	                    	K 	L	1	2004-12-20	\N	\N	35	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1191	30	K	8	1	3
05.12.258   	Yatmin	47.199.989.6-525.000     	Sukoharjo	1982-02-08	Ds.Sukadami No.47 Rt.11/6 Ckrg Selatan Bekasi	                    	T 	L	0	2004-12-20	\N	\N	35	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1192	30	T	8	1	3
99.10.104   	Mulyadi	48.072.608.2-414.000     	Yogyakarta	1977-03-23	Rt.01/01 Kebon Kopi Serang Ckr Selatan Bekasi	98K10293159         	K 	L	3	1998-10-01	\N	\N	35	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1193	30	K	2	1	3
01.09.148   	Tri Lumiyanta	48.072.602.5-413.000     	Gunung Kidul	1982-05-02	Rt.03/06 No.78 Jatimulya Tambun Selatan Bekasi	00K10580320         	K 	L	2	2000-09-01	\N	\N	35	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1194	30	K	2	1	3
04.05.215   	Nurrofik	48.072.546.4-414.000     	Cilacap	1982-12-29	Jl.Andini No.224 Rt.001/02 Cikarang Barat Bekasi	02J90045580         	K 	L	3	2003-05-08	\N	\N	36	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1195	21	K	2	1	3
00.10.120   	Sadim Saepudin	48.072.534.0-407.000     	Bekasi	1977-03-02	Ds.Sindang Mulya Rt.10/04 Cibarusah Bekasi	99K10583128         	K 	L	2	1999-10-05	\N	\N	36	76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1196	21	K	2	1	3
97.03.060   	Teguh Suprayitno	48.072.597.7-414.000     	Purworejo	1976-02-25	Jl. Tapir Ii Blok M4/37 Cikarang Baru Bekasi	95K10528204         	K 	L	2	1996-09-02	\N	\N	36	77	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1197	21	K	2	1	3
96.05.035   	Eko Supriyanto	48.072.530.8-414.000     	Boyolali	1975-07-27	Mutiara Bekasi Jaya Blok E10 No.31 Cibarusah Bks	95K10868873         	K 	L	2	1995-10-23	\N	\N	36	81	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1198	28	K	1	1	3
11309550    	Slamet Mintarno	                         	Purworejo	1994-10-30	Pondok Cipta Blk H/88 Rt.001/012 Bintara Bekasi	                    	T 	L	0	2013-09-01	\N	\N	36	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1199	30	T	8	1	3
11309551    	Wahyu Nugroho Bpr	35.725.977.9-531.000     	Purworejo	1992-11-22	Kp.Pulo Kapuk Ds.Mekarmukti Rt.11/05 Ckr Utara Bks	                    	T 	L	0	2013-09-01	\N	\N	36	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	30	T	8	1	3
06.06.289   	Agus Yulianto	48.072.227.1-542.000     	Sleman	1986-08-27	Nogosari Sidokarto Godean Sleman Diy	                    	T 	L	0	2005-06-10	\N	\N	36	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1201	30	T	2	1	3
06.06.293   	Gita Putra	48.072.540.7-542.000     	Sleman	1987-01-18	Ngabean Wetan Sinduharjo Ngaglik Sleman Diy	                    	K 	L	1	2005-06-10	\N	\N	36	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1202	30	K	8	1	3
04.05.214   	Dwi Suparwanto	48.072.542.3-414.000     	Klaten	1982-02-27	Kontr.H.Idoh Sukadami Rt.11/06 Serang Bekasi	                    	T 	L	0	2003-05-08	\N	\N	36	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1203	30	T	2	1	3
04.11.238   	Jono Mulyono	48.072.536.5-426.000     	Cirebon	1985-08-09	Telaga Pasir Raya Blok D14 No.9 Serang Baru Bks	                    	K 	L	1	2003-11-03	\N	\N	36	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1204	30	K	2	1	3
04.05.226   	Wawan Ridwansah	48.072.589.4-413.000     	Majalengka	1982-08-14	Kp.Lw.Malang Sukaresmi Cikarang Selatan Bekasi	                    	K 	L	1	2003-05-08	\N	\N	36	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1205	30	K	2	1	3
05.07.247   	Adede	48.072.508.4-409.000     	Purwakarta	1984-09-07	Kp.Bungursari Rt.04/04 No.05 Purwakarta	                    	K 	L	1	2004-07-12	\N	\N	36	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1206	30	K	2	1	3
05.12.263   	Andi Nugraha	48.072.547.2.414.000     	Klaten	1986-04-06	Kp.Pagaulan Rt.11/02 Sukaresmi Ckr Sltn Bekasi	                    	K 	L	0	2004-12-20	\N	\N	36	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1207	30	K	8	1	3
05.12.262   	Slamet Riyadi	48.072.544.9-414.000     	Wonosobo	1984-09-12	Ds.Serang Rt.03/02 Ckr Selatan Bekasi	                    	K 	L	1	2004-12-20	\N	\N	36	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1208	30	K	8	1	3
05.12.259   	Eka Nurhayanto	48.072.578.7-426.000     	Jatiseeng	1985-06-10	Kongsi Rt.003/009 No.9 Cikr Kota Bekasi	                    	K 	L	1	2004-12-20	\N	\N	36	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1209	30	K	8	1	3
04.01.198   	Aris Kusnanto	48.072.529.0.407.000     	Klaten	1982-01-27	Kp.Tanah Baru Rt.09/02 Cikarang Utara Bekasi	03KE0001638         	K 	L	1	2003-01-13	\N	\N	36	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1210	30	K	2	1	3
01.02.131   	Sudiyono Prihantoro	48.072.485.5-414.000     	Yogyakarta	1979-04-01	Kp.Cijingga Rt.02/03 Ds.Serang Bekasi	00K10061586         	K 	L	2	2000-02-07	\N	\N	37	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1211	21	K	2	1	3
10.09.331   	Abdurohim	67.092.150.1-502.000     	Pemalang	1988-12-26	Jl.Pancakarya Rt.04/006 Pedurungan Pemalang Jateng	                    	T 	L	0	2007-09-18	\N	\N	37	71	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1212	30	T	9	1	3
606294      	Fandhi Setyo Budi	48.072.257.8-542.000     	Semarang	1987-12-09	Karang Kepuh Pandowoharjo Sleman Sleman Diy	                    	K 	L	2	2005-06-10	\N	\N	37	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1213	30	K	2	1	3
06.08.303   	Wasmin	48.072.615.7-409.000     	Subang	1986-08-31	Kp.Ciomas Rt.09/05 Karangmukti Pabuaran Subang	                    	K 	L	1	2005-08-08	\N	\N	37	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1214	30	K	2	1	3
07.07.309   	Sofandi	48.072.259.4-414.000     	Brebes	1985-06-20	Kp.Tanah Baru Ds.Harjamekar Rt.005/001 Ckr Utara	                    	K 	L	1	2006-01-11	\N	\N	37	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1215	30	K	2	1	3
06.06.287   	Ibnu Hajar	48.072.261.0-542.000     	Jakarta	1987-09-23	Sorasan Bimomartani Ngemplak Sleman Diy	                    	K 	L	1	2005-06-10	\N	\N	37	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1216	30	K	2	1	3
04.05.217   	Riswanto	48.072.135.6-523.000     	Purworejo	1983-11-20	Kontrk.H.Misnem No.16 Lw.Malang Ckrg Sltn Bekasi	                    	K 	L	2	2003-05-08	\N	\N	37	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1217	30	K	2	1	3
01.02.132   	Deni Jaelani	48.072.256.0-414.000     	Bekasi	1978-03-03	Kp.Rawa  Bangkong Rt.02/04 Jatireja Ckr Timur Bks	00K10061537         	K 	L	3	2000-02-07	\N	\N	37	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1218	30	K	2	1	3
01.11.163   	Budi Nurochman	48.072.254.5-414.000     	Magelang	1982-03-09	Taman Narogong Indah Blok D44/2 Rt.3/13 Bks Timur	00K10848511         	K 	L	2	2000-11-13	\N	\N	37	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1219	30	K	2	1	3
03.12.193   	Mochammad Said	48.072.493.9-413.000     	Cirebon	1980-04-20	Kel.Pakan Sari Rt.02/08 No.52 Cibinong Bogor	02KE0354450         	K 	L	2	2002-12-01	\N	\N	37	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1220	30	K	2	1	3
05.07.246   	Tatang Kiswanto	48.072.197.6-409.000     	Bogor	1986-06-25	Kp. Cijengkol Rt.01/01 No.32 Sagalaherang Subang	                    	K 	L	0	2004-07-12	\N	\N	38	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1221	21	K	2	1	3
04.01.196   	Amiluddin	48.072.214.9-414.000     	Pangkajene	1982-05-10	Mutiara Bekasi Jaya Blok A5/3 Cibarusah Bekasi	03KE0001653         	K 	L	2	2003-01-13	\N	\N	38	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1222	21	K	2	1	3
13.12.366   	Nur Cahyo	55.410.616.1-545.000     	Gunungkidul	1991-07-16	Psr Konci Rt 016/006 Pasir Sari Cikarang Sltn Beka	                    	T 	L	0	2012-12-12	\N	\N	38	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1223	30	T	8	1	3
11302532    	Jaenal Awaludin	44.986.378.6-501.000     	Tegal	1991-06-07	Pasir Sari Rt.10/04 Cik-Sel Bekasi	                    	K 	L	0	2013-02-11	\N	\N	38	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1224	30	K	8	1	3
11309546    	Yayan Taryana	                         	Purwakarta	1993-12-11	Kp.Ciseeng Rt.021/006 Munjuljaya Purwakarta	                    	T 	L	0	2013-09-01	\N	\N	38	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1225	30	T	8	1	3
13.12.365   	Weny Yulianti	44.062.515.0-413.000     	Bandung	1992-07-03	Jl.Seruni 5 No.6 Tmn Sriwedari Lippo Cikarang	                    	T 	P	0	2010-10-14	\N	\N	38	66	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1226	30	T	2	1	3
13.12.364   	Melya Whidya Puspita	46.283.985.3-523.000     	Kebumen	1991-05-24	Jl.Kedasih Xi/F1 No.30 Cikarang Baru Bekasi	                    	T 	P	0	2010-10-14	\N	\N	38	66	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1227	30	T	2	1	3
06.02.270   	Yudi Hermawan	48.072.212.3-414.000     	Cirebon	1985-10-26	Jl. Layang Kamp. Kongsi Rt 003/09 No. 9A Lt/2 Ckr	                    	K 	L	2	2005-02-01	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1228	30	K	2	1	3
06.03.274   	Rangga Felani	48.072.191.9-426.000     	Majalengka	1983-11-28	Ds.Sukaresmi Ckr Selatan Bekasi	                    	K 	L	2	2005-03-28	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1229	30	K	2	1	3
06.07.301   	Slamet Widodo	48.072.218.0-542.000     	Sleman	1987-05-16	Jebresan Rt.04/21 Kalitirto Berbah Sleman Diy	                    	K 	L	0	2005-07-01	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1230	30	K	2	1	3
06.07.298   	Herwanto	48.072.193.5-414.000     	Brebes	1984-07-18	Kp.Kukun Rt.12/6 Ciantra Cikarang Selatan Bekasi	                    	K 	L	1	2005-07-01	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1231	30	K	2	1	3
07.07.313   	Dwi Arwanto	48.072.225.5-525.000     	Klaten	1987-08-16	Mega Regency Blok C22/33 Serang Baru Bekasi	                    	T 	L	0	2006-01-11	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1232	30	T	2	1	3
07.07.314   	Wahyu Tri H.	48.072.195.0-523.000     	Karanganyar	1981-05-28	Jl.P.Nusapenida 8/220 Rt.004/010 Perumnas Iii Bks	                    	K 	L	3	2006-01-11	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1233	30	K	2	1	3
07.08.317   	Adi Hirman Sumantri	48.072.220.6-421.000     	Bandung	1986-12-25	Jl.Cipeundeuy Rt.01/02 459 Cikalong Wetang Bandung	                    	K 	L	0	2006-02-06	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1234	30	K	2	1	3
09.11.324   	Adi Supriadi	48.072.189.3-423.000     	Bandung	1984-10-23	Jl.Dago Bengkok 30 Rt.02/01 Ciumbuleuit Cdadap Bdg	                    	K 	L	2	2006-02-06	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1235	30	K	2	1	3
07.08.316   	Widiono	48.072.652.0-444.000     	Bandung	1985-05-23	Jl.Bbk.H.Abun No.59 Rt.02/07 Padasuka Cimenyan Bdg	                    	K 	L	0	2006-02-06	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1236	30	K	2	1	3
06.06.292   	Agus Supriyono	48.072.188.5-413.000     	Klaten	1987-08-03	Jl.Gejayan Gg.Mawar No.10B Santren Depok Sleman	                    	K 	L	0	2005-06-10	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1237	30	K	8	1	3
06.06.288   	Wawan Subandoko	48.072.205.7-541.000     	Bantul	1987-01-11	Jolosutro Srimulyo Piyungan Bantul Diy	                    	K 	L	1	2005-06-10	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1238	30	K	8	1	3
06.06.290   	Fajar Budiharto	48.072.229.7-541.000     	Bantul	1987-02-12	Sambirejo Kaligatuk Srimulyo Piyungan Bantul Diy	                    	K 	L	1	2005-06-10	\N	\N	38	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1239	30	K	8	1	3
04.05.224   	Muhammad Mukhsinun	48.072.203.2-407.000     	Banyumas	1983-07-23	Kp.Tegalgede Rt.08/03 Cikarang Selatan Bekasi	                    	K 	L	1	2003-05-08	\N	\N	38	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1240	30	K	2	1	3
04.05.225   	Rohmatullah	48.072.240.4-414.000     	Magelang	1984-08-15	Telaga Pasir Raya B6/12A Serang Bekasi	                    	K 	L	1	2003-05-08	\N	\N	38	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1241	30	K	2	1	3
01.02.130   	Agus Priyambodo	48.072.174.5-414.000     	Pacitan	1980-05-22	Jl.Beruang Ii Blok B7 No.19 Cikarang Baru Bekasi	00K10061610         	K 	L	3	2000-02-07	\N	\N	38	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1242	30	K	2	1	3
01.11.165   	Alliyan Abdulloh	48.072.201.6-407.000     	Bekasi	1982-02-14	Jl.Mawar V Rt.003/08 No.11 Kalibaru Bks Barat	00K10848578         	K 	L	2	2000-11-13	\N	\N	38	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1243	30	K	2	1	3
03.02.183   	Hartono	48.072.208.1-525.000     	Klaten	1982-01-04	Jl.Nusantara 2 B/261 Jatimulya Bekasi	02KE0028998         	K 	L	2	2002-02-11	\N	\N	38	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1244	30	K	2	1	3
02.02.169   	Dadang Rusmana	48.072.595.1-414.000     	Ciamis	1980-09-11	Taman Sentosa Blok D8/18 Ckr Sltn Bekasi	01K10051890         	K 	L	1	2001-02-06	\N	\N	38	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1245	30	K	2	1	3
96.03.031   	Agus Supriyadi	48.072.532.4-013.000     	Jakarta	1975-08-17	Komp. Ambon Petukangan Utara Jkt Selatan	95K10510566         	K 	L	3	1995-09-11	\N	\N	38	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1246	30	K	2	1	3
94.10.005   	Lukman Hakim L	48.072.495.4-404.000     	Bogor	1969-02-08	Villa Mutiara Cikarang Blok H8/31 Ckr Sltn Bekasi	93J40271749         	K 	L	2	1994-04-01	\N	\N	39	86	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1247	19	K	1	1	3
01.02.134   	Sukamto	48072.517.5-414.000      	Boyolali	1980-03-24	Kp.Leuweungmalang Ds. Sukaresmi Ckr Sltn Bekasi	99K10301604         	K 	L	2	2000-02-07	\N	\N	39	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1248	21	K	2	1	3
00.10.118   	Edi Triswanto	48.072.265.1-414.000     	Magelang	1977-03-21	Villa Mutiara Cikarang D2/36 Cikarang Sltn Bekasi	99K10583094         	K 	L	2	1999-10-05	\N	\N	39	76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1249	21	K	2	1	3
96.07.045   	Purnomo	48.072.614.0-414.000     	Kebumen	1972-09-16	Mutiara Bekasi Jaya Blok B7/15 Cibarusah Bekasi	96K10066856         	K 	L	2	1996-01-25	\N	\N	39	77	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1250	21	K	2	1	3
11211525    	Abdul Mugni	49.644.047.0-407.000     	Bekasi	1988-06-11	Jl.Masjid Al Ikhlas Rt04/02 No.5 Arenjaya Bks Tmr	                    	K 	L	0	2012-11-01	\N	\N	39	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1251	30	K	8	1	3
11211526    	Deni Setiawan	44.848.738.9-522.000     	Cilacap	1991-05-08	Kukun,Ciantra Rt.12/4 Cikarang Selatan Bekasi	                    	T 	L	0	2012-11-01	\N	\N	39	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1252	30	T	8	1	3
11302538    	Harjanto Widodo	79.903.292.5-525.000     	Klaten	1990-09-15	Vmc Blok H1 No. 5 Ciantra Cik-Sel Bekasi	                    	T 	L	0	2013-02-11	\N	\N	39	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1253	30	T	8	1	3
11304542    	Ngimron	54.759.497.8-646.000     	Ngawi	1992-01-04	Kp.Cikempong Rt.05/07 Kel.Pakansari Cibinong Bogor	                    	T 	L	0	2013-04-01	\N	\N	39	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1254	30	T	8	1	3
06.08.302   	Yana Mulyana	48.072.523.3-409.000     	Purwakarta	1985-12-31	Kp.Batulayang Rt.06/01 Cikao Bandung Jatiluhur Pwk	                    	K 	L	1	2005-08-08	\N	\N	39	67	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1255	30	K	2	1	3
12.10.349   	Asep Yoni Ressanja	45.983.205.1-413.000     	Ciamis	1992-06-11	Pagaulan Ds.Sukaresmi Rt.04/11 Cikarang Selatan	                    	T 	L	0	2010-10-14	\N	\N	39	68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1256	30	T	2	1	3
12.11.352   	Indra Cahyadi	35.543.026.5-409.000     	Purwakarta	1990-08-26	Jl.Tmn Pahlawan Utara Kel.Purwamekar Pwkt	                    	T 	L	0	2010-11-04	\N	\N	39	68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1257	30	T	2	1	3
11203508    	Apendi	34.766.293.4-432.000     	Garut	1991-10-06	Mutiara Gdg 2 Blk N21/23 Rt010/012 Mustika Jy Bks	                    	T 	L	0	2012-03-21	\N	\N	39	68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1258	30	T	8	1	3
11203509    	Johan Priyanto	59.124.567.5-435.000     	Wonogiri	1989-10-11	Griya Asri I Blk C3/10 Rt.001/011 Sbr Jaya Tmbn	                    	K 	L	1	2012-03-21	\N	\N	39	68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1259	30	K	8	1	3
06.03.275   	Triyono	48.072.500.1-414.000     	Klaten	1985-12-29	Kontr.H.Rum Rt.11/06 No.62 Sukadami Ckr Slt Bekasi	                    	K 	L	1	2005-03-28	\N	\N	39	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1260	30	K	2	1	3
06.06.291   	Sudarsono	48.072.504.3-542.000     	Sleman	1987-05-14	Sumberwatu Sambirejo Prambanan Sleman Diy	                    	K 	L	1	2005-06-10	\N	\N	39	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1261	30	K	2	1	3
06.08.304   	Lius Sunardi	48.072.489.7-409.000     	Purwakarta	1986-07-10	Kp.Nanggorak Sindangsari Plered Purwakarta	                    	K 	L	1	2005-08-08	\N	\N	39	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1262	30	K	2	1	3
07.07.311   	Nana Tarna	48.072.525.8-426.000     	Majalengka	1983-05-16	Kp.Pilar Barat Rt.05/03 Ds.Kr Asih Ckr Utara Bks	                    	K 	L	2	2006-01-11	\N	\N	39	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1263	30	K	2	1	3
07.07.310   	Admono	48.072.496.2-414.000     	Banyumas	1984-04-08	Blok T Rt.001/05 Psr Gombong Lemahabng Bks	                    	K 	L	1	2006-01-11	\N	\N	39	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1264	30	K	2	1	3
01.11.164   	Suwarso	48.072.521.7-414.000     	Banjarnegara	1981-01-26	Rt.009/03 Cikarang Kota - Bekasi	00K10848594         	K 	L	2	2000-11-13	\N	\N	39	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1265	30	K	2	1	3
00.05.113   	Burhanudin	48.072.498.8-414.000     	Bekasi	1977-09-06	Rt.05/02 Kp.Muncang Sindangmulya Cibarusah Bks	99K10141067         	K 	L	2	1999-05-10	\N	\N	39	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1266	30	K	2	1	3
03.02.178   	Sunarno	48.072.519.1-525.000     	Klaten	1981-08-17	Kp.Kukun Rt.12/6 Ciantra Cikarang Selatan Bekasi	02KE0019046         	K 	L	1	2002-02-11	\N	\N	39	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1267	30	K	2	1	3
97.01.052   	Sukarman	48.072.656.1-414.000     	Blora	1976-08-12	Jl. Cateliya 2 Blok C6 No.23 Villa Mutiara Ckr	96K10415269         	K 	L	3	1996-07-03	\N	\N	39	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1268	30	K	2	1	3
99.10.106   	Sarjono	48.072.555.5-414.000     	Yogyakarta	1978-03-22	Jl. Raya Cikarang-Cibarusah Ckr Selatan Bekasi	                    	K 	L	2	1998-10-01	\N	\N	40	82	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1269	19	K	1	1	3
01.02.125   	Lukman Hakim B	48.072.576.1-414.000     	Magelang	1980-03-06	Jl. Beruang Ii No.21 Cikarang Baru Bekasi	00K10061578         	K 	L	2	2000-02-07	\N	\N	40	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1270	21	K	2	1	3
97.03.067   	Yanto Sugiriyanto	48.072.583.7-414.000     	Cirebon	1977-03-21	Jl. H. Jamil Rt.03/02 No.6 Cikarang Selatan Bekasi	96K10627079         	K 	L	3	1996-09-18	\N	\N	40	77	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1271	21	K	2	1	3
13.12.361   	Muji Dwi Handayani	                         	Magetan	1986-03-14	Jl.Kecapi Raya C/325 Rt.009/015 Jt.Mulya Tambun	                    	T 	P	0	2009-12-23	\N	\N	40	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1272	30	T	8	1	3
11206521    	Rhegina Noermalita	46.082.560.7-432.000     	Bekasi	1994-11-18	Pti Ii  Rt.010/007 No.90 Mustikasari Mstkjaya Bks	                    	T 	P	0	2012-06-18	\N	\N	40	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1273	30	T	8	1	3
11211528    	Dedy Wardoyo	46.573.400.2-532.000     	Sukoharjo	1994-01-02	Parum Asri Pratama Blk D23/21 Sukadami Ciksel Bks	                    	T 	L	0	2012-11-01	\N	\N	40	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1274	30	T	8	1	3
11302531    	Ika Agustina	                         	Jakarta	1992-08-20	Kp.Lw.Malang Rt.004/004 Sukaresmi Cik-Sel Bekasi	                    	T 	P	0	2013-02-11	\N	\N	40	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1275	30	T	8	1	3
11302537    	Adih Pratama	                         	Bekasi	1992-07-15	Kp.Lw.Malamg Rt.01/03 Sukaresmi Cik-Sel Bekasi	                    	T 	L	0	2013-02-11	\N	\N	40	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1276	30	T	8	1	3
11302533    	Iman Somantri	44.741.323.8-438.000     	Majalengka	1992-07-22	Kp.Lw.Malang Rt.001/003 Sukaresmi Cik-Sel Bekasi	                    	T 	L	0	2013-02-11	\N	\N	40	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1277	30	T	8	1	3
11309545    	Mohamad Yusup Supari	                         	Cirebon	1993-04-05	Kp.Kukun Ciantra Ckr Selatan Bekasi	                    	T 	L	0	2013-09-01	\N	\N	40	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1278	30	T	8	1	3
11402562    	Reganis Leofri	35.357.849.5-414.000     	Lubuk Durian	1992-07-22	Jl.Rusa Iii/H/133 Ckr Baru Rt.003/009 Ckr Timur Bk	                    	T 	P	0	2014-02-20	\N	\N	40	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1279	30	T	9	1	3
13.05.358   	Rizal Arifiandi	                         	Bandung	1992-03-06	Jl.Bangbayang Timur 27 Rt.04/10 Bandung 40134	                    	T 	L	0	2010-05-17	\N	\N	40	69	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1280	30	T	8	1	3
12.12.353   	Tutik Indrawati	78.007.000.9-532.000     	Wonogiri	1988-04-03	Wnorejo Rt002/007 Mlokomanis Wtan Ngadirojo Wngiri	                    	T 	P	0	2009-12-23	\N	\N	40	69	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1281	30	T	9	1	3
06.05.277   	Eko Setiawan	48.072.237.0-541.000     	Bantul	1985-09-18	Rt.07 Godegan Tamantirto Kasihan Bantul Diy	                    	K 	L	0	2005-05-04	\N	\N	40	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1282	30	K	2	1	3
06.05.281   	Nur Jariyanto	48.072.233.9-541.000     	Bantul	1985-10-08	Jolosutro Rt04/44 Srimulyo Piyungan Bantul Diy	                    	K 	L	1	2005-05-04	\N	\N	40	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1283	30	K	2	1	3
06.02.265   	Agus Setiawan	48.072.551.4-523.000     	Kebumen	1984-09-01	Kp. Pagaulan Rt 010/002 Sukeresmi	                    	K 	L	1	2005-02-01	\N	\N	40	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1284	30	K	8	1	3
06.02.267   	Wawan Widodo	48.072.574.6-526.000     	Karanganyar	1985-04-15	Jl. Dawai No. 17 Ds. Sukaresmi Rt 10/02 Ckr-Bks	                    	K 	L	1	2005-02-01	\N	\N	40	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1285	30	K	8	1	3
06.02.269   	Marjoko	48.072.563.9-413.000     	Semarang	1983-03-08	Kp. Raw Lintah Rt 01/01 Ds. Mekar Mukti Ckr-Bks	                    	K 	L	2	2005-02-01	\N	\N	40	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1286	30	K	8	1	3
06.02.268   	Caso Triyanto	48.072.553.0-413.000     	Cilacap	1982-11-22	Kp. Cibuntu Bojong Rt 001/02 Ds. Gandasari Ckr-Bks	                    	K 	L	2	2005-02-01	\N	\N	40	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1287	30	K	8	1	3
06.05.276   	Isnu Aribowo	48.072.561.3-525.000     	Klaten	1986-03-15	Rt.01/09 Jetis Jambu Kidul Ceper Klaten Ja-Teng	                    	K 	L	1	2005-05-04	\N	\N	40	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1288	30	K	8	1	3
06.05.282   	Juni Ariyanto	48.072.591.0-525.000     	Klaten	1985-06-10	Rt.02/06 Pendem Jarum Bayat Klaten Ja-Teng	                    	K 	L	1	2005-05-04	\N	\N	40	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1289	30	K	8	1	3
06.05.278   	Teguh Andriyanto	48.072.250.3-413.000     	Kebumen	1986-09-19	Rt.06/04 Ampel Karangsari Kebumen Ja-Teng	                    	T 	L	0	2005-05-04	\N	\N	40	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1290	30	T	8	1	3
06.06.296   	Ikhwanudin	48.072.598.5-541.000     	Bantul	1987-07-30	Somokaton Sitimulyo Piyungan Bantul Diy	                    	K 	L	1	2005-06-10	\N	\N	40	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1291	30	K	8	1	3
06.07.300   	Wahyu Budi Triyono	48.072.510.0-414.000     	Tegal	1984-05-12	Cijingga Rt.08/04 Serang Cikarang Selatan Bekasi	                    	K 	L	2	2005-07-01	\N	\N	40	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1292	30	K	8	1	3
04.05.222   	Ivan Muslih Zafar	48.072.572.0-413.000     	Ciamis	1984-01-06	Jl.Pasir Gombong Rt.12/06 Cikarang Utara Bekasi	03KE0135642         	K 	L	2	2003-05-08	\N	\N	40	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1293	30	K	2	1	3
04.05.223   	Samsul Hidayat	48.072.564.7-414.000     	Jakarta	1983-09-08	Kp.Lw.Malang Rt.05/03 Sukaresmi Ckrg Sltn Bekasi	03KE0135667         	K 	L	2	2003-05-08	\N	\N	40	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1294	30	K	2	1	3
05.07.243   	Arman Suryaman	48.072.568.8-409.000     	Purwakarta	1985-09-05	Jl.Lurah Kawi No.1 Rt.08/Iii Jatiluhur Purwakarta	                    	K 	L	1	2004-07-12	\N	\N	40	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1295	30	K	2	1	3
04.05.216   	Ijan Sugianto	48.072.580.3-414.000     	Subang	1976-08-09	Jl. Rusa Iii Boli I No. 60 Cikarang Baru Bekasi	03KE0135634         	K 	L	3	2003-05-08	\N	\N	40	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1296	30	K	2	1	3
05.12.261   	Imam Suyitno	48.072.585.2-414.000     	Banyumas	1986-03-30	Kp.Serang Ds.1 Serang Ckr Sltn Bekasi	                    	T 	L	0	2004-12-20	\N	\N	40	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1297	30	T	8	1	3
05.12.260   	Sujana	48.072.557.1-414.000     	Karawang	1984-05-14	Kp.Cibeber Dusun 3 Rt.001/006 Simpangan Ckr Utara	                    	K 	L	1	2004-12-20	\N	\N	40	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1298	30	K	8	1	3
02.05.173   	Oka Saputra	48.072.570.4-414.000     	Bekasi	1977-09-18	Kp.Lw.Malang Rt.07/01 Sukaresmi Ckr Sltn Bekasi	01K10289367         	K 	L	3	2001-05-08	\N	\N	40	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1299	30	K	2	1	3
04.01.197   	Andi Hermawan	48.072.600.9-414.000     	Tegal	1982-10-28	Jl.Rusa Vii K No. 84 Cikarang Baru Bekasi	02KE0080543         	K 	L	1	2003-01-13	\N	\N	40	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1300	30	K	2	1	3
04.01.201   	Entis Sutisna L	48.072.549.8-414.000     	Bekasi	1980-05-16	Kp.Lw.Malang Rt.007/001 Cukaresmi Ckr Sltn Bekasi	03KE0001596         	K 	L	2	2003-01-13	\N	\N	40	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1301	30	K	2	1	3
01.02.128   	Bidin Khoerudin	48.072.566.2-414.000     	Bogor	1978-02-18	Kp. Gebang Serang Bekasi	00K10061511         	K 	L	2	2000-02-07	\N	\N	40	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1302	30	K	2	1	3
01.11.158   	Deding Kurniadi	48.072.127.3-409.000     	Purwakarta	1977-11-20	Mutiara Bekasi Jaya Blok A5/15 Cibarusah Bekasi	00K10848628         	K 	L	2	2000-11-13	\N	\N	41	76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1303	21	K	2	1	3
04.05.218   	Agus Supratman	48.072.138.0-521.000     	Banyumas	1982-08-13	Kp.Tegalgede Rt.10/04 Cikarang Bekasi	                    	K 	L	1	2003-05-08	\N	\N	41	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1304	30	K	2	1	3
05.12.257   	Catur Despiyanto	48.072.125.7-414.000     	Boyolali	1984-12-17	Mutiara Bekasi Jaya Blok E10/31 Cibarusah Bekasi	                    	K 	L	1	2004-12-20	\N	\N	41	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1305	30	K	8	1	3
97.01.051   	Heri Widodo	48.072.137.2-414.000     	Purworejo	1977-04-13	K.Leuweungmalang Ds.Sukaresi Ckrg Sltn Bks	96K10415244         	K 	L	2	1996-07-03	\N	\N	41	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1306	30	K	2	1	3
97.01.053   	Suparman	48.072.167.9-414.000     	Cirebon	1977-05-21	Kp. Cibeber Melati 13 Rt.01/06 Cikarang Utara Bks	                    	K 	L	2	1996-07-03	\N	\N	42	82	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1307	19	K	1	1	3
01.09.149   	Nunu Aenun N.N.	48.072.231.3-426.000     	Kuningan	1981-11-14	Kp.Kebon Kopi Sukadami Cikarang Selatan Bekasi	00K10580288         	K 	L	2	2000-09-01	\N	\N	42	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1308	21	K	2	1	3
03.02.180   	Warkim Nurdiyanto	48.072.163.8-414.000     	Cilacap	1983-07-10	Mutiara Bekasi Jaya Blok L12A/7 Cibarusah Bekasi	02KE0019020         	K 	L	2	2002-02-11	\N	\N	42	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1309	21	K	2	1	3
12.10.348   	Cholid Sulaiman	57.194.133.5.524.000     	Magelang	1987-08-26	Graha Ciantra Blk D4 No T Cikarang Selatan Bks	                    	K 	L	2	2010-10-14	\N	\N	42	68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1310	30	K	2	1	3
13.02.356   	Sutarno	59.115.233.5-523.000     	Kebumen	1987-03-25	Graha Ciantra Blk B5/10 Ckr Sltn Bekasi	                    	K 	L	1	2010-01-25	\N	\N	42	69	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1311	30	K	8	1	3
10.09.330   	Aris Setiyono	67.092.151.9-413.000     	Wonogiri	1987-02-06	Vila Mutiara Cikarang Blkok H8/1 Ckr Selatan Bks	                    	K 	L	1	2008-02-21	\N	\N	42	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1312	30	K	8	1	3
01.11.159   	Tugiyana	48.072.184.4-414.000     	Sleman	1977-06-18	Kp.Kebon Kopi Rt.01/01 Serang Ckr Sltn Bekasi	00K10848529         	T 	L	0	2000-11-13	\N	\N	42	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1313	30	T	2	1	3
01.11.156   	Ngadiono	48.072.161.2-407.000     	Kebumen	1982-05-16	Kp. Rawa Bugel Rt.13/04 Harapan Jaya Bks Utara	00K10848537         	K 	L	2	2000-11-13	\N	\N	42	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1314	30	K	2	1	3
01.11.155   	Dede Lili	48.072.159.6-413.000     	Ciamis	1981-05-03	Jl. Mawar Ix Blok P4 No.14/15 Rt.03/19 Tambun Bks	00K10848586         	K 	L	1	2000-11-13	\N	\N	42	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1315	30	K	2	1	3
03.02.179   	Feri Wardana	48.072.178.6-413.000     	Jakarta	1983-02-02	Kp.Kedunggede Rt.03/16 Setiamekar Tambun Bekasi	02KE0019038         	K 	L	0	2002-02-11	\N	\N	42	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1316	30	K	2	1	3
05.09.248   	Supendi	48.131.213.0-403.000     	Indramayu	1978-06-26	Citra Indah Blok Bukit Cemara P00/112 Jonggol Bgr	                    	K 	L	2	2004-09-01	\N	\N	43	87	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1317	19	K	3	1	7
94.10.004   	E. Eko Asyanto	48.131.244.5-414.000     	Jakarta	1973-07-16	Taman Sentosa Blok D7/2 Cikarang Selatan Bks	95K10422341         	K 	L	0	1994-04-01	\N	\N	43	84	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1318	28	K	1	2	7
11312557    	Dhimas Surya Gangga	55.369.572.7-435.000     	Klaten	1989-06-19	Bksi Regensi 2 Blk Bb4 No.5 Rt.008/007 Wnsari Cbt	                    	T 	L	0	2013-12-18	\N	\N	43	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1319	32	T	3	1	7
11402558    	Muhammad Hanif	46.874.320.8-413.000     	Bekasi	1993-06-23	Perum Mutiara Bks Jaya Blok E9/25-26 Cibarusah Bks	                    	T 	L	0	2014-02-20	\N	\N	44	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1320	18	T	2	1	5
04.01.205   	Umbar Riadi	48.072.654.6-414.000     	Ponorogo	1982-06-26	Jl. Rusa Blok K /100 Cikarang Baru Bekasi	02KE0271852         	K 	L	1	2003-01-13	\N	\N	44	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1321	18	K	2	1	5
10.12.335   	Rian Purnomo Hadi	67.092.133.7-435.000     	Jakarta	1989-07-09	Kp. Babelan Rt.002/001 Babelan Kota Babelan Bekasi	                    	T 	L	0	2007-12-15	\N	\N	44	71	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1322	18	T	2	1	5
01.07.143   	Soleh Sulaeman	48.131.230.4-413.000     	Bekasi	1979-06-15	Kp.Gabus Tengah Rt.003/002 Ds.Srimukti Tambun Bks	00K10463618         	K 	L	2	2000-07-03	\N	\N	44	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1323	18	K	2	1	5
94.10.006   	Samsuri	48.131.238.7-409.000     	Kuningan	1969-05-10	Mutiara Bekasi Jaya Blok A5 No 15 Cibarusah Bekasi	                    	K 	L	2	1994-04-01	\N	\N	44	96	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1324	20	K	1	1	5
06.06.286   	Solihin	48.072.089.5-414.000     	Purwakarta	1985-05-07	Kp.Pesanggrahan Rt.04/01 No.16 Cilegog Purwakarta	                    	K 	L	1	2005-06-01	\N	\N	44	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1325	21	K	2	1	5
11.08.341   	Yus Hernawan	09.435.604.5-428.000     	Cirebon	1972-08-11	Jl.Sukamaju No.18 Rt/Rw 02/06 Sukajadi Bandung	                    	K 	L	2	2010-08-09	\N	\N	44	87	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1326	27	K	5	1	5
11206517    	Andri Supriyatna	54.249.150.1.424.000     	Bandung	1989-05-19	Jl.Mekarsari Rt.08/17 No. 61 Kiaracondong Bandung	                    	T 	L	0	2012-06-18	\N	\N	44	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1327	31	T	8	1	5
12.10.347   	Dewi Indrayanti	                         	Jakarta	1987-12-09		                    	T 	P	0	2010-10-25	\N	\N	44	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1328	32	T	3	1	5
12.11.350   	Kartika Savitri	45.456.934.4-428.000     	Jakarta	1985-12-03	Jl.Dr.Junjunan No.178 Sukagalih Sukajadi Bandung	                    	T 	P	0	2010-11-01	\N	\N	44	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1329	32	T	5	1	5
96.01.030   	Nurul Huda	48.072.165.3-414.000     	Ponorogo	1973-06-20	Villa Mutiara Cikarang	95K10614293         	K 	L	1	1995-09-04	\N	\N	45	80	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1330	25	K	1	1	3
00.12.123   	Sabar Santoso	48.072.120.8-414.000     	Kr.Anyar	1969-04-08	Mutiara Bekasi Jaya Blok A7/5 Cibarusah Bekasi	00J40059206         	K 	L	1	2000-09-01	\N	\N	45	76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1331	28	K	2	1	3
04.01.202   	Hendar Subagja	48.072.118.2-409.000     	Bandung	1980-04-08	Mutiara Bekasi Jaya Blok A5/15 Cibarusah Bekasi	03KE0001570         	K 	L	1	2003-01-13	\N	\N	45	76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1332	28	K	2	1	3
04.11.231   	Heru Wahyudi	48.072.116.6-414.000     	Cirebon	1979-11-28	Mutiara Bekasi Jaya Blok A/17 Cibarusah Bekasi	                    	K 	L	2	2003-11-03	\N	\N	45	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1333	30	K	2	1	3
04.11.232   	Dodik Kuncoro	48.072.112.5-525.000     	Magelang	1980-03-02	Kp.Cijingga Rt.03/02 Serang Cikarang Selatan Bks	                    	K 	L	2	2003-11-03	\N	\N	45	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1334	30	K	2	1	3
04.11.233   	Iwan Setiyanto	48.072.114.1-006.000     	Kebumen	1974-06-16	Jl.Kebon Nanas Sltn /8 Rt.16/02 No.31 Cipinang Jkt	                    	K 	L	3	2003-11-03	\N	\N	45	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1335	30	K	2	1	3
04.11.237   	Tontowi	48.072.621.5-414.000     	Ponorogo	1982-01-04	Jl.Rusa Vii Blok K No.100 Cikarang Baru Bekasi	                    	K 	L	1	2003-11-03	\N	\N	45	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1336	30	K	2	1	3
97.10.083   	Nurhani	48.072.157.0-414.000     	Kuningan	1973-04-02	Kebon Kopi Sukadami Ckr Selatan Bekasi	96K10168793         	K 	L	3	1997-04-08	\N	\N	45	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1337	30	K	2	1	3
04.01.206   	Mahbub Tantowi	48.072.005.1-015.000     	Jakarta	1972-08-01	Kp.Pagaulan Rt.011/02 No.84 Ckr Sltn Bekasi	03KE0001661         	K 	L	3	2003-01-17	\N	\N	46	68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1338	30	K	2	1	3
04.07.230   	Nadi	48.072.007.7-413.000     	Bekasi	1982-05-10	Kp.Cironggeng Barat Rt.03/02 Wanajaya Cibitung Bks	                    	K 	L	1	2003-07-07	\N	\N	46	68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1339	30	K	7	1	3
98.02.095   	Ngardi	48.131.246.0-414.000     	Bojonegoro	1977-04-04	Bumi Ckr Asri Blok B/175 Rt.014/02 Serang Baru Bks	97K10605214         	K 	L	3	1997-08-26	\N	\N	46	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1340	30	K	2	1	3
98.04.096   	Abdullah	48.131.245.2-017.000     	Jakarta	1974-07-20	Perum Tti Blok G 6 No. 10 Tambun Bekasi	97K10687907         	K 	L	2	1997-09-22	\N	\N	46	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1341	30	K	7	1	3
04.03.208   	Sigit Trias A.	48.131.241.1-523.000     	Purworejo	1985-04-30	Kp.Pagaulan Rt.11/02 Sukaresmi Ckr.Sltn Bekasi	                    	K 	L	1	2003-03-31	\N	\N	47	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1342	18	K	2	1	3
95.11.023   	Rizka Nurcahya	48.131.240.3-414.000     	Jakarta	1976-01-03	Taman Sentosa Blok D8 No.18 Cikarang Sltn Bekasi	95K10422267         	T 	P	0	1995-05-08	\N	\N	47	89	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1343	24	T	2	1	3
07.09.319   	Linarti	48.131.243.7-005.000     	Blitar	1983-11-16		                    	T 	P	0	2006-03-27	\N	\N	48	84	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1344	21	T	3	1	3
98.05.098   	Sony Dwi Cahyo W.	48.131.242.9-414.000     	Demak	1976-01-20	Mutiara Bekasi Jaya Blok L12 No. 6A Cibarusah Bks	97K10687956         	K 	L	2	1997-11-03	\N	\N	48	90	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1345	33	K	3	1	3
11205515    	Rian Dilukman	35.485.774.0-451.000     	Sumedang	1987-03-16	Jl.Kano Xii/51 Rt.007/009 Klapa Dua Tangerang	                    	K 	P	0	2012-05-08	\N	\N	48	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1346	32	K	9	1	3
13.01.355   	Rina Pujiawanti	79.074.430.4-408.000     	Karawang	1986-05-03	Dsn Sukakarya Rt.04/01 No 57 Telukjambe Krwang	                    	T 	P	0	2011-01-05	\N	\N	48	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1347	32	T	3	1	3
97.01.057   	Udi Irawan	48.072.013.5-414.000     	Cilacap	1969-09-04	Kp. Kukun Desa Ciantra Ckrg Selatan Bekasi	94K10195122         	K 	L	3	1996-07-12	\N	\N	49	82	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1348	19	K	1	1	7
97.07.074   	Isnani	48.072.015.0-407.000     	Klaten	1977-12-08	Rt.03/05 Jatikramat Jatiasih Bekasi	                    	T 	P	0	1997-01-09	\N	\N	49	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1349	28	T	1	1	7
08.12.323   	Fadyar Apriandito	67.092.119.6-411.000     	Banyuwangi	1972-04-28	Puri Madan Ii Blok D8/13 Pondok Cabe Tangerang	                    	K 	L	1	2007-12-03	\N	\N	49	93	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1350	29	K	6	1	7
05.03.240   	Ratnawati	48.072.534.0-407.000     	Jakarta	1981-08-20	Jl.Yapen 14 No.198 Rt.03/008 Arenjaya Bekasi	                    	T 	P	0	2004-03-15	\N	\N	50	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1351	18	T	2	1	3
01.07.144   	Mohammad Iqbal	48.072.093.7-002.000     	Pekalongan	1976-10-02	Jl. Kebon Pala I Rt.015/07 No.30 Jakarta Timur	00K10463634         	K 	L	3	2000-07-03	\N	\N	50	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1352	21	K	2	1	3
96.05.037   	Kurniawati	48.072.110.9-407.000     	Jakarta	1975-11-05	Bumi Bekasi Baru Nlok Viii /83 Bekasi	95K10789384         	T 	P	0	1995-11-22	\N	\N	50	81	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1353	21	T	1	1	3
01.02.133   	Didi Hendrawan	48.072.091.1-414.000     	Subang	1979-12-19	Kp.Kr.Anyar Tanjungpura Rt.07/07 Karawang	00K10061552         	K 	L	3	2000-02-07	\N	\N	50	85	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1354	27	K	1	1	3
96.07.046   	Sumartono	48.072.637.1-414.000     	Trenggalek	1973-03-08	Graha Cikarang No.5 Rt.004/16 Simpanagn Ckr Utara	96K10066864         	K 	L	1	1996-01-25	\N	\N	50	81	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1355	28	K	1	1	3
12.09.346   	M. Husni Latif	36.199.130.0-414.000     	Jakarta	1992-01-02	Kp.Mareleng Bojongsari Kd.Waringin Bekasi	                    	T 	L	0	2010-08-18	\N	\N	50	68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1356	30	T	8	1	3
10.09.333   	Ernawan	67.092.140.2-544.000     	Kulonprogo	1988-08-10	Tg.Gede Pasirsari Rt.08/03 Cikarang Selatan Bekasi	                    	T 	L	0	2007-09-18	\N	\N	50	71	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1357	30	T	8	1	3
04.11.234   	Yamin	48.072.099.4-414.000     	Bekasi	1983-09-10	Kp.Jatimulya Rt.02/01 Ps.Gombong Ckr Utara Bekasi	                    	K 	L	0	2003-11-03	\N	\N	50	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1358	30	K	2	1	3
01.02.136   	Aam Maolana	48.072.210.7-414.000     	Kuningan	1980-02-05	Mutiara Bekasi Jaya Blok L10/20 Cibarusah Bekasi	00K10061503         	K 	L	0	2000-02-07	\N	\N	50	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1359	30	K	2	1	3
05.05.241   	Rudiwa	48.131.220.5-414.000     	Ciamis	1982-07-07	Kp.Cibeber Melati 13 Rt.01/06 Cikarang Utara Bks	                    	K 	L	3	2004-05-07	\N	\N	50	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1360	32	K	2	1	3
06.06.285   	Iman Kustiaman	48.072.104.2-414.000     	Kuningan	1984-11-20	Rt.2/1 No.3 Kebon Kopi Serang Cikarang Selatan Bks	                    	T 	L	0	2005-06-01	\N	\N	50	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1361	30	T	2	1	3
06.05.279   	Muh Ilyas Syaibani	48.072.103.4-526.000     	Klaten	1985-05-17	Rt.26/04 Pos Wetan Mliwis Cepogo Boyolali	                    	K 	L	1	2005-05-04	\N	\N	50	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1362	30	K	2	1	3
11211530    	Evi Rintakasari	67.060.432.1-525.000     	Klaten	1989-11-15	Kp.Cijingga,Serang,Cikarang Selatan Bekasi	                    	T 	P	0	2012-11-01	\N	\N	51	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1363	18	T	8	1	3
11302536    	Yeni Sulistiawati	                         	Ciamis	1994-01-08	Kp.Kukun Ds. Ciantra Rt 06/12 Cik-Sel Bekasi	                    	T 	P	0	2013-02-11	\N	\N	51	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1364	18	T	8	1	3
95.02.007   	Rudi Hartono	48.072.108.3-414.000     	Ponorogo	1973-07-04	Jl. Rusa Vii Blok K No. 100 Cikarang Baru - Bekasi	95K10422358         	K 	L	3	1994-08-01	\N	\N	51	92	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1365	22	K	1	1	3
97.03.070   	Wahyu Indarto	48.072.487.1-414.000     	Kebumen	1977-03-05	Villa Mutiara Cikarang Blok B3/37 Ckr Sltn Bekasi	                    	K 	L	3	1996-09-17	\N	\N	51	85	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1366	27	K	1	1	3
99.10.103   	Muhtar Hanafi	48.072.216.4-413.000     	Yogyakarta	1978-12-08	Jl. Kakalia 2 Blok 7/4 Cikarang Baru Bekasi	                    	K 	L	2	1998-10-01	\N	\N	51	85	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1367	27	K	1	1	3
97.03.061   	Joko Mulyono	48.072.199.2-414.000     	Magetan	1977-05-22	Mutiara Bekasi Jaya Blok L12/6 Cibarusah Bks	96K10627012         	K 	L	2	1996-09-02	\N	\N	51	88	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1368	27	K	1	1	3
11.09.343   	Lia Widiasari	67.092.147.7-524.000     	Magelang	1989-02-14	Mutiara Bekasi Jaya Blok L12A/7A Cibarusah Bks	                    	T 	P	0	2008-02-21	\N	\N	52	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1369	18	T	9	1	3
04.05.212   	Dede Nuryadi	48.072.635.5-013.000     	Jakarta	1980-01-04	Jl. Durian No.18 Rt.007/04 Petukangan Jak-Sel	                    	K 	L	1	2003-05-08	\N	\N	52	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1370	21	K	2	1	3
04.05.211   	Malvin Lingga Agung	48.072.072.1-414.000     	Jakarta	1982-05-06	Kp.Pagaulan Rt.11/02 No.06 Ckrg Selatan Bekasi	                    	K 	L	2	2003-05-08	\N	\N	52	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1371	21	K	2	1	3
11206519    	Sadam Bastian	45.988.857.4-435.000     	Bekasi	1991-07-18	Kp.Cironggeng Brt Rt.001/008 Wanajaya Cbt Bkasi	                    	T 	L	0	2012-06-18	\N	\N	52	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1372	30	T	8	1	3
11211524    	Juliyanto Bagaskara	46.574.673.3-414.000     	Pemalang	1992-07-19	Bumi Waringin Indah C9/11 Waringinjaya Kd.Waringin	                    	T 	L	0	2012-11-01	\N	\N	52	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1373	30	T	8	1	3
11309554    	Ramlan Herdiana	                         	Sumedang	1994-08-16	Bojongjati Rt07/03 Kebonjat Sumedng Utara Smdi	                    	T 	L	0	2013-09-01	\N	\N	52	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1374	30	T	8	1	3
11309549    	Ilham Permana	35.223.677.2-425.000     	Tasikmalaya	1991-12-02	Kp.Kukun Rt12/06 Ciantra Ckr Selatan Bekasi	                    	T 	L	0	2013-09-01	\N	\N	52	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1375	30	T	8	1	3
11309552    	Tedi Supriadi	                         	Purwakarta	1990-10-22	Ds.Cihuni Rt.04/02 Pasawahan Purwakarta	                    	T 	L	0	2013-09-01	\N	\N	52	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1376	30	T	8	1	3
11309553    	Muhammad Ikhsan Hidayat	36.357.612.5-502.000     	Pekalongan	1993-04-16	Ds.Ganda Mekar Cibitung Bekasi	                    	T 	L	0	2013-09-01	\N	\N	52	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1377	30	T	8	1	3
11402559    	Sarsinatun	08.902.073.9-523.000     	Kebumen	1993-04-17	Telaga Asih Rt.001/005 Cikbar Bekasi	                    	T 	P	0	2014-02-20	\N	\N	52	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1378	30	T	8	1	3
11402561    	Romana Tika Astari	36.677.756.3-525.000     	Klaten	1993-07-17	Kp.Leuweung Malang Sukaresmi Ckr Slatan Bekasi	                    	T 	P	0	2014-02-20	\N	\N	52	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1379	30	T	8	1	3
11402560    	Elvina Rodhiyatul Istiqom	                         	Boyolali	1995-03-16	Perum Ksb Blk D24 No.13 Rt.06/016 Serang Baru Bks	                    	T 	P	0	2014-02-20	\N	\N	52	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1380	30	T	8	1	3
13.02.357   	Lilis Sumiati	78.007.000.9-532.000     	Bekasi	1990-09-19		                    	T 	P	0	2013-02-11	\N	\N	52	67	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1381	30	T	8	1	3
11.05.338   	Fajar Setiawan	67.092.132.9-523.000     	Jakarta	1988-09-17	Mega Regency Blok F22/38 Serang Baru Bekasi	                    	K 	L	0	2008-03-17	\N	\N	52	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1382	30	K	8	1	3
11.05.337   	Warcito	67.092.136.0-437.000     	Indramayu	1988-02-11	Ds. Sukaresmi Rt.07/01 Cikarang Sltn Bekasi	                    	K 	L	1	2008-03-17	\N	\N	52	70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1383	30	K	9	1	3
11.10.344   	Ninuk Werdiningsih	67.092.128.7-435.000     	Jakarta	1989-02-02	Jl.Mekarsari Barat Rt.06/17 No.25 Kp.Kobak Tbn Slt	                    	T 	P	0	2007-09-03	\N	\N	52	71	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1384	30	T	9	1	3
07.07.307   	Agus Tri Susanto	48.072.066.3-414.000     	Magelang	1987-08-01	Jl.Dawai Pagaulan Taman Sentosa Ckr Selatan Bks	                    	K 	L	1	2006-01-11	\N	\N	52	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1385	30	K	2	1	3
08.08.320   	Erik Satiawan	48.072.087.9-621.000     	Madiun	1984-12-07	Rt09/02 Pagaulan Sukaresmi Cikarang Selatan Bks	                    	K 	L	1	2006-01-11	\N	\N	52	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1386	30	K	2	1	3
04.05.213   	Rif An Khariri	48.072.070.5-414.000     	Purworejo	1980-05-23	Mutiara Bekasi Jaya Blok L17/16 Cibarusah Bekasi	                    	K 	L	1	2003-05-08	\N	\N	52	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1387	30	K	2	1	3
04.05.210   	Sumarno	48.072.057.2-414.000     	Banyumas	1981-12-19	Rt.16/06 Pasir Konci Cikarang Selatan Bekasi	                    	K 	L	1	2003-05-08	\N	\N	52	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1388	30	K	2	1	3
05.12.252   	Bambang Setiawan	48.072.055.6-435.000     	Wonogiri	1985-02-05	Kp. Pegaulan Rt 11/02 Sukaresmi Cikarang Selatan	                    	K 	L	1	2004-12-20	\N	\N	52	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1389	30	K	2	1	3
05.12.255   	Wahyu Hidayat (L)	48.072.074.7-414.000     	Bekasi	1982-03-05	Jl. Hm. Jamil No. 19 Rt 19/01 Cikarang Selatan	                    	K 	L	1	2004-12-20	\N	\N	52	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1390	30	K	2	1	3
00.05.115   	Alimudin	48.072.078.8-413.000     	Jakarta	1977-03-20	Rt.012/04 No.15 Pl Gebang Cakung Jkt Timur	99K10141042         	K 	L	1	1999-05-10	\N	\N	52	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1391	30	K	2	1	3
02.02.170   	Arjuna	48.072.581.1-414.000     	Pelawe	1980-05-31	Jl.Puma Viii No.68 Cikarang Baru Bekasi	01K10051924         	K 	L	2	2001-02-06	\N	\N	52	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1392	30	K	2	1	3
05.12.254   	Abdul Jalil	48.072.061.4-414.000     	Kuningan	1977-01-24	Mutiara Bekasi Jaya Blok A5/15 Cibarusah Bekasi	                    	K 	L	1	2004-12-20	\N	\N	52	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1393	30	K	2	1	3
97.09.080   	Darin Ilmiyati	48.072.084.6-426.000     	Nganjuk	1978-05-15	Kp.Sempu Rt.004/05 Ps.Gombong Ckr Pusat Bekasi	97K10247975         	T 	P	0	1997-03-31	\N	\N	52	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1394	30	T	2	1	3
97.09.079   	Suciati	48.072.082.0-413.000     	Magelang	1975-01-24	Bojong Koneng Rt.02/06 Tlg Murni Cibitung Bekasi	97K10247959         	T 	L	0	1997-03-24	\N	\N	52	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1395	30	T	2	1	3
97.10.081   	Supatmi	48.072.086.1-507.000     	Blora	1977-08-11	Ds.Sukaresmi Rt.03/1 Cikarang Selatan Bekasi	97K10247983         	T 	P	0	1997-04-02	\N	\N	52	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1396	30	T	2	1	3
94.10.003   	M.  Djuanda Daming	48.072.059.8-413.000     	Ujung Pandang	1966-10-24	Perum.Tti Ii  Jl.Teratai Vii Blok H7/11 Tambun Bks	93J40299328         	K 	L	0	1994-04-01	\N	\N	53	94	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1397	29	K	5	1	3
95.10.012   	Nana Sutiana	48.072.593.6-414.000     	Kuningan	1972-12-04	Mutiara Bekasi Jaya Blok B7-19 Cibarusah Bekasi	95K10528535         	K 	L	3	1995-04-13	\N	\N	54	88	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1398	19	K	1	1	3
00.10.121   	Antonio	48.072.235.4-413.000     	Jakarta	1978-06-04	Perum.Puri Cendana Blok D5 No.17 Tambun Bks	99K10583144         	K 	L	3	1999-10-05	\N	\N	54	76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1399	21	K	2	1	3
99.10.107   	Rahman	48.072.619.9-413.000     	Yogyakarta	1978-12-10	Rt.01/01 Kebon Kopi Serang Ckr Selatan Bekasi	98K10293175         	K 	L	1	1998-10-01	\N	\N	54	76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1400	21	K	2	1	3
13.12.363   	Sugiarto	46.159.855.9-009.000     	Cilacap	1990-07-04	Jeruklegi Kulon Rt.05/01 Jeruklegi Cilacap	                    	T 	L	0	2010-10-14	\N	\N	54	66	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1401	30	T	2	1	3
13.12.362   	Kusnandar	                         	Kuningan	1985-12-26	Kp.Rw.Citra Rt.01/03 Telaga Asih Cikarang Brt	                    	K 	L	1	2010-10-01	\N	\N	54	66	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1402	30	K	8	1	3
12.11.351   	Haris Sugiana	35.612.631.8-409.000     	Purwakarta	1991-08-20	Ds.Cihuni Rt.04/02 Kec.Pasawahan Purwakarta	                    	T 	L	0	2010-11-04	\N	\N	54	68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1403	30	T	2	1	3
11203506    	Ahmad Gusaeri	45.257.094.8-413.000     	Bekasi	1992-08-12	Kp.Cikedokan Rt.02/06 Cikedokan Ckr Brt Bekasi	                    	T 	L	0	2012-03-21	\N	\N	54	68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1404	30	T	8	1	3
10.09.332   	Supriadi	67.092.148.5-413.000     	Bekasi	1989-05-21	Serang Rt.01/01 No.3 Serang Ckr Selatan Bekasi	                    	T 	L	0	2007-09-18	\N	\N	54	71	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1405	30	T	8	1	3
06.06.284   	Kasih	48.072.095.2-414.000     	Klaten	1985-03-09	Kp.Pasir Konci Rt.18/07 Ps.Sari Ckr Selatan Bekasi	                    	K 	L	1	2005-06-01	\N	\N	54	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1406	30	K	2	1	3
07.07.312   	Eko Nurdiyanto	48.072.242.0-414.000     	Wonogiri	1986-10-02	Jl.Rusa Blok J/85 Cikarang Baru Bekasi	                    	K 	L	1	2006-01-11	\N	\N	54	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1407	30	K	2	1	3
04.11.235   	Heri Maryanto	48.072.155.4-523.000     	Kebumen	1985-03-18	Kel. Sertajaya Rt.02/09 No.3 Cikarang Timur Bekasi	                    	K 	L	1	2003-11-03	\N	\N	54	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1408	30	K	2	1	3
04.11.236   	Aris Prayitno	48.072.248.7-413.000     	Cilacap	1983-07-07	Jl.Andini Sakti No.222 Rt.01/02 Cikarang Barat Bks	                    	T 	L	0	2003-11-03	\N	\N	54	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1409	30	T	2	1	3
02.02.171   	Yoqki Kuswanto	48.072.186.9-414.000     	Sleman	1980-01-08	Jl.Industri No. 83 Cikarang Utara Bekasi	99K10366524         	K 	L	1	2001-02-06	\N	\N	54	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1410	30	K	2	1	3
03.02.177   	Tri Sutanto	48.072.587.8-407.000     	Klaten	1981-02-12	Rt.02/01 No.31 Serang Cikarang Selatan Bekasi	02KE0019053         	K 	L	2	2002-02-11	\N	\N	54	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1411	30	K	2	1	3
03.02.182   	Suwarto	48.072.131.5-414.000     	Purworejo	1982-10-18	Jl.Rusa Vii K/98 Cikarang Baru Bekasi	02KE0019004         	K 	L	2	2002-02-11	\N	\N	54	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1412	30	K	2	1	3
04.01.200   	Bedi Mukti Jubaedi	48.072.244.6-414.000     	Subang	1980-06-26	Kp.Tanah Baru Rt.003/001 Cikarang Utara Bekasi	03KE0001604         	K 	L	1	2003-01-13	\N	\N	54	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1413	30	K	2	1	3
04.01.199   	Asep Farid Ma Rup	48.072.662.9-425.000     	Tasikmalaya	1976-08-25	Kp.Gandaria Rt.018/06 Cibarusah Kota Bekasi	03KE0001646         	K 	L	1	2003-01-13	\N	\N	54	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1414	30	K	2	1	3
96.03.032   	Nana Suryana	48.072.239.6-414.000     	Ciamis	1977-03-22	V M C Blok F9/02 Ciantra Rt.017/007 Ckr Sltn Bekas	95K10614301         	K 	L	2	1995-09-19	\N	\N	54	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1415	30	K	2	1	3
10.09.328   	Widi Permadi	67.092.125.3-409.000     	Purwakarta	1985-10-29	Jl.Flamboyan 286 Kebon Kolot Brt Nagri Kaler Bdg	                    	K 	L	1	2008-09-01	\N	\N	55	84	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1416	21	K	3	1	5
11310555    	Niko Prabancoro Noor  R.	58.607.291.0-721.000     	Surakarta	1988-11-12	Cisitu Lama Gg5 No46C/1548 Rt006/010 Dago Bandung	                    	T 	L	0	2013-10-21	\N	\N	55	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1417	32	T	3	1	5
11310556    	Farhan Dhiya Ul Haq	26.205.844.9-432.000     	Bekasi	1986-03-04	Jl.Burangrang 3 No13 Rt06/11 Ky Ringin Bks Sltn	                    	K 	L	0	2013-10-21	\N	\N	55	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1418	32	K	5	1	5
10.06.326   	Joko Purwono	57.269.297.8-504.000     	Semarang	1984-06-20	Kebonharjo Rt.001/007 Tj.Mas Semarang Utara	                    	K 	L	1	2008-12-09	\N	\N	55	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1419	32	K	3	1	5
10.09.329   	Adam Saputra R	67.092.116.2-421.000     	Bandung	1982-08-08	Komp. Depnaker Jl.Nuri Blok L No.105 Bekasi Utara	                    	K 	L	1	2008-09-01	\N	\N	55	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1420	32	K	5	1	5
11.07.340   	Aldila Sagarayudha	79.693.116.0-412.000     	Bandung	1983-12-11	Kp.Sidamukti Rt05/05 Sukamaju Sukmajaya Depok	                    	K 	L	2	2010-01-04	\N	\N	55	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1421	32	K	5	1	5
11.07.339   	Mefriansyah	576931885-407.000        	Palembang	1976-05-11	Jl.Pahlawan 22/2 Rt007/004 Duren Jaya Bks Timur Bk	                    	K 	L	1	2010-01-04	\N	\N	55	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1422	32	K	5	1	5
01.02.129   	Dian Apriadi	48.072.152.1-407.000     	Jakarta	1980-04-11	Jl. Chairil Anwar No.13 Rt.06/08 Margahayu Bks	00K10061560         	K 	L	1	2000-02-07	\N	\N	56	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1423	21	K	2	1	3
95.10.017   	Toto Sartono	48.072.154.7-414.000     	Kuningan	1970-01-27	Rt.01/01 Kebon Kopi Serang Ckr Selatan Bekasi	95K10528576         	K 	L	1	1995-04-24	\N	\N	56	77	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1424	21	K	2	1	3
96.09.047   	Heri Yusman	48.072.144.8-414.000     	Blora	1974-06-01	Villa Mutiara Cikarang Blok Ho5/7 Bekasi	                    	K 	L	1	1996-03-04	\N	\N	56	78	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1425	28	K	1	1	3
11402563    	Ririn	98.391.381.5-414.000     	Bekasi	1993-09-28	Perum.Taman Raya Ckr Blk A4/15 Sukaraya Krbhgia Bk	                    	T 	P	0	2014-02-20	\N	\N	56	65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1426	30	T	8	1	3
04.05.220   	Sutarto	48.072.142.2-525.000     	Sukoharjo	1979-08-21	Kp.Tegalgede Rt.13/06 Cikarang Utara Bekasi	                    	K 	L	2	2003-05-08	\N	\N	56	67	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1427	30	K	2	1	3
04.05.221   	Edi Saryanta	48.072.146.3-414.000     	Klaten	1982-09-17	Kontr.H.Rum Sukadami Rt.11/06 Serang Bekasi	                    	K 	L	2	2003-05-08	\N	\N	56	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1428	30	K	2	1	3
04.05.219   	Samsul Bahar	48.072.123.2-006.000     	Bandung	1976-06-16	Jl.Balai Rakyat Rt.008/04 Cakung Jak-Tim	                    	K 	L	1	2003-05-08	\N	\N	56	73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1429	30	K	2	1	3
01.11.157   	Yoyon Supriyono	48.072.660.3-414.000     	Kuningan	1980-08-11	Kp.Kebon Kopi Rt.01/01 Serang Ckr Sltn Bekasi	00K10848545         	K 	L	2	2000-11-13	\N	\N	56	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1430	30	K	2	1	3
97.03.071   	Adnan Karim	24.819.655.2-413.000     	U.Pandang	1978-04-16	Villa Mutiara Cikarang Blok C5/10 Ckr Sltn Bks	96K10627103         	K 	L	2	1996-09-17	\N	\N	56	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1431	30	K	2	1	3
95.10.013   	Acin	48.072.140.6-414.000     	Kuningan	1974-08-19	Rt.01/01 Kebon Kopi Serang Ckr Selatan Bekasi	95K10422309         	K 	L	2	1995-04-08	\N	\N	56	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1432	30	K	7	1	3
\.


--
-- Name: tb_karyawan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tb_karyawan_id_seq', 1432, true);


--
-- Data for Name: tb_level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_level (level_id, level_name) FROM stdin;
1	root
2	Administrator
3	operator
\.


--
-- Data for Name: tb_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_menu (menu_id, menu_nama, menu_uri, menu_allowed, id_item) FROM stdin;
1	Manajemen Menu	home/manajemen_menu	+1+	\N
2	Manajemen Transaksi	home/manajemen_user	+1+2+	\N
3	Input Transaksi	home/input_transaksi	+1+2+3+	\N
4	Item Data	home/item_data	+1+2+3+	\N
\.


--
-- Name: tb_menu_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tb_menu_menu_id_seq', 4, true);


--
-- Data for Name: tb_pendidikan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_pendidikan (id, kd_pendidikan, pendidikan_name, modified) FROM stdin;
1	SMA	SEKOLAH MENEHGAH ATAS	2014-05-16 11:20:03.337817
2	SLA	SEKOLAH LANJUT	2014-05-19 07:54:49.681719
3	D3	DIPLOMA 3	2014-05-19 07:55:19.717348
4	D4	DIPLOMA 4	2014-05-19 07:55:28.348159
5	S1	STRATA 1	2014-05-19 07:55:51.062254
6	S2	STRATA 2	2014-05-19 07:56:02.534718
7	SLP	SEKOLAH LANJUT	2014-05-19 10:28:10.518842
8	SMK	SEKOLAH MENENGAH KEJURUAN	2014-05-19 10:29:04.351404
9	SMU	SEKOLAM UMUM	2014-05-19 10:29:45.086533
\.


--
-- Name: tb_pendidikan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tb_pendidikan_id_seq', 9, true);


--
-- Data for Name: tb_transport; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_transport (id, kd_transport, transport_name, modified, tunj_transport) FROM stdin;
1	MTR	MOTOR	2014-05-16 11:20:41.322876	\N
2	MBL	MOBIL	2014-05-19 08:22:20.997124	\N
\.


--
-- Name: tb_transport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tb_transport_id_seq', 2, true);


--
-- Data for Name: tb_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_user (user_id, user_nama, user_username, user_password, user_level) FROM stdin;
1	root	root	63a9f0ea7bb98050796b649e85481845	1
2	admin	admin	21232f297a57a5a743894a0e4a801fc3	2
3	operator	operator	4b583376b2767b923c3e1da60d10de59	3
\.


--
-- Name: tb_user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tb_user_user_id_seq', 3, true);


--
-- Name: kd_grade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_grade
    ADD CONSTRAINT kd_grade_pkey PRIMARY KEY (id);


--
-- Name: tb_agama_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_agama
    ADD CONSTRAINT tb_agama_pkey PRIMARY KEY (id);


--
-- Name: tb_departemen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_departemen
    ADD CONSTRAINT tb_departemen_pkey PRIMARY KEY (id);


--
-- Name: tb_divisi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_divisi
    ADD CONSTRAINT tb_divisi_pkey PRIMARY KEY (id);


--
-- Name: tb_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_item
    ADD CONSTRAINT tb_item_pkey PRIMARY KEY (item_id);


--
-- Name: tb_itemreq_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_itemreq
    ADD CONSTRAINT tb_itemreq_pkey PRIMARY KEY (id_req);


--
-- Name: tb_jabatan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_jabatan
    ADD CONSTRAINT tb_jabatan_pkey PRIMARY KEY (id);


--
-- Name: tb_karyawan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_karyawan
    ADD CONSTRAINT tb_karyawan_pkey PRIMARY KEY (id);


--
-- Name: tb_level_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_level
    ADD CONSTRAINT tb_level_pkey PRIMARY KEY (level_id);


--
-- Name: tb_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_menu
    ADD CONSTRAINT tb_menu_pkey PRIMARY KEY (menu_id);


--
-- Name: tb_pendidikan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_pendidikan
    ADD CONSTRAINT tb_pendidikan_pkey PRIMARY KEY (id);


--
-- Name: tb_transport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_transport
    ADD CONSTRAINT tb_transport_pkey PRIMARY KEY (id);


--
-- Name: tb_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tb_user
    ADD CONSTRAINT tb_user_pkey PRIMARY KEY (user_id);


--
-- Name: tb_itemreq_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_itemreq
    ADD CONSTRAINT tb_itemreq_item_id_fkey FOREIGN KEY (item_id) REFERENCES tb_item(item_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tb_karyawan_kd_agama_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_karyawan
    ADD CONSTRAINT tb_karyawan_kd_agama_fkey FOREIGN KEY (kd_agama) REFERENCES tb_agama(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tb_karyawan_kd_departemen_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_karyawan
    ADD CONSTRAINT tb_karyawan_kd_departemen_fkey FOREIGN KEY (kd_departemen) REFERENCES tb_departemen(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tb_karyawan_kd_divisi_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_karyawan
    ADD CONSTRAINT tb_karyawan_kd_divisi_fkey FOREIGN KEY (kd_divisi) REFERENCES tb_divisi(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tb_karyawan_kd_grade_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_karyawan
    ADD CONSTRAINT tb_karyawan_kd_grade_fkey FOREIGN KEY (kd_grade) REFERENCES tb_grade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tb_karyawan_kd_jabatan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_karyawan
    ADD CONSTRAINT tb_karyawan_kd_jabatan_fkey FOREIGN KEY (kd_jabatan) REFERENCES tb_jabatan(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tb_karyawan_kd_pendidikan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_karyawan
    ADD CONSTRAINT tb_karyawan_kd_pendidikan_fkey FOREIGN KEY (kd_pendidikan) REFERENCES tb_pendidikan(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tb_karyawan_kd_transport_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_karyawan
    ADD CONSTRAINT tb_karyawan_kd_transport_fkey FOREIGN KEY (kd_transport) REFERENCES tb_transport(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tb_user_user_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_user
    ADD CONSTRAINT tb_user_user_level_fkey FOREIGN KEY (user_level) REFERENCES tb_level(level_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

