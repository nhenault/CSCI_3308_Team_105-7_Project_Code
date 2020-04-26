--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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

--
-- Name: loginsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS loginsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION loginsql; Type: COMMENT; Schema: -; Owner:
--


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: plantdatabase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logindatabase (
    id integer NOT NULL,
    password varchar(255) NOT NULL,
    email varchar(100) NOT NULL
);


ALTER TABLE public.logindatabase OWNER TO postgres;


--
-- Name: plantdatabase plantdatabase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logindatabase
    ADD CONSTRAINT logindatabase_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
