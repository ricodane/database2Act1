--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6 (Ubuntu 11.6-1.pgdg16.04+1)
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-17 13:28:46

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

--
-- TOC entry 198 (class 1259 OID 3591364)
-- Name: activity; Type: TABLE; Schema: public; Owner: fdpmozjgoivqmm
--

CREATE TABLE public.activity (
    staffno character varying(5) NOT NULL,
    tutorname character varying NOT NULL,
    tuteeno character varying(4) NOT NULL,
    tuteename character varying,
    date date NOT NULL,
    "time" numeric(4,2) NOT NULL,
    tutorialno character varying(3) NOT NULL
);


ALTER TABLE public.activity OWNER TO fdpmozjgoivqmm;

--
-- TOC entry 197 (class 1259 OID 3583115)
-- Name: temp; Type: TABLE; Schema: public; Owner: fdpmozjgoivqmm
--

CREATE TABLE public.temp (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.temp OWNER TO fdpmozjgoivqmm;

--
-- TOC entry 196 (class 1259 OID 3583113)
-- Name: temp_id_seq; Type: SEQUENCE; Schema: public; Owner: fdpmozjgoivqmm
--

CREATE SEQUENCE public.temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_id_seq OWNER TO fdpmozjgoivqmm;

--
-- TOC entry 3837 (class 0 OID 0)
-- Dependencies: 196
-- Name: temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fdpmozjgoivqmm
--

ALTER SEQUENCE public.temp_id_seq OWNED BY public.temp.id;


--
-- TOC entry 3706 (class 2604 OID 3583118)
-- Name: temp id; Type: DEFAULT; Schema: public; Owner: fdpmozjgoivqmm
--

ALTER TABLE ONLY public.temp ALTER COLUMN id SET DEFAULT nextval('public.temp_id_seq'::regclass);


--
-- TOC entry 3708 (class 2606 OID 3583120)
-- Name: temp temp_pkey; Type: CONSTRAINT; Schema: public; Owner: fdpmozjgoivqmm
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_pkey PRIMARY KEY (id);


--
-- TOC entry 3835 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: fdpmozjgoivqmm
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO fdpmozjgoivqmm;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 3836 (class 0 OID 0)
-- Dependencies: 599
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO fdpmozjgoivqmm;


-- Completed on 2019-12-17 13:29:03

--
-- PostgreSQL database dump complete
--

