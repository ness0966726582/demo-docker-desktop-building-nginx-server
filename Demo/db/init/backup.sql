--
-- PostgreSQL database cluster dump
--

-- Started on 2024-12-17 16:27:20

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE demo_user;
ALTER ROLE demo_user WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:KnjMcCZUjK/JmC9AV7E11A==$0E1J4I2UuiZpV9N4SuBZfp46HZ4L4MFAj5m6ZnR37Bg=:yqmAvvAkDP+9YoqZwGsYYSA+iZV0+4Ws5Hoz6G3HrQ4=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.1

-- Started on 2024-12-17 16:27:20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2024-12-17 16:27:21

--
-- PostgreSQL database dump complete
--

--
-- Database "demo_db" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.1

-- Started on 2024-12-17 16:27:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3382 (class 1262 OID 16384)
-- Name: demo_db; Type: DATABASE; Schema: -; Owner: demo_user
--

CREATE DATABASE demo_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE demo_db OWNER TO demo_user;

\connect demo_db

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16524)
-- Name: it_staff; Type: TABLE; Schema: public; Owner: demo_user
--

CREATE TABLE public.it_staff (
    id integer NOT NULL,
    full_name character varying(255) NOT NULL,
    status integer NOT NULL
);


ALTER TABLE public.it_staff OWNER TO demo_user;

--
-- TOC entry 219 (class 1259 OID 16523)
-- Name: it_staff_id_seq; Type: SEQUENCE; Schema: public; Owner: demo_user
--

CREATE SEQUENCE public.it_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.it_staff_id_seq OWNER TO demo_user;

--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 219
-- Name: it_staff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: demo_user
--

ALTER SEQUENCE public.it_staff_id_seq OWNED BY public.it_staff.id;


--
-- TOC entry 218 (class 1259 OID 16517)
-- Name: staff_status; Type: TABLE; Schema: public; Owner: demo_user
--

CREATE TABLE public.staff_status (
    id integer NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE public.staff_status OWNER TO demo_user;

--
-- TOC entry 221 (class 1259 OID 16540)
-- Name: it_staff_with_status; Type: VIEW; Schema: public; Owner: demo_user
--

CREATE VIEW public.it_staff_with_status AS
 SELECT it_staff.id AS staff_id,
    it_staff.full_name,
    it_staff.status,
    staff_status.description AS status_description
   FROM (public.it_staff
     JOIN public.staff_status ON ((it_staff.status = staff_status.id)));


ALTER VIEW public.it_staff_with_status OWNER TO demo_user;

--
-- TOC entry 217 (class 1259 OID 16516)
-- Name: staff_status_id_seq; Type: SEQUENCE; Schema: public; Owner: demo_user
--

CREATE SEQUENCE public.staff_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staff_status_id_seq OWNER TO demo_user;

--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 217
-- Name: staff_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: demo_user
--

ALTER SEQUENCE public.staff_status_id_seq OWNED BY public.staff_status.id;


--
-- TOC entry 3220 (class 2604 OID 16527)
-- Name: it_staff id; Type: DEFAULT; Schema: public; Owner: demo_user
--

ALTER TABLE ONLY public.it_staff ALTER COLUMN id SET DEFAULT nextval('public.it_staff_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16520)
-- Name: staff_status id; Type: DEFAULT; Schema: public; Owner: demo_user
--

ALTER TABLE ONLY public.staff_status ALTER COLUMN id SET DEFAULT nextval('public.staff_status_id_seq'::regclass);


--
-- TOC entry 3376 (class 0 OID 16524)
-- Dependencies: 220
-- Data for Name: it_staff; Type: TABLE DATA; Schema: public; Owner: demo_user
--

COPY public.it_staff (id, full_name, status) FROM stdin;
1	Ness Huang	1
2	xxxxx	2
\.


--
-- TOC entry 3374 (class 0 OID 16517)
-- Dependencies: 218
-- Data for Name: staff_status; Type: TABLE DATA; Schema: public; Owner: demo_user
--

COPY public.staff_status (id, description) FROM stdin;
1	enable
2	dsiable
\.


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 219
-- Name: it_staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: demo_user
--

SELECT pg_catalog.setval('public.it_staff_id_seq', 1, false);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 217
-- Name: staff_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: demo_user
--

SELECT pg_catalog.setval('public.staff_status_id_seq', 1, false);


--
-- TOC entry 3224 (class 2606 OID 16529)
-- Name: it_staff it_staff_pkey; Type: CONSTRAINT; Schema: public; Owner: demo_user
--

ALTER TABLE ONLY public.it_staff
    ADD CONSTRAINT it_staff_pkey PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16522)
-- Name: staff_status staff_status_pkey; Type: CONSTRAINT; Schema: public; Owner: demo_user
--

ALTER TABLE ONLY public.staff_status
    ADD CONSTRAINT staff_status_pkey PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 16530)
-- Name: it_staff fk_staff_status; Type: FK CONSTRAINT; Schema: public; Owner: demo_user
--

ALTER TABLE ONLY public.it_staff
    ADD CONSTRAINT fk_staff_status FOREIGN KEY (status) REFERENCES public.staff_status(id);


--
-- TOC entry 3226 (class 2606 OID 16535)
-- Name: it_staff it_staff_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: demo_user
--

ALTER TABLE ONLY public.it_staff
    ADD CONSTRAINT it_staff_status_fkey FOREIGN KEY (status) REFERENCES public.staff_status(id) NOT VALID;


-- Completed on 2024-12-17 16:27:21

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.1

-- Started on 2024-12-17 16:27:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2024-12-17 16:27:21

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-12-17 16:27:21

--
-- PostgreSQL database cluster dump complete
--

