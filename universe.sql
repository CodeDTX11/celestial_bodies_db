--
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
    name character varying(30) NOT NULL,
    size_in_parsecs numeric DEFAULT 0,
    age_in_billions integer DEFAULT 14,
    is_awesome boolean DEFAULT true
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
-- Name: jedi; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.jedi (
    jedi_id integer NOT NULL,
    name character varying(30) NOT NULL,
    rank integer NOT NULL
);


ALTER TABLE public.jedi OWNER TO freecodecamp;

--
-- Name: jedi_jedi_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.jedi_jedi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jedi_jedi_id_seq OWNER TO freecodecamp;

--
-- Name: jedi_jedi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.jedi_jedi_id_seq OWNED BY public.jedi.jedi_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    is_cheese boolean,
    description text DEFAULT 'N/a'::text,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    hospitable boolean,
    num_subways integer,
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
    name character varying(20) NOT NULL,
    is_fat boolean,
    age integer,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: jedi jedi_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.jedi ALTER COLUMN jedi_id SET DEFAULT nextval('public.jedi_jedi_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky_way', 100, 14, true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 100, 14, false);
INSERT INTO public.galaxy VALUES (3, 'far far away', 1000, 14, true);
INSERT INTO public.galaxy VALUES (4, 'unkown', 10, 10, true);
INSERT INTO public.galaxy VALUES (5, 'sugar', 5, 11, true);
INSERT INTO public.galaxy VALUES (6, 'big galaxy', 9999, 15, true);


--
-- Data for Name: jedi; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.jedi VALUES (1, 'Anakin Skywalker', 1);
INSERT INTO public.jedi VALUES (2, 'Qui-Gon Jinn', 3);
INSERT INTO public.jedi VALUES (3, 'Obi-Wan Kenobi', 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', true, 'made of white cheddar', 1);
INSERT INTO public.moon VALUES (2, 'the moon1', false, 'N/a', 1);
INSERT INTO public.moon VALUES (3, 'the moon2', false, 'N/a', 1);
INSERT INTO public.moon VALUES (4, 'a', false, 'N/a', 5);
INSERT INTO public.moon VALUES (5, 'b', false, 'N/a', 6);
INSERT INTO public.moon VALUES (6, 'the moo', false, 'N/a', 1);
INSERT INTO public.moon VALUES (7, 'unknown', false, 'N/a', 5);
INSERT INTO public.moon VALUES (8, 'idk', false, 'N/a', 6);
INSERT INTO public.moon VALUES (9, 'c', true, 'N/a', 9);
INSERT INTO public.moon VALUES (10, 'rando', true, 'N/a', 10);
INSERT INTO public.moon VALUES (11, ' moo', false, 'N/a', 1);
INSERT INTO public.moon VALUES (12, 'unknown1', false, 'N/a', 5);
INSERT INTO public.moon VALUES (13, 'icy', false, 'N/a', 6);
INSERT INTO public.moon VALUES (14, 'hot', true, 'N/a', 9);
INSERT INTO public.moon VALUES (15, 'random', true, 'N/a', 10);
INSERT INTO public.moon VALUES (16, 'moo1', false, 'N/a', 1);
INSERT INTO public.moon VALUES (17, 'unknown11', false, 'N/a', 5);
INSERT INTO public.moon VALUES (18, 'endor', false, 'N/a', 11);
INSERT INTO public.moon VALUES (19, 'idk2', true, 'N/a', 9);
INSERT INTO public.moon VALUES (20, 'random2', true, 'N/a', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', true, 37000, 1);
INSERT INTO public.planet VALUES (2, 'mars', true, 0, 1);
INSERT INTO public.planet VALUES (3, 'saturn', false, 0, 1);
INSERT INTO public.planet VALUES (4, 'Tatoine', true, 0, 5);
INSERT INTO public.planet VALUES (5, 'alderaan', true, 1, 5);
INSERT INTO public.planet VALUES (6, 'mercury', true, 0, 1);
INSERT INTO public.planet VALUES (7, 'venus', false, 0, 1);
INSERT INTO public.planet VALUES (8, 'andor', true, 0, 5);
INSERT INTO public.planet VALUES (9, 'naboo', true, 1, 5);
INSERT INTO public.planet VALUES (10, 'jupiter', true, 0, 1);
INSERT INTO public.planet VALUES (11, 'terra', false, 0, 1);
INSERT INTO public.planet VALUES (12, 'planet', true, 0, 5);
INSERT INTO public.planet VALUES (13, 'planet fitness', true, 1, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', true, 4, 1);
INSERT INTO public.star VALUES (2, 'fat star', true, 5, 2);
INSERT INTO public.star VALUES (3, 'skinny star', false, 6, 3);
INSERT INTO public.star VALUES (4, 'centauri', true, 5, 1);
INSERT INTO public.star VALUES (5, 'death star', false, 6, 3);
INSERT INTO public.star VALUES (6, 'dwarf star', false, 10, 4);
INSERT INTO public.star VALUES (7, 'neutron star', false, 14, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: jedi_jedi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.jedi_jedi_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: jedi jedi_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.jedi
    ADD CONSTRAINT jedi_name_key UNIQUE (name);


--
-- Name: jedi jedi_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.jedi
    ADD CONSTRAINT jedi_pkey PRIMARY KEY (jedi_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

