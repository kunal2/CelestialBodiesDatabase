--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: atmosphere; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.atmosphere (
    atmosphere_id integer NOT NULL,
    name character varying(50) NOT NULL,
    dimension integer,
    radius integer,
    surfacearea numeric(12,2),
    descriptiontxt text,
    isspherical boolean NOT NULL
);


ALTER TABLE public.atmosphere OWNER TO freecodecamp;

--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.atmosphere_atmosphere_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.atmosphere_atmosphere_id_seq OWNER TO freecodecamp;

--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.atmosphere_atmosphere_id_seq OWNED BY public.atmosphere.atmosphere_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    dimension integer,
    radius integer,
    surfacearea numeric(12,2),
    descriptiontxt text,
    isspherical boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    dimension integer,
    radius integer,
    surfacearea numeric(12,2),
    descriptiontxt text,
    isspherical boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    dimension integer,
    radius integer,
    surfacearea numeric(12,2),
    descriptiontxt text,
    isspherical boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    dimension integer,
    radius integer,
    surfacearea numeric(12,2),
    descriptiontxt text,
    isspherical boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: atmosphere atmosphere_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere ALTER COLUMN atmosphere_id SET DEFAULT nextval('public.atmosphere_atmosphere_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: atmosphere; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.atmosphere VALUES (1, 'atmosphere0', 100, 20, 1020.30, 'test', true);
INSERT INTO public.atmosphere VALUES (2, 'atmosphere1', 100, 20, 1020.30, 'test', true);
INSERT INTO public.atmosphere VALUES (3, 'atmosphere2', 100, 20, 1020.30, 'test', true);
INSERT INTO public.atmosphere VALUES (4, 'atmosphere3', 100, 20, 1020.30, 'test', true);
INSERT INTO public.atmosphere VALUES (5, 'atmosphere4', 100, 20, 1020.30, 'test', true);
INSERT INTO public.atmosphere VALUES (6, 'atmosphere5', 100, 20, 1020.30, 'test', true);
INSERT INTO public.atmosphere VALUES (7, 'atmosphere6', 100, 20, 1020.30, 'test', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy0', 100, 20, 1020.30, 'test', true);
INSERT INTO public.galaxy VALUES (2, 'galaxy1', 100, 20, 1020.30, 'test', true);
INSERT INTO public.galaxy VALUES (3, 'galaxy2', 100, 20, 1020.30, 'test', true);
INSERT INTO public.galaxy VALUES (4, 'galaxy3', 100, 20, 1020.30, 'test', true);
INSERT INTO public.galaxy VALUES (5, 'galaxy4', 100, 20, 1020.30, 'test', true);
INSERT INTO public.galaxy VALUES (6, 'galaxy5', 100, 20, 1020.30, 'test', true);
INSERT INTO public.galaxy VALUES (7, 'galaxy6', 100, 20, 1020.30, 'test', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon0', 100, 20, 1020.30, 'test', true, 1);
INSERT INTO public.moon VALUES (2, 'Moon1', 100, 20, 1020.30, 'test', true, 2);
INSERT INTO public.moon VALUES (3, 'Moon2', 100, 20, 1020.30, 'test', true, 3);
INSERT INTO public.moon VALUES (4, 'Moon3', 100, 20, 1020.30, 'test', true, 4);
INSERT INTO public.moon VALUES (5, 'Moon4', 100, 20, 1020.30, 'test', true, 5);
INSERT INTO public.moon VALUES (6, 'Moon5', 100, 20, 1020.30, 'test', true, 6);
INSERT INTO public.moon VALUES (7, 'Moon6', 100, 20, 1020.30, 'test', true, 7);
INSERT INTO public.moon VALUES (8, 'Moon7', 100, 20, 1020.30, 'test', true, 1);
INSERT INTO public.moon VALUES (9, 'Moon8', 100, 20, 1020.30, 'test', true, 2);
INSERT INTO public.moon VALUES (10, 'Moon9', 100, 20, 1020.30, 'test', true, 3);
INSERT INTO public.moon VALUES (11, 'Moon10', 100, 20, 1020.30, 'test', true, 4);
INSERT INTO public.moon VALUES (12, 'Moon11', 100, 20, 1020.30, 'test', true, 5);
INSERT INTO public.moon VALUES (13, 'Moon12', 100, 20, 1020.30, 'test', true, 6);
INSERT INTO public.moon VALUES (14, 'Moon13', 100, 20, 1020.30, 'test', true, 7);
INSERT INTO public.moon VALUES (15, 'Moon14', 100, 20, 1020.30, 'test', true, 1);
INSERT INTO public.moon VALUES (16, 'Moon15', 100, 20, 1020.30, 'test', true, 2);
INSERT INTO public.moon VALUES (17, 'Moon16', 100, 20, 1020.30, 'test', true, 3);
INSERT INTO public.moon VALUES (18, 'Moon17', 100, 20, 1020.30, 'test', true, 4);
INSERT INTO public.moon VALUES (19, 'Moon18', 100, 20, 1020.30, 'test', true, 5);
INSERT INTO public.moon VALUES (20, 'Moon19', 100, 20, 1020.30, 'test', true, 6);
INSERT INTO public.moon VALUES (21, 'Moon20', 100, 20, 1020.30, 'test', true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet0', 100, 20, 1020.30, 'test', true, 1);
INSERT INTO public.planet VALUES (2, 'Planet1', 100, 20, 1020.30, 'test', true, 1);
INSERT INTO public.planet VALUES (3, 'Planet2', 100, 20, 1020.30, 'test', true, 2);
INSERT INTO public.planet VALUES (4, 'Planet3', 100, 20, 1020.30, 'test', true, 2);
INSERT INTO public.planet VALUES (5, 'Planet4', 100, 20, 1020.30, 'test', true, 3);
INSERT INTO public.planet VALUES (6, 'Planet5', 100, 20, 1020.30, 'test', true, 4);
INSERT INTO public.planet VALUES (7, 'Planet6', 100, 20, 1020.30, 'test', true, 5);
INSERT INTO public.planet VALUES (8, 'Planet7', 100, 20, 1020.30, 'test', true, 1);
INSERT INTO public.planet VALUES (9, 'Planet8', 100, 20, 1020.30, 'test', true, 1);
INSERT INTO public.planet VALUES (10, 'Planet9', 100, 20, 1020.30, 'test', true, 2);
INSERT INTO public.planet VALUES (11, 'Planet10', 100, 20, 1020.30, 'test', true, 2);
INSERT INTO public.planet VALUES (12, 'Planet11', 100, 20, 1020.30, 'test', true, 3);
INSERT INTO public.planet VALUES (13, 'Planet12', 100, 20, 1020.30, 'test', true, 4);
INSERT INTO public.planet VALUES (14, 'Planet13', 100, 20, 1020.30, 'test', true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star0', 100, 20, 1020.30, 'test', true, 1);
INSERT INTO public.star VALUES (2, 'Star1', 100, 20, 1020.30, 'test', true, 1);
INSERT INTO public.star VALUES (3, 'Star2', 100, 20, 1020.30, 'test', true, 2);
INSERT INTO public.star VALUES (4, 'Star3', 100, 20, 1020.30, 'test', true, 2);
INSERT INTO public.star VALUES (5, 'Star4', 100, 20, 1020.30, 'test', true, 3);
INSERT INTO public.star VALUES (6, 'Star5', 100, 20, 1020.30, 'test', true, 4);
INSERT INTO public.star VALUES (7, 'Star6', 100, 20, 1020.30, 'test', true, 5);


--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.atmosphere_atmosphere_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: atmosphere atmosphere_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere
    ADD CONSTRAINT atmosphere_name_key UNIQUE (name);


--
-- Name: atmosphere atmosphere_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere
    ADD CONSTRAINT atmosphere_pkey PRIMARY KEY (atmosphere_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

