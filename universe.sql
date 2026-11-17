--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying,
    age integer,
    type text NOT NULL,
    size integer
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
    planet_id integer,
    name character varying(100) NOT NULL,
    size integer,
    length_to_planet integer
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
    star_id integer,
    name character varying(100) NOT NULL,
    size integer,
    length_to_star integer
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
-- Name: scientists; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.scientists (
    scientists_id integer NOT NULL,
    planet_id integer,
    name character varying(100) NOT NULL,
    born_date numeric,
    nobel_award boolean,
    is_alive boolean
);


ALTER TABLE public.scientists OWNER TO freecodecamp;

--
-- Name: scientists_scientists_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.scientists_scientists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scientists_scientists_id_seq OWNER TO freecodecamp;

--
-- Name: scientists_scientists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.scientists_scientists_id_seq OWNED BY public.scientists.scientists_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(100) NOT NULL,
    size integer,
    length_to_earth integer
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
-- Name: scientists scientists_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientists ALTER COLUMN scientists_id SET DEFAULT nextval('public.scientists_scientists_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'alpha', 315, 'white', 150);
INSERT INTO public.galaxy VALUES (2, 'betta', 31, 'white', 10);
INSERT INTO public.galaxy VALUES (3, 'gamma', 415, 'blue', 15);
INSERT INTO public.galaxy VALUES (4, 'omega', 115, 'green', 100);
INSERT INTO public.galaxy VALUES (5, 'delta', 215, 'white', 250);
INSERT INTO public.galaxy VALUES (6, 'epsilon', 15, 'blue', 52);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'ion-a-1', 101, 2);
INSERT INTO public.moon VALUES (2, 1, 'ion-a-2', 102, 5);
INSERT INTO public.moon VALUES (3, 1, 'ion-a-3', 103, 9);
INSERT INTO public.moon VALUES (4, 2, 'ion-b-1', 104, 3);
INSERT INTO public.moon VALUES (5, 2, 'ion-b-2', 105, 7);
INSERT INTO public.moon VALUES (6, 3, 'upi-a-1', 106, 4);
INSERT INTO public.moon VALUES (7, 3, 'upi-a-2', 107, 11);
INSERT INTO public.moon VALUES (8, 3, 'upi-a-3', 108, 19);
INSERT INTO public.moon VALUES (9, 4, 'upi-b-1', 109, 6);
INSERT INTO public.moon VALUES (10, 4, 'upi-b-2', 110, 14);
INSERT INTO public.moon VALUES (11, 5, 'aton-a-1', 111, 8);
INSERT INTO public.moon VALUES (12, 5, 'aton-a-2', 112, 21);
INSERT INTO public.moon VALUES (13, 6, 'aton-b-1', 113, 10);
INSERT INTO public.moon VALUES (14, 6, 'aton-b-2', 114, 26);
INSERT INTO public.moon VALUES (15, 6, 'aton-b-3', 115, 37);
INSERT INTO public.moon VALUES (16, 7, 'wolf-a-1', 116, 13);
INSERT INTO public.moon VALUES (17, 7, 'wolf-a-2', 117, 29);
INSERT INTO public.moon VALUES (18, 8, 'wolf-b-1', 118, 17);
INSERT INTO public.moon VALUES (19, 9, 'rabbit-a-1', 119, 1);
INSERT INTO public.moon VALUES (20, 10, 'rabbit-b-1', 120, 15);
INSERT INTO public.moon VALUES (21, 11, 'k5-a-1', 121, 23);
INSERT INTO public.moon VALUES (22, 11, 'k5-a-2', 122, 31);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'ion-a', 3, 12);
INSERT INTO public.planet VALUES (2, 1, 'ion-b', 7, 25);
INSERT INTO public.planet VALUES (3, 2, 'upi-a', 9, 40);
INSERT INTO public.planet VALUES (4, 2, 'upi-b', 11, 55);
INSERT INTO public.planet VALUES (5, 3, 'aton-a', 14, 18);
INSERT INTO public.planet VALUES (6, 3, 'aton-b', 17, 33);
INSERT INTO public.planet VALUES (7, 4, 'wolf-a', 21, 60);
INSERT INTO public.planet VALUES (8, 4, 'wolf-b', 24, 75);
INSERT INTO public.planet VALUES (9, 5, 'rabbit-a', 27, 5);
INSERT INTO public.planet VALUES (10, 5, 'rabbit-b', 29, 16);
INSERT INTO public.planet VALUES (11, 6, 'k5-a', 32, 44);
INSERT INTO public.planet VALUES (12, 6, 'k5-b', 36, 88);


--
-- Data for Name: scientists; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.scientists VALUES (1, 1, 'valery', 1975.0401, true, true);
INSERT INTO public.scientists VALUES (2, 7, 'sophia', 1951.0912, true, false);
INSERT INTO public.scientists VALUES (3, NULL, 'kai', 1989.1215, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 2, 'ion', 5, 50);
INSERT INTO public.star VALUES (2, 2, 'upi', 15, 20);
INSERT INTO public.star VALUES (3, 2, 'aton', 8, 30);
INSERT INTO public.star VALUES (4, 4, 'wolf', 6, 40);
INSERT INTO public.star VALUES (5, 4, 'rabbit', 9, 10);
INSERT INTO public.star VALUES (6, 3, 'k5', 12, 30);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: scientists_scientists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.scientists_scientists_id_seq', 3, true);


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
-- Name: galaxy galaxy_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_size_key UNIQUE (size);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_size_key UNIQUE (size);


--
-- Name: scientists scientists_born_date_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientists
    ADD CONSTRAINT scientists_born_date_key UNIQUE (born_date);


--
-- Name: scientists scientists_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientists
    ADD CONSTRAINT scientists_pkey PRIMARY KEY (scientists_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_key UNIQUE (size);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: scientists fk_planet_scientist; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientists
    ADD CONSTRAINT fk_planet_scientist FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

