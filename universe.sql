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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size_in_sun numeric
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    age_in_millions integer NOT NULL,
    description text,
    distance_from_earths numeric NOT NULL,
    galaxy_types character varying(40),
    tipo_id integer
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
    name character varying(60) NOT NULL,
    distance_from_earths numeric,
    age_in_millions integer NOT NULL,
    size integer,
    tipo_id integer
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
    name character varying(60) NOT NULL,
    distance_from_earths numeric NOT NULL,
    talkable boolean,
    planet_types text,
    tipo_id integer
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
    name character varying(60),
    age_in_millions integer NOT NULL,
    has_life integer NOT NULL,
    is_sperical boolean,
    tipo_id integer
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Agujero Negro De Kerr', 18);
INSERT INTO public.blackhole VALUES (2, 'Tom', 66.000);
INSERT INTO public.blackhole VALUES (3, 'NGC', 17.000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10, 'Increible', 4.603, 'Espiral', NULL);
INSERT INTO public.galaxy VALUES (2, 'MarkarianB', 13, 'Una Galaxia con Oxigeno', 32.000, 'Espiral', NULL);
INSERT INTO public.galaxy VALUES (3, 'Via Lactea', 13, 'Nuestra Galaxia', 4.603, 'Espiral', NULL);
INSERT INTO public.galaxy VALUES (4, 'Enana de Bootes', 37, 'es una de las galaxias menos luminosas', 197.000, 'Enana', NULL);
INSERT INTO public.galaxy VALUES (5, 'Gran Nube de Magallanes', 1, 'Es una de las tres Mas Cercanas a la via lactea', 163.000, 'Enana', NULL);
INSERT INTO public.galaxy VALUES (6, 'Enana del Can Mayor', 1, 'Contiene Millones De Estrellas', 25.000, 'Enana', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Umbriel', 495.3, 5, 588, NULL);
INSERT INTO public.moon VALUES (2, 'Titania', 2.723, 4, 788, NULL);
INSERT INTO public.moon VALUES (3, 'Amelta', 181.400, 3, 21, NULL);
INSERT INTO public.moon VALUES (4, 'Calisto', 2.410, 5, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 628, 5, 2, NULL);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 628.3, 5, 3, NULL);
INSERT INTO public.moon VALUES (7, 'Io', 628.3, 5, 3, NULL);
INSERT INTO public.moon VALUES (8, 'Tebe', 221.900, 3, 49, NULL);
INSERT INTO public.moon VALUES (9, 'Himalia', 221.900, 10, 13, NULL);
INSERT INTO public.moon VALUES (10, 'Listea', 221.900, 8, 18, NULL);
INSERT INTO public.moon VALUES (11, 'Autonoe', 221.900, 7, 2, NULL);
INSERT INTO public.moon VALUES (12, 'Cliene', 221.900, 9, 1, NULL);
INSERT INTO public.moon VALUES (13, 'Harpalice', 221.900, 11, 16, NULL);
INSERT INTO public.moon VALUES (14, 'Aitne', 221.904, 10, 0, NULL);
INSERT INTO public.moon VALUES (15, 'Pasitea', 221.506, 9, 17, NULL);
INSERT INTO public.moon VALUES (16, 'Anake', 221.102, 7, 14, NULL);
INSERT INTO public.moon VALUES (17, 'Deimos', 77.79, 5, 6, NULL);
INSERT INTO public.moon VALUES (18, 'Fobos', 77.79, 6, 5, NULL);
INSERT INTO public.moon VALUES (19, 'Encancelado', 500, 6, 0, NULL);
INSERT INTO public.moon VALUES (20, 'Hiperion', 500, 8, 13, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Urano', 495.678, false, 'Gaseoso', NULL);
INSERT INTO public.planet VALUES (2, 'Kepler', 1.402, true, 'Exoplaneta', NULL);
INSERT INTO public.planet VALUES (3, 'Gliese', 20.42, true, 'Exoplaneta', NULL);
INSERT INTO public.planet VALUES (4, 'Neptuno', 1.300, false, 'Gigante Helado', NULL);
INSERT INTO public.planet VALUES (5, 'Kelt', 650, false, 'Planeta Caliente', NULL);
INSERT INTO public.planet VALUES (6, 'Haumea', 43.343, false, 'Planeta Enano', NULL);
INSERT INTO public.planet VALUES (7, 'Ross', 11, true, 'Planeta Rocoso', NULL);
INSERT INTO public.planet VALUES (8, 'Luytem B', 12.2, true, 'Parecido a la TIerra', NULL);
INSERT INTO public.planet VALUES (9, 'Teegarden', 12, true, 'Parecido a la TIerra', NULL);
INSERT INTO public.planet VALUES (10, 'Trappist-d', 39, false, 'Planeta Caliente', NULL);
INSERT INTO public.planet VALUES (11, 'Wolf', 13.992, true, 'Parecido a la Tierra', NULL);
INSERT INTO public.planet VALUES (12, 'Venus', 879.98, false, 'Planeta Caliente', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 5, 10, true, NULL);
INSERT INTO public.star VALUES (2, 'Arturo', 7, 2, true, NULL);
INSERT INTO public.star VALUES (3, 'Centauri', 5, 42, true, NULL);
INSERT INTO public.star VALUES (4, 'CE Bootis', 100, 6, true, NULL);
INSERT INTO public.star VALUES (5, 'Betelguese', 10, 81, true, NULL);
INSERT INTO public.star VALUES (6, 'Rigel', 8, 900, true, NULL);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: blackhole blackhole_blackhole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_blackhole_id_key UNIQUE (blackhole_id);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- Name: galaxy galaxy_tipo_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_tipo_id_key UNIQUE (tipo_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_tipo_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_tipo_id_key UNIQUE (tipo_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_tipo_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_tipo_id_key UNIQUE (tipo_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star star_tipo_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_tipo_id_key UNIQUE (tipo_id);


--
-- Name: galaxy galaxy_tipo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_tipo_id_fkey FOREIGN KEY (tipo_id) REFERENCES public.star(tipo_id);


--
-- Name: planet planet_tipo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_tipo_id_fkey FOREIGN KEY (tipo_id) REFERENCES public.moon(tipo_id);


--
-- Name: star star_tipo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_tipo_id_fkey FOREIGN KEY (tipo_id) REFERENCES public.planet(tipo_id);


--
-- PostgreSQL database dump complete
--

