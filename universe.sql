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
    name character varying(20) NOT NULL,
    num_of_stars integer NOT NULL,
    has_money boolean NOT NULL,
    drivers_license integer
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
-- Name: icecream; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.icecream (
    icecream_id integer NOT NULL,
    name character varying(20) NOT NULL,
    icecream_brandname character varying(20) NOT NULL
);


ALTER TABLE public.icecream OWNER TO freecodecamp;

--
-- Name: icecream_icecream_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.icecream_icecream_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.icecream_icecream_id_seq OWNER TO freecodecamp;

--
-- Name: icecream_icecream_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.icecream_icecream_id_seq OWNED BY public.icecream.icecream_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    still_alive boolean NOT NULL,
    planet_id integer,
    description text
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
    name character varying(20) NOT NULL,
    radius numeric(10,0) NOT NULL,
    star_id integer,
    description text
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
    num_of_planets integer NOT NULL,
    description text NOT NULL,
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
-- Name: icecream icecream_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.icecream ALTER COLUMN icecream_id SET DEFAULT nextval('public.icecream_icecream_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'ga-1', 2, true, 1234567);
INSERT INTO public.galaxy VALUES (2, 'ga-2', 3, true, 1234568);
INSERT INTO public.galaxy VALUES (3, 'ga-3', 4, true, 1234569);
INSERT INTO public.galaxy VALUES (4, 'ga-4', 4, true, 1234570);
INSERT INTO public.galaxy VALUES (5, 'ga-5', 6, true, 1234571);
INSERT INTO public.galaxy VALUES (6, 'ga-6', 7, true, 1234572);


--
-- Data for Name: icecream; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.icecream VALUES (1, 'ic-1', 'bd-1');
INSERT INTO public.icecream VALUES (2, 'ic-2', 'bd-2');
INSERT INTO public.icecream VALUES (3, 'ic-3', 'bd-3');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mo-1', true, 1, 'moon-1');
INSERT INTO public.moon VALUES (2, 'mo-2', true, 1, 'moon-2');
INSERT INTO public.moon VALUES (3, 'mo-3', true, 2, 'moon-3');
INSERT INTO public.moon VALUES (4, 'mo-4', true, 2, 'moon-4');
INSERT INTO public.moon VALUES (5, 'mo-5', true, 3, 'moon-5');
INSERT INTO public.moon VALUES (6, 'mo-6', true, 3, 'moon-6');
INSERT INTO public.moon VALUES (7, 'mo-7', true, 4, 'moon-7');
INSERT INTO public.moon VALUES (8, 'mo-8', true, 4, 'moon-8');
INSERT INTO public.moon VALUES (9, 'mo-9', true, 5, 'moon-9');
INSERT INTO public.moon VALUES (10, 'mo-10', true, 5, 'moon-10');
INSERT INTO public.moon VALUES (11, 'mo-11', true, 6, 'moon-11');
INSERT INTO public.moon VALUES (12, 'mo-12', true, 6, 'moon-12');
INSERT INTO public.moon VALUES (13, 'mo-13', true, 7, 'moon-13');
INSERT INTO public.moon VALUES (14, 'mo-14', true, 7, 'moon-14');
INSERT INTO public.moon VALUES (15, 'mo-15', true, 8, 'moon-15');
INSERT INTO public.moon VALUES (16, 'mo-16', true, 8, 'moon-16');
INSERT INTO public.moon VALUES (17, 'mo-17', true, 9, 'moon-17');
INSERT INTO public.moon VALUES (18, 'mo-18', true, 10, 'moon-18');
INSERT INTO public.moon VALUES (19, 'mo-19', true, 11, 'moon-19');
INSERT INTO public.moon VALUES (20, 'mo-20', true, 12, 'moon-20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'pl-1', 1, 1, 'planet-1');
INSERT INTO public.planet VALUES (2, 'pl-2', 1, 1, 'planet-2');
INSERT INTO public.planet VALUES (3, 'pl-3', 1, 2, 'planet-3');
INSERT INTO public.planet VALUES (4, 'pl-4', 1, 2, 'planet-4');
INSERT INTO public.planet VALUES (5, 'pl-5', 1, 3, 'planet-5');
INSERT INTO public.planet VALUES (6, 'pl-6', 1, 3, 'planet-6');
INSERT INTO public.planet VALUES (7, 'pl-7', 1, 4, 'planet-7');
INSERT INTO public.planet VALUES (8, 'pl-8', 1, 4, 'planet-8');
INSERT INTO public.planet VALUES (9, 'pl-9', 1, 5, 'planet-9');
INSERT INTO public.planet VALUES (10, 'pl-10', 1, 5, 'planet-10');
INSERT INTO public.planet VALUES (11, 'pl-11', 1, 6, 'planet-11');
INSERT INTO public.planet VALUES (12, 'pl-12', 1, 6, 'planet-12');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'st-1', 2, 'star-1', 1);
INSERT INTO public.star VALUES (2, 'st-2', 2, 'star-2', 2);
INSERT INTO public.star VALUES (3, 'st-3', 3, 'star-3', 3);
INSERT INTO public.star VALUES (4, 'st-4', 2, 'star-4', 4);
INSERT INTO public.star VALUES (5, 'st-5', 2, 'star-5', 5);
INSERT INTO public.star VALUES (6, 'st-6', 2, 'star-6', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: icecream_icecream_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.icecream_icecream_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_divers_license_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_divers_license_key UNIQUE (drivers_license);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: icecream icecream_icecream_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.icecream
    ADD CONSTRAINT icecream_icecream_name_key UNIQUE (name);


--
-- Name: icecream icecream_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.icecream
    ADD CONSTRAINT icecream_pkey PRIMARY KEY (icecream_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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