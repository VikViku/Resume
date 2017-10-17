--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO viktorija;

--
-- Name: baths; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE baths (
    id integer NOT NULL,
    title character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    avatar_file_name character varying,
    avatar_content_type character varying,
    avatar_file_size integer,
    avatar_updated_at timestamp without time zone
);


ALTER TABLE baths OWNER TO viktorija;

--
-- Name: baths_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE baths_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE baths_id_seq OWNER TO viktorija;

--
-- Name: baths_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE baths_id_seq OWNED BY baths.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE categories (
    id integer NOT NULL,
    title character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE categories OWNER TO viktorija;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO viktorija;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE contacts (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    text text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE contacts OWNER TO viktorija;

--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE contacts_id_seq OWNER TO viktorija;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE contacts_id_seq OWNED BY contacts.id;


--
-- Name: educations; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE educations (
    id bigint NOT NULL,
    university character varying,
    course character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE educations OWNER TO viktorija;

--
-- Name: educations_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE educations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE educations_id_seq OWNER TO viktorija;

--
-- Name: educations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE educations_id_seq OWNED BY educations.id;


--
-- Name: experiences; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE experiences (
    id bigint NOT NULL,
    workplace character varying,
    occupation character varying,
    "desc" text,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE experiences OWNER TO viktorija;

--
-- Name: experiences_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE experiences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE experiences_id_seq OWNER TO viktorija;

--
-- Name: experiences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE experiences_id_seq OWNED BY experiences.id;


--
-- Name: interests; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE interests (
    id bigint NOT NULL,
    title character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE interests OWNER TO viktorija;

--
-- Name: interests_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE interests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE interests_id_seq OWNER TO viktorija;

--
-- Name: interests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE interests_id_seq OWNED BY interests.id;


--
-- Name: languages; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE languages (
    id bigint NOT NULL,
    name character varying,
    level character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE languages OWNER TO viktorija;

--
-- Name: languages_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE languages_id_seq OWNER TO viktorija;

--
-- Name: languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE languages_id_seq OWNED BY languages.id;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE photos (
    id bigint NOT NULL,
    image_uid character varying,
    image_name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE photos OWNER TO viktorija;

--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE photos_id_seq OWNER TO viktorija;

--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE photos_id_seq OWNED BY photos.id;


--
-- Name: price_lists; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE price_lists (
    id integer NOT NULL,
    program_id integer,
    procedure_id integer,
    price double precision,
    people integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "time" integer,
    bath_id integer
);


ALTER TABLE price_lists OWNER TO viktorija;

--
-- Name: price_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE price_lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE price_lists_id_seq OWNER TO viktorija;

--
-- Name: price_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE price_lists_id_seq OWNED BY price_lists.id;


--
-- Name: procedures; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE procedures (
    id integer NOT NULL,
    category_id integer,
    title character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    avatar_file_name character varying,
    avatar_content_type character varying,
    avatar_file_size integer,
    avatar_updated_at timestamp without time zone
);


ALTER TABLE procedures OWNER TO viktorija;

--
-- Name: procedures_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE procedures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE procedures_id_seq OWNER TO viktorija;

--
-- Name: procedures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE procedures_id_seq OWNED BY procedures.id;


--
-- Name: programs; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE programs (
    id integer NOT NULL,
    title character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    avatar_file_name character varying,
    avatar_content_type character varying,
    avatar_file_size integer,
    avatar_updated_at timestamp without time zone
);


ALTER TABLE programs OWNER TO viktorija;

--
-- Name: programs_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE programs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE programs_id_seq OWNER TO viktorija;

--
-- Name: programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE programs_id_seq OWNED BY programs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO viktorija;

--
-- Name: skills; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE skills (
    id bigint NOT NULL,
    title character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    level integer DEFAULT 0
);


ALTER TABLE skills OWNER TO viktorija;

--
-- Name: skills_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE skills_id_seq OWNER TO viktorija;

--
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE skills_id_seq OWNED BY skills.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE users (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    title character varying,
    "desc" text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    "isOwner" boolean,
    admin boolean DEFAULT false
);


ALTER TABLE users OWNER TO viktorija;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO viktorija;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: various_contents; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE various_contents (
    id integer NOT NULL,
    title character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    header_file_name character varying,
    header_content_type character varying,
    header_file_size integer,
    header_updated_at timestamp without time zone
);


ALTER TABLE various_contents OWNER TO viktorija;

--
-- Name: various_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE various_contents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE various_contents_id_seq OWNER TO viktorija;

--
-- Name: various_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE various_contents_id_seq OWNED BY various_contents.id;


--
-- Name: workshops; Type: TABLE; Schema: public; Owner: viktorija
--

CREATE TABLE workshops (
    id bigint NOT NULL,
    title character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE workshops OWNER TO viktorija;

--
-- Name: workshops_id_seq; Type: SEQUENCE; Schema: public; Owner: viktorija
--

CREATE SEQUENCE workshops_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE workshops_id_seq OWNER TO viktorija;

--
-- Name: workshops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: viktorija
--

ALTER SEQUENCE workshops_id_seq OWNED BY workshops.id;


--
-- Name: baths id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY baths ALTER COLUMN id SET DEFAULT nextval('baths_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY contacts ALTER COLUMN id SET DEFAULT nextval('contacts_id_seq'::regclass);


--
-- Name: educations id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY educations ALTER COLUMN id SET DEFAULT nextval('educations_id_seq'::regclass);


--
-- Name: experiences id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY experiences ALTER COLUMN id SET DEFAULT nextval('experiences_id_seq'::regclass);


--
-- Name: interests id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY interests ALTER COLUMN id SET DEFAULT nextval('interests_id_seq'::regclass);


--
-- Name: languages id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY languages ALTER COLUMN id SET DEFAULT nextval('languages_id_seq'::regclass);


--
-- Name: photos id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY photos ALTER COLUMN id SET DEFAULT nextval('photos_id_seq'::regclass);


--
-- Name: price_lists id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY price_lists ALTER COLUMN id SET DEFAULT nextval('price_lists_id_seq'::regclass);


--
-- Name: procedures id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY procedures ALTER COLUMN id SET DEFAULT nextval('procedures_id_seq'::regclass);


--
-- Name: programs id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY programs ALTER COLUMN id SET DEFAULT nextval('programs_id_seq'::regclass);


--
-- Name: skills id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY skills ALTER COLUMN id SET DEFAULT nextval('skills_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: various_contents id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY various_contents ALTER COLUMN id SET DEFAULT nextval('various_contents_id_seq'::regclass);


--
-- Name: workshops id; Type: DEFAULT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY workshops ALTER COLUMN id SET DEFAULT nextval('workshops_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-07-22 08:56:30.447723	2017-07-22 08:56:30.447723
\.


--
-- Data for Name: baths; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY baths (id, title, description, created_at, updated_at, avatar_file_name, avatar_content_type, avatar_file_size, avatar_updated_at) FROM stdin;
\.


--
-- Name: baths_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('baths_id_seq', 1, false);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY categories (id, title, created_at, updated_at) FROM stdin;
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('categories_id_seq', 1, false);


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY contacts (id, name, email, text, created_at, updated_at) FROM stdin;
3				2017-10-12 09:16:24.427236	2017-10-12 09:16:24.427236
4	Viktorija	s.vikvik@gmail.com	Ši žinutė, tai testas. Turiu gauti paštu pranešimą.	2017-10-12 10:53:48.836439	2017-10-12 10:53:48.836439
5	Viktorija Šukvietytė§	s.vikvik@gmail.com	rrrr	2017-10-12 10:56:13.083023	2017-10-12 10:56:13.083023
6	Viktorija Šukvietytė	s.vikvik@gmail.com	test	2017-10-12 11:43:08.685609	2017-10-12 11:43:08.685609
7	Viktorija Šukvietytė	s.vikvik@gmail.com	Tralialia	2017-10-12 11:49:51.455894	2017-10-12 11:49:51.455894
8	Viktorija Šukvietytė	s.vikvik@gmail.com		2017-10-12 11:54:37.527554	2017-10-12 11:54:37.527554
9	Viktorija Šukvietytė	s.vikvik@gmail.com		2017-10-12 11:57:20.470844	2017-10-12 11:57:20.470844
10	Viktorija Šukvietytė	s.vikvik@gmail.com	Sau laišką siunčiu	2017-10-12 11:57:40.689866	2017-10-12 11:57:40.689866
11	Viktorija Šukvietytė	s.vikvik@gmail.com	:)	2017-10-12 11:59:00.438922	2017-10-12 11:59:00.438922
12	Viktorija Šukvietytė	s.vikvik@gmail.com	lia lia lia	2017-10-12 14:57:38.004371	2017-10-12 14:57:38.004371
\.


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('contacts_id_seq', 12, true);


--
-- Data for Name: educations; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY educations (id, university, course, user_id, created_at, updated_at) FROM stdin;
6	Šiuolaikinės Mokyklos Centras	High School	1	2017-10-11 18:25:15.626943	2017-10-11 19:17:09.439476
4	Vilnius Gediminas Technical University	Bachelor of Computer Science	1	2017-10-05 08:50:46.580627	2017-10-12 07:40:58.720077
5	Free University of Bozen - Bolzano	Master of Computer Science	1	2017-10-05 08:52:03.119683	2017-10-12 09:00:22.314554
\.


--
-- Name: educations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('educations_id_seq', 6, true);


--
-- Data for Name: experiences; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY experiences (id, workplace, occupation, "desc", user_id, created_at, updated_at) FROM stdin;
4	Lithuanian Computer Society	System administrator at the conference	Responsible for registration of participants in a traditional biennial multi-event “Computer Days”. (http://www.liks.lt). Developer of information system for the registration of the event participants.	1	2017-10-05 08:53:28.416436	2017-10-05 08:53:28.416436
\.


--
-- Name: experiences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('experiences_id_seq', 4, true);


--
-- Data for Name: interests; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY interests (id, title, user_id, created_at, updated_at) FROM stdin;
4	Digital Photography	1	2017-10-05 08:54:08.005666	2017-10-05 08:54:08.005666
5	Travelling	1	2017-10-05 08:54:20.777191	2017-10-05 08:54:20.777191
6	Hiking	1	2017-10-05 08:54:29.579151	2017-10-05 08:54:29.579151
7	Aerial Yoga	1	2017-10-05 08:54:38.327065	2017-10-05 08:54:38.327065
\.


--
-- Name: interests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('interests_id_seq', 7, true);


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY languages (id, name, level, user_id, created_at, updated_at) FROM stdin;
1	English	B2	1	2017-07-22 08:56:31.391553	2017-07-22 08:56:31.391553
2	Italian	A2	1	2017-07-22 08:56:31.396996	2017-07-22 08:56:31.396996
3	Russian	A2	1	2017-07-22 08:56:31.40124	2017-10-05 08:55:11.74893
4	Lithuanian	Native	1	2017-10-05 08:55:44.272647	2017-10-05 09:23:56.921727
\.


--
-- Name: languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('languages_id_seq', 4, true);


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY photos (id, image_uid, image_name, created_at, updated_at) FROM stdin;
1	2017/10/13/58ss91okgu_12002890_10153170115997947_9072023379742194105_n.jpg	12002890_10153170115997947_9072023379742194105_n.jpg	2017-10-13 14:11:37.91492	2017-10-13 14:11:37.91492
2	2017/10/13/9oczbpgnm5_564_copy3.jpg	564 copy3.jpg	2017-10-13 14:48:25.818545	2017-10-13 14:48:25.818545
\.


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('photos_id_seq', 2, true);


--
-- Data for Name: price_lists; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY price_lists (id, program_id, procedure_id, price, people, created_at, updated_at, "time", bath_id) FROM stdin;
\.


--
-- Name: price_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('price_lists_id_seq', 1, false);


--
-- Data for Name: procedures; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY procedures (id, category_id, title, description, created_at, updated_at, avatar_file_name, avatar_content_type, avatar_file_size, avatar_updated_at) FROM stdin;
\.


--
-- Name: procedures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('procedures_id_seq', 1, false);


--
-- Data for Name: programs; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY programs (id, title, description, created_at, updated_at, avatar_file_name, avatar_content_type, avatar_file_size, avatar_updated_at) FROM stdin;
\.


--
-- Name: programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('programs_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY schema_migrations (version) FROM stdin;
20170628173118
20170629052939
20170629053326
20170629053406
20170629053450
20170629053635
20170629053751
20170629060339
20170708173916
20170708195457
20170711051243
20160120150330
20160121012803
20160121013148
20160121015050
20160122233723
20160123061755
20160125204745
20160126030609
20160126030931
20160126031121
20160126031237
20160126031253
20160126031700
20160126031755
20160126031845
20160126060202
20160126060314
20171005091627
20171005091937
20171013073114
20171013122618
20171013135611
20171013175357
\.


--
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY skills (id, title, user_id, created_at, updated_at, level) FROM stdin;
4	SQL	1	2017-10-05 08:56:54.477265	2017-10-05 08:56:54.477265	80
5	HTML5	1	2017-10-05 08:57:21.884831	2017-10-05 08:57:21.884831	80
6	CSS3	1	2017-10-05 08:58:08.352084	2017-10-05 08:58:08.352084	60
7	Javascript	1	2017-10-05 08:58:24.765342	2017-10-05 08:58:24.765342	40
8	Ruby	1	2017-10-05 08:58:34.762738	2017-10-05 08:58:34.762738	50
9	Python	1	2017-10-05 08:58:59.688706	2017-10-05 08:58:59.688706	50
10	Java	1	2017-10-05 08:59:08.990315	2017-10-05 08:59:08.990315	50
11	Photoshop	1	2017-10-05 08:59:29.489849	2017-10-05 08:59:29.489849	80
\.


--
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('skills_id_seq', 14, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY users (id, first_name, last_name, title, "desc", created_at, updated_at, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, "isOwner", admin) FROM stdin;
1	Viktorija	Šukvietytė	Freelancer Web Designer and Developer	Build websites, blogs and forums. Passionate about cutting edge web technologies.	2017-07-22 08:56:30.767923	2017-10-05 09:22:57.592683	viktorija.sukvietyte@gmail.com	$2a$11$t3FCBDvxm48Mlzs7jQsmSeiuD6nGj3hpdW/laiHaLTxk1DUa2mNTK	\N	\N	\N	1	2017-09-08 15:48:00	2017-09-08 15:48:00	127.0.0.1	127.0.0.1	t	f
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Data for Name: various_contents; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY various_contents (id, title, description, created_at, updated_at, header_file_name, header_content_type, header_file_size, header_updated_at) FROM stdin;
\.


--
-- Name: various_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('various_contents_id_seq', 1, false);


--
-- Data for Name: workshops; Type: TABLE DATA; Schema: public; Owner: viktorija
--

COPY workshops (id, title, user_id, created_at, updated_at) FROM stdin;
4	DJango Girls workshop	1	2017-10-05 09:05:13.354619	2017-10-05 09:05:13.354619
5	RailsGirls54 Workshop	1	2017-10-05 09:05:30.746765	2017-10-05 09:05:30.746765
\.


--
-- Name: workshops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: viktorija
--

SELECT pg_catalog.setval('workshops_id_seq', 5, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: baths baths_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY baths
    ADD CONSTRAINT baths_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: educations educations_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY educations
    ADD CONSTRAINT educations_pkey PRIMARY KEY (id);


--
-- Name: experiences experiences_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY experiences
    ADD CONSTRAINT experiences_pkey PRIMARY KEY (id);


--
-- Name: interests interests_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY interests
    ADD CONSTRAINT interests_pkey PRIMARY KEY (id);


--
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (id);


--
-- Name: photos photos_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: price_lists price_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY price_lists
    ADD CONSTRAINT price_lists_pkey PRIMARY KEY (id);


--
-- Name: procedures procedures_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY procedures
    ADD CONSTRAINT procedures_pkey PRIMARY KEY (id);


--
-- Name: programs programs_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: various_contents various_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY various_contents
    ADD CONSTRAINT various_contents_pkey PRIMARY KEY (id);


--
-- Name: workshops workshops_pkey; Type: CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY workshops
    ADD CONSTRAINT workshops_pkey PRIMARY KEY (id);


--
-- Name: index_educations_on_user_id; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE INDEX index_educations_on_user_id ON educations USING btree (user_id);


--
-- Name: index_experiences_on_user_id; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE INDEX index_experiences_on_user_id ON experiences USING btree (user_id);


--
-- Name: index_interests_on_user_id; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE INDEX index_interests_on_user_id ON interests USING btree (user_id);


--
-- Name: index_languages_on_user_id; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE INDEX index_languages_on_user_id ON languages USING btree (user_id);


--
-- Name: index_price_lists_on_bath_id; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE INDEX index_price_lists_on_bath_id ON price_lists USING btree (bath_id);


--
-- Name: index_price_lists_on_procedure_id; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE INDEX index_price_lists_on_procedure_id ON price_lists USING btree (procedure_id);


--
-- Name: index_price_lists_on_program_id; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE INDEX index_price_lists_on_program_id ON price_lists USING btree (program_id);


--
-- Name: index_procedures_on_category_id; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE INDEX index_procedures_on_category_id ON procedures USING btree (category_id);


--
-- Name: index_skills_on_user_id; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE INDEX index_skills_on_user_id ON skills USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: index_workshops_on_user_id; Type: INDEX; Schema: public; Owner: viktorija
--

CREATE INDEX index_workshops_on_user_id ON workshops USING btree (user_id);


--
-- Name: experiences fk_rails_2d0e25b521; Type: FK CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY experiences
    ADD CONSTRAINT fk_rails_2d0e25b521 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: languages fk_rails_33511b833c; Type: FK CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY languages
    ADD CONSTRAINT fk_rails_33511b833c FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: workshops fk_rails_e39f638ece; Type: FK CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY workshops
    ADD CONSTRAINT fk_rails_e39f638ece FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: skills fk_rails_ee47b87d76; Type: FK CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY skills
    ADD CONSTRAINT fk_rails_ee47b87d76 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: educations fk_rails_f18eeff57c; Type: FK CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY educations
    ADD CONSTRAINT fk_rails_f18eeff57c FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: interests fk_rails_fba4c79abd; Type: FK CONSTRAINT; Schema: public; Owner: viktorija
--

ALTER TABLE ONLY interests
    ADD CONSTRAINT fk_rails_fba4c79abd FOREIGN KEY (user_id) REFERENCES users(id);


--
-- PostgreSQL database dump complete
--

