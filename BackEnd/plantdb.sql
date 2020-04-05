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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: plantdatabase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plantdatabase (
    id integer NOT NULL,
    name character varying NOT NULL,
    lighting integer,
    soil_moisture integer,
    temp_low integer,
    temp_high integer,
    drought integer,
    care_difficulty integer,
    img_path character varying
);


ALTER TABLE public.plantdatabase OWNER TO postgres;

--
-- Data for Name: plantdatabase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plantdatabase (id, name, lighting, soil_moisture, temp_low, temp_high, drought, care_difficulty, img_path) FROM stdin;
1	Daylilies	3	2	-30	35	2	1	../Resources/Images/daylily.jpg
2	Tall Bearded Iris Immortality	4	2	-40	25	3	2	../Resources/Images/iris.jpg
3	Hot Pepper Habanero	3	2	20	50	1	2	../Resources/Images/habanero.jpg
4	Hydrangea Species, Oakleaf Hydrangea, Oak-leaf Hydrangea	3	2	-10	25	2	1	../Resources/Images/oakleaf.jpg
5	Hosta Frances Williams	2	2	-40	15	3	1	../Resources/Images/hosta.jpg
6	Japanese Maple Butterfly	2	2	-10	25	3	1	../Resources/Images/maple_butterfly.jpg
7	Hibiscus, Rose of Sharon, Shrub Althea	4	2	-20	40	2	2	../Resources/Images/hibiscus.jpg
8	Sansevieria Species, Mother-in-Laws Tongue, Saint Georges Sword, Snake Plant	2	1	30	40	3	1	../Resources/Images/snake_plant.jpg
9	Cenchrus, Purple Fountain Grass, Rose Fountain Grass Rubrum	3	2	20	40	3	1	../Resources/Images/purple_grass.jpg
10	Piper Species, Hoja Santa, Mexican Pepperleaf, Root Beer Plant	1	3	10	40	1	1	../Resources/Images/root_beer.jpg
11	Habanero Pepper Carribean Red	3	2	-30	30	1	3	../Resources/Images/carribean_red.jpg
12	Habanero Pepper Orange Habanero	4	2	-30	30	1	2	../Resources/Images/orange_habanero.jpg
13	Habanero Pepper White Habanero	4	2	-40	30	1	3	../Resources/Images/white_habanero.jpg
\.


--
-- Name: plantdatabase plantdatabase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plantdatabase
    ADD CONSTRAINT plantdatabase_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

