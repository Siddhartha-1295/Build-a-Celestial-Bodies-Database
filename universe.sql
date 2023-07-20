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
    name character varying(40),
    age_in_millions_of_years integer,
    description text,
    visited character varying(5) DEFAULT 'N/A'::character varying NOT NULL,
    duplicate_column text DEFAULT 'N/A'::text NOT NULL,
    unique_col_1 character varying(10)
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
    name character varying(40),
    planet_id integer,
    constriant name,
    visited character varying(5) DEFAULT 'N/A'::character varying NOT NULL,
    description text DEFAULT 'N/A'::text NOT NULL,
    unique_col_1 character varying(10)
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
    name character varying(40),
    age_in_millions_lof_years integer,
    distance_from_earth integer,
    rotation_spead numeric(5,2),
    has_life boolean,
    is_sperical boolean,
    star_id integer,
    constriant name,
    duplicate_column_1 text DEFAULT 'N/A'::text NOT NULL,
    duplicate_column_2 text DEFAULT 'N/A'::text NOT NULL,
    unique_col_1 character varying(10)
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id character varying(30) NOT NULL,
    description text,
    visited boolean,
    duplicate_col_1 character varying(10) DEFAULT 'N/A'::character varying NOT NULL,
    duplicate_col_2 character varying(10) DEFAULT 'N/A'::character varying NOT NULL,
    duplicate_col_3 character varying(10),
    name character varying(20),
    dummy_change_column integer
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    galaxy_id integer,
    visited character varying(5) DEFAULT 'N/A'::character varying NOT NULL,
    nick_name character varying(40),
    constriant name,
    duplicate_column_1 text DEFAULT 'N/A'::text NOT NULL,
    unique_col_1 character varying(10)
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

INSERT INTO public.galaxy VALUES (1, 'Milkyway', 13000, 'The milyway is barred spiral galaxy.', 'N/A', 'N/A', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 22000, 'Andromeda is a spiral galaxy and is the closest major galaxy to milkyway.', 'N/A', 'N/A', NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 4000, 'Triangulum is a small spiral galaxy and is the milkyway''s satellite galaxies.', 'N/A', 'N/A', NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 23000, 'Whirlpool galaxy is the sprial galaxy located in the constellation Canes Vanateci', 'N/A', 'N/A', NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 28000, 'Sombrero galaxy is the sprial galaxy in the  constellation Virgo', 'N/A', 'N/A', NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', 21000, 'Sombrero galaxy is face-on sprial galaxy in the  constellation of Ursa Major', 'N/A', 'N/A', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (5, 'Titan', 6, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 5, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (8, 'IO', 5, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (10, 'Rhea', 6, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (11, 'Triton', 8, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (12, 'Charon', 9, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (13, 'Hyperion', 6, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (14, 'Ipatus', 6, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (15, 'Oberon', 8, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', 8, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', 8, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (18, 'Miranda', 8, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (19, 'Diona', 6, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.moon VALUES (20, 'Tethya', 6, NULL, 'N/A', 'N/A', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 77, 58.60, false, true, 1, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 6000, 38, 243.00, false, true, 1, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 0, 24.00, true, true, 1, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 3500, 54, 24.60, false, true, 1, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5000, 365, 9.90, false, false, 1, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 4000, 748, 10.70, false, false, 1, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 3500, 1729, 17.20, false, false, 1, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 3800, 2714, 16.10, false, false, 1, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', 6000, 1402, 2.90, false, true, 2, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.planet VALUES (10, 'HC 209458', 5000, 150, 10.20, false, false, 2, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.planet VALUES (11, 'Pluto', 4000, 4677, 153.30, false, true, 1, NULL, 'N/A', 'N/A', NULL);
INSERT INTO public.planet VALUES (12, 'Trappist-1e', 4400, 39, 190.30, false, true, 3, NULL, 'N/A', 'N/A', NULL);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES ('Our Solar System', 'Our Solar system sun and all celestial object', true, 'N/A', 'N/A', NULL, NULL, NULL);
INSERT INTO public.solar_system VALUES ('Trippist-1e Solar System', 'Trippist-1e Planetary system located 39 light years away from earth', false, 'N/A', 'N/A', NULL, NULL, NULL);
INSERT INTO public.solar_system VALUES ('Kepler-90 System', 'Kepler 90 system is distant star system that was discovered to have eight planets', false, 'N/A', 'N/A', NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'N/A', NULL, NULL, 'N/A', NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 'N/A', NULL, NULL, 'N/A', NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 2, 'N/A', NULL, NULL, 'N/A', NULL);
INSERT INTO public.star VALUES (4, 'Betelguese', 3, 'N/A', NULL, NULL, 'N/A', NULL);
INSERT INTO public.star VALUES (5, 'Proxia Centauri', 2, 'N/A', NULL, NULL, 'N/A', NULL);
INSERT INTO public.star VALUES (6, 'Vega', 1, 'N/A', NULL, NULL, 'N/A', NULL);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_col_1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_col_1_key UNIQUE (unique_col_1);


--
-- Name: moon moon_constriant_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_constriant_key UNIQUE (constriant);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_col_1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_col_1_key UNIQUE (unique_col_1);


--
-- Name: planet planet_constriant_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_constriant_key UNIQUE (constriant);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_col_1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_col_1_key UNIQUE (unique_col_1);


--
-- Name: solar_system solar_system_duplicate_col_3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_duplicate_col_3_key UNIQUE (duplicate_col_3);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_constriant_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constriant_key UNIQUE (constriant);


--
-- Name: star star_nick_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nick_name_key UNIQUE (nick_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_col_1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_col_1_key UNIQUE (unique_col_1);


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

