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
-- Name: civilization; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilization (
    civilization_id integer NOT NULL,
    name character varying(30) NOT NULL,
    population integer,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.civilization OWNER TO freecodecamp;

--
-- Name: civilization_civil_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civilization_civil_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civilization_civil_id_seq OWNER TO freecodecamp;

--
-- Name: civilization_civil_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civilization_civil_id_seq OWNED BY public.civilization.civilization_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    description text,
    distance_from_earth numeric(3,2),
    age_in_millions_of_years integer,
    is_spherical boolean,
    number_of_stars integer
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
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL
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
-- Name: civilization civilization_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization ALTER COLUMN civilization_id SET DEFAULT nextval('public.civilization_civil_id_seq'::regclass);


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
-- Data for Name: civilization; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilization VALUES (1, 'Human', 7, 2, 1);
INSERT INTO public.civilization VALUES (2, 'Octopus', 1, 5, 8);
INSERT INTO public.civilization VALUES (3, 'Granuda', 12, 8, 11);
INSERT INTO public.civilization VALUES (4, 'Levithian', 8, 5, 9);
INSERT INTO public.civilization VALUES (5, 'Megadon', 2, 7, 20);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', false, 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around.', 4.00, 2, true, 2000);
INSERT INTO public.galaxy VALUES (2, 'Backward Galaxy', false, 'It appears to rotate backwards, as the tips of the spiral arms point in the direction of rotation.', 3.00, 400, false, 9000);
INSERT INTO public.galaxy VALUES (3, 'Eye of God', false, 'A prototype for multi-arm spiral galaxies', 9.00, 389, true, 10);
INSERT INTO public.galaxy VALUES (4, 'Spider Galaxy', false, 'Name after its appearance of a spider', 1.00, 400, true, 4500);
INSERT INTO public.galaxy VALUES (5, 'Tadpole Galaxy', true, 'This shape resulted from tidal interaction that drew out a long tidal tail.', 7.00, 205, false, 888);
INSERT INTO public.galaxy VALUES (6, 'Comet Galaxy', false, 'This galaxy is named after its unusual appearance, looking like a comet.', 4.00, 562, false, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, true, 2);
INSERT INTO public.moon VALUES (2, 'Io', false, true, 3);
INSERT INTO public.moon VALUES (3, 'Themisto', true, false, 11);
INSERT INTO public.moon VALUES (4, 'Cyllene', false, false, 4);
INSERT INTO public.moon VALUES (5, 'Thebe', true, true, 5);
INSERT INTO public.moon VALUES (6, 'Arche', true, false, 7);
INSERT INTO public.moon VALUES (7, 'Ethysis', false, true, 8);
INSERT INTO public.moon VALUES (8, 'Carpo', true, true, 10);
INSERT INTO public.moon VALUES (9, 'Sinope', true, false, 12);
INSERT INTO public.moon VALUES (10, 'Sponde', false, true, 6);
INSERT INTO public.moon VALUES (11, 'Praxidike', false, false, 1);
INSERT INTO public.moon VALUES (12, 'Kalykie', true, true, 3);
INSERT INTO public.moon VALUES (13, 'Jupiter Li', false, true, 7);
INSERT INTO public.moon VALUES (14, 'Aoede', true, true, 12);
INSERT INTO public.moon VALUES (15, 'Jupiter LV', false, false, 10);
INSERT INTO public.moon VALUES (16, 'Iocastle', false, true, 5);
INSERT INTO public.moon VALUES (17, 'Amathea', true, false, 8);
INSERT INTO public.moon VALUES (18, 'Orthosie', false, false, 12);
INSERT INTO public.moon VALUES (19, 'Mneme', false, false, 1);
INSERT INTO public.moon VALUES (20, 'Ananke', true, false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupiter', false, true, 3);
INSERT INTO public.planet VALUES (2, 'Earth', true, true, 2);
INSERT INTO public.planet VALUES (3, 'Mercury', false, false, 1);
INSERT INTO public.planet VALUES (4, 'Pluto', false, false, 6);
INSERT INTO public.planet VALUES (5, 'Mars', true, true, 2);
INSERT INTO public.planet VALUES (6, 'Venus', false, true, 4);
INSERT INTO public.planet VALUES (7, 'Saturn', false, false, 5);
INSERT INTO public.planet VALUES (8, 'Ceres', false, true, 2);
INSERT INTO public.planet VALUES (9, 'Ymir', true, true, 5);
INSERT INTO public.planet VALUES (10, 'Umbriel', false, true, 6);
INSERT INTO public.planet VALUES (11, 'Uranus', true, false, 3);
INSERT INTO public.planet VALUES (12, 'Callisto', false, false, 1);
INSERT INTO public.planet VALUES (13, 'Triton', false, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Aquilia', false, true, NULL, 1);
INSERT INTO public.star VALUES (2, 'Procyon', true, false, NULL, 2);
INSERT INTO public.star VALUES (3, 'Mira Ceti', false, false, NULL, 5);
INSERT INTO public.star VALUES (4, 'Castor', false, false, NULL, 4);
INSERT INTO public.star VALUES (5, 'Algol', true, false, NULL, 3);
INSERT INTO public.star VALUES (6, 'Hyades', false, false, NULL, 3);


--
-- Name: civilization_civil_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civilization_civil_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: civilization civilization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_pkey PRIMARY KEY (civilization_id);


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
-- Name: civilization name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT name_unique UNIQUE (name);


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
-- Name: civilization civilization_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: civilization civilization_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

