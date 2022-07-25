-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    number integer,
    description text,
    verdad boolean,
    phone numeric,
    pepe character varying(10) NOT NULL,
    coca integer,
    cocaa integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    number integer,
    description text,
    verdad boolean,
    phone numeric,
    pepe character varying(10) NOT NULL,
    coca integer,
    cocaa integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    name character varying(10),
    id integer,
    phone integer,
    more_info_id integer NOT NULL,
    pepe character varying(10) NOT NULL,
    coca integer,
    cocaa integer
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    number integer,
    description text,
    verdad boolean,
    phone numeric,
    pepe character varying(10) NOT NULL,
    coca integer,
    cocaa integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    number integer,
    description text,
    verdad boolean,
    phone numeric,
    pepe character varying(10) NOT NULL,
    coca integer,
    cocaa integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'estrella', 1, 'hola a todos', true, 123, 'lol', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'estrella', 1, 'hola a todos', true, 123, 'lop', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'estrella', 1, 'hola a todos', true, 123, 'tom', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'estrella', 1, 'hola a todos', true, 123, 'mor', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'estrella', 1, 'hola a todos', true, 123, 'losdgf', NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'estrella', 1, 'hola a todos', true, 123, 'losf', NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'estrella', 1, 'hola a todos', true, 123, 'siete', NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'estrella', 1, 'hola a todos', true, 123, 'ocho', NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'estrella', 1, 'hola a todos', true, 123, 'nueve', NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'estrella', 1, 'hola a todos', true, 123, 'diez', NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'estrella', 1, 'hola a todos', true, 123, 'once', NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'estrella', 1, 'hola a todos', true, 123, 'doce', NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'estrella', 1, 'hola a todos', true, 123, 'trece', NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'estrella', 1, 'hola a todos', true, 123, 'catorce', NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'estrella', 1, 'hola a todos', true, 123, 'quince', NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'estrella', 1, 'hola a todos', true, 123, 'diecises', NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'estrella', 1, 'hola a todos', true, 123, 'diecisiete', NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'estrella', 1, 'hola a todos', true, 123, 'dieciocho', NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'estrella', 1, 'hola a todos', true, 123, 'diecinueve', NULL, NULL);
INSERT INTO public.galaxy VALUES (21, 'estrella', 1, 'hola a todos', true, 123, 'veinte', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'estrella', 1, 'hola', true, 123, 'losf', NULL, NULL);
INSERT INTO public.moon VALUES (2, 'estrella', 1, 'hola', true, 123, 'lol', NULL, NULL);
INSERT INTO public.moon VALUES (3, 'estrella', 1, 'hola', true, 123, 'lop', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'estrella', 1, 'hola', true, 123, 'tom', NULL, NULL);
INSERT INTO public.moon VALUES (5, 'estrella', 1, 'hola', true, 123, 'mor', NULL, NULL);
INSERT INTO public.moon VALUES (6, 'estrella', 1, 'hola', true, 123, 'losdgf', NULL, NULL);
INSERT INTO public.moon VALUES (7, 'estrella', 1, 'hola', true, 123, 'siete', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'estrella', 1, 'hola', true, 123, 'ocho', NULL, NULL);
INSERT INTO public.moon VALUES (9, 'estrella', 1, 'hola', true, 123, 'nueve', NULL, NULL);
INSERT INTO public.moon VALUES (10, 'estrella', 1, 'hola', true, 123, 'diez', NULL, NULL);
INSERT INTO public.moon VALUES (11, 'estrella', 1, 'hola', true, 123, 'once', NULL, NULL);
INSERT INTO public.moon VALUES (12, 'estrella', 1, 'hola', true, 123, 'doce', NULL, NULL);
INSERT INTO public.moon VALUES (13, 'estrella', 1, 'hola', true, 123, 'trece', NULL, NULL);
INSERT INTO public.moon VALUES (14, 'estrella', 1, 'hola', true, 123, 'catorce', NULL, NULL);
INSERT INTO public.moon VALUES (15, 'estrella', 1, 'hola', true, 123, 'quince', NULL, NULL);
INSERT INTO public.moon VALUES (16, 'estrella', 1, 'hola', true, 123, 'diecises', NULL, NULL);
INSERT INTO public.moon VALUES (17, 'estrella', 1, 'hola', true, 123, 'diecisiete', NULL, NULL);
INSERT INTO public.moon VALUES (18, 'estrella', 1, 'hola', true, 123, 'dieciocho', NULL, NULL);
INSERT INTO public.moon VALUES (19, 'estrella', 1, 'hola', true, 123, 'diecinueve', NULL, NULL);
INSERT INTO public.moon VALUES (20, 'estrella', 1, 'hola', true, 123, 'veinte', NULL, NULL);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (NULL, NULL, NULL, 1, 'lol', NULL, NULL);
INSERT INTO public.more_info VALUES (NULL, NULL, NULL, 2, 'mor', NULL, NULL);
INSERT INTO public.more_info VALUES (NULL, NULL, NULL, 3, 'diez', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'estrella', 1, 'hola a todos', true, 123, 'losf', NULL, NULL);
INSERT INTO public.planet VALUES (3, 'estrella', 1, 'hola a todos', true, 123, 'lol', NULL, NULL);
INSERT INTO public.planet VALUES (4, 'estrella', 1, 'hola', true, 123, 'lop', NULL, NULL);
INSERT INTO public.planet VALUES (5, 'estrella', 1, 'hola', true, 123, 'tom', NULL, NULL);
INSERT INTO public.planet VALUES (6, 'estrella', 1, 'hola', true, 123, 'mor', NULL, NULL);
INSERT INTO public.planet VALUES (7, 'estrella', 1, 'hola', true, 123, 'losdgf', NULL, NULL);
INSERT INTO public.planet VALUES (8, 'estrella', 1, 'hola', true, 123, 'siete', NULL, NULL);
INSERT INTO public.planet VALUES (9, 'estrella', 1, 'hola', true, 123, 'ocho', NULL, NULL);
INSERT INTO public.planet VALUES (10, 'estrella', 1, 'hola', true, 123, 'nueve', NULL, NULL);
INSERT INTO public.planet VALUES (11, 'estrella', 1, 'hola', true, 123, 'diez', NULL, NULL);
INSERT INTO public.planet VALUES (12, 'estrella', 1, 'hola', true, 123, 'once', NULL, NULL);
INSERT INTO public.planet VALUES (13, 'estrella', 1, 'hola', true, 123, 'doce', NULL, NULL);
INSERT INTO public.planet VALUES (14, 'estrella', 1, 'hola', true, 123, 'trece', NULL, NULL);
INSERT INTO public.planet VALUES (15, 'estrella', 1, 'hola', true, 123, 'catorce', NULL, NULL);
INSERT INTO public.planet VALUES (16, 'estrella', 1, 'hola', true, 123, 'quince', NULL, NULL);
INSERT INTO public.planet VALUES (17, 'estrella', 1, 'hola', true, 123, 'diecises', NULL, NULL);
INSERT INTO public.planet VALUES (18, 'estrella', 1, 'hola', true, 123, 'diecisiete', NULL, NULL);
INSERT INTO public.planet VALUES (19, 'estrella', 1, 'hola', true, 123, 'dieciocho', NULL, NULL);
INSERT INTO public.planet VALUES (20, 'estrella', 1, 'hola', true, 123, 'diecinueve', NULL, NULL);
INSERT INTO public.planet VALUES (22, 'estrella', 1, 'hola', true, 123, 'veinte', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'estrella', 1, 'hola a todos', true, 123, 'losf', NULL, NULL);
INSERT INTO public.star VALUES (6, 'estrella', 1, 'hola a todos', true, 123, 'lol', NULL, NULL);
INSERT INTO public.star VALUES (7, 'estrella', 1, 'hola a todos', true, 123, 'lop', NULL, NULL);
INSERT INTO public.star VALUES (8, 'estrella', 1, 'hola a todos', true, 123, 'tom', NULL, NULL);
INSERT INTO public.star VALUES (9, 'estrella', 1, 'hola a todos', true, 123, 'mor', NULL, NULL);
INSERT INTO public.star VALUES (10, 'estrella', 1, 'hola a todos', true, 123, 'losdgf', NULL, NULL);
INSERT INTO public.star VALUES (11, 'estrella', 1, 'hola a todos', true, 123, 'siete', NULL, NULL);
INSERT INTO public.star VALUES (12, 'estrella', 1, 'hola a todos', true, 123, 'ocho', NULL, NULL);
INSERT INTO public.star VALUES (13, 'estrella', 1, 'hola a todos', true, 123, 'nueve', NULL, NULL);
INSERT INTO public.star VALUES (14, 'estrella', 1, 'hola a todos', true, 123, 'diez', NULL, NULL);
INSERT INTO public.star VALUES (15, 'estrella', 1, 'hola a todos', true, 123, 'once', NULL, NULL);
INSERT INTO public.star VALUES (16, 'estrella', 1, 'hola a todos', true, 123, 'doce', NULL, NULL);
INSERT INTO public.star VALUES (17, 'estrella', 1, 'hola a todos', true, 123, 'trece', NULL, NULL);
INSERT INTO public.star VALUES (18, 'estrella', 1, 'hola a todos', true, 123, 'catorce', NULL, NULL);
INSERT INTO public.star VALUES (19, 'estrella', 1, 'hola a todos', true, 123, 'quince', NULL, NULL);
INSERT INTO public.star VALUES (21, 'estrella', 1, 'hola a todos', true, 123, 'diecises', NULL, NULL);
INSERT INTO public.star VALUES (22, 'estrella', 1, 'hola a todos', true, 123, 'diecisiete', NULL, NULL);
INSERT INTO public.star VALUES (23, 'estrella', 1, 'hola a todos', true, 123, 'dieciocho', NULL, NULL);
INSERT INTO public.star VALUES (24, 'estrella', 1, 'hola a todos', true, 123, 'diecinueve', NULL, NULL);
INSERT INTO public.star VALUES (25, 'estrella', 1, 'hola a todos', true, 123, 'veinte', NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 21, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 22, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 25, true);


--
-- Name: galaxy galaxy_pepe_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pepe_key UNIQUE (pepe);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pepe_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pepe_key UNIQUE (pepe);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_pepe_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pepe_key UNIQUE (pepe);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_pepe_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pepe_key UNIQUE (pepe);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pepe_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pepe_key UNIQUE (pepe);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star pepe; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pepe FOREIGN KEY (pepe) REFERENCES public.galaxy(pepe);


--
-- Name: planet pepe; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pepe FOREIGN KEY (pepe) REFERENCES public.star(pepe);


--
-- Name: moon pepe; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT pepe FOREIGN KEY (pepe) REFERENCES public.planet(pepe);


--
-- PostgreSQL database dump complete
--