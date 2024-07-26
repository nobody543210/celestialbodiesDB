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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    surface_area integer,
    age integer,
    name character varying(40) NOT NULL,
    descr text
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
    surface_area integer,
    age numeric,
    planet_id integer,
    name character varying(40) NOT NULL
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
-- Name: owner; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.owner (
    owner_id integer NOT NULL,
    surface_area integer,
    age integer,
    name character varying(40) NOT NULL
);


ALTER TABLE public.owner OWNER TO freecodecamp;

--
-- Name: owner_owner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.owner_owner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.owner_owner_id_seq OWNER TO freecodecamp;

--
-- Name: owner_owner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.owner_owner_id_seq OWNED BY public.owner.owner_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    surface_area integer,
    age text,
    star_id integer,
    name character varying(40) NOT NULL,
    is_habitable boolean
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
    surface_area integer,
    age integer,
    galaxy_id integer,
    name character varying(40) NOT NULL,
    is_shiny boolean
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
-- Name: owner owner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.owner ALTER COLUMN owner_id SET DEFAULT nextval('public.owner_owner_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 476, 6578, 'xfgxhf', 'descr');
INSERT INTO public.galaxy VALUES (2, 7885, 56887, 'name', 'descr');
INSERT INTO public.galaxy VALUES (3, 23435, 89887, 'mglh', 'descr');
INSERT INTO public.galaxy VALUES (4, 78978, 65756, 'mgjjug', 'descr');
INSERT INTO public.galaxy VALUES (5, 4557, 789579, 'qdehf', 'descr');
INSERT INTO public.galaxy VALUES (6, 9306, 474586, 'GKGFH', 'descr');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (8, NULL, NULL, 5, '65hh78');
INSERT INTO public.moon VALUES (9, NULL, NULL, 3, '68xdgj87');
INSERT INTO public.moon VALUES (10, NULL, NULL, 4, '9887');
INSERT INTO public.moon VALUES (11, NULL, NULL, 6, '5dx756');
INSERT INTO public.moon VALUES (12, NULL, NULL, 1, '89579');
INSERT INTO public.moon VALUES (13, NULL, NULL, 4, '745xhf86');
INSERT INTO public.moon VALUES (14, NULL, NULL, 5, '65hhgsw78');
INSERT INTO public.moon VALUES (15, NULL, NULL, 3, 'g68dxfh87');
INSERT INTO public.moon VALUES (16, NULL, NULL, 4, '988xdhh7');
INSERT INTO public.moon VALUES (17, NULL, NULL, 6, '5kh756');
INSERT INTO public.moon VALUES (18, NULL, NULL, 1, '895wfhfh79');
INSERT INTO public.moon VALUES (19, NULL, NULL, 4, '74xfgwdh586');
INSERT INTO public.moon VALUES (20, NULL, NULL, 5, '65xfjfhh78');
INSERT INTO public.moon VALUES (21, NULL, NULL, 3, '688wdfh7');
INSERT INTO public.moon VALUES (22, NULL, NULL, 4, '98xcfh87');
INSERT INTO public.moon VALUES (23, NULL, NULL, 6, '57wdhf56');
INSERT INTO public.moon VALUES (24, NULL, NULL, 1, '8xfgx9579');
INSERT INTO public.moon VALUES (25, NULL, NULL, 4, '74fxhd586');
INSERT INTO public.moon VALUES (26, NULL, NULL, 1, '895xdh79');
INSERT INTO public.moon VALUES (27, NULL, NULL, 4, '745dhf8fgf6');


--
-- Data for Name: owner; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.owner VALUES (1, NULL, NULL, 'elon musk');
INSERT INTO public.owner VALUES (2, NULL, NULL, 'andrew tate');
INSERT INTO public.owner VALUES (3, NULL, NULL, 'bill gates');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, 3, '65hh78', NULL);
INSERT INTO public.planet VALUES (2, NULL, NULL, 3, '6887', NULL);
INSERT INTO public.planet VALUES (3, NULL, NULL, 4, '9887', NULL);
INSERT INTO public.planet VALUES (4, NULL, NULL, 5, '5756', NULL);
INSERT INTO public.planet VALUES (5, NULL, NULL, 1, '89579', NULL);
INSERT INTO public.planet VALUES (6, NULL, NULL, 1, '74586', NULL);
INSERT INTO public.planet VALUES (8, NULL, NULL, 3, '65qsfhh78', NULL);
INSERT INTO public.planet VALUES (9, NULL, NULL, 3, '6wff887', NULL);
INSERT INTO public.planet VALUES (10, NULL, NULL, 4, '98wxgwf87', NULL);
INSERT INTO public.planet VALUES (11, NULL, NULL, 5, '575wfdfh6', NULL);
INSERT INTO public.planet VALUES (12, NULL, NULL, 1, '8957dxfh9', NULL);
INSERT INTO public.planet VALUES (13, NULL, NULL, 1, '74586fcg', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, 3, '6578', NULL);
INSERT INTO public.star VALUES (2, NULL, NULL, 3, '56887', NULL);
INSERT INTO public.star VALUES (3, NULL, NULL, 4, '89887', NULL);
INSERT INTO public.star VALUES (4, NULL, NULL, 5, '65756', NULL);
INSERT INTO public.star VALUES (5, NULL, NULL, 1, '789579', NULL);
INSERT INTO public.star VALUES (6, NULL, NULL, 1, '474586', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: owner_owner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.owner_owner_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: owner owner_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.owner
    ADD CONSTRAINT owner_name_key UNIQUE (name);


--
-- Name: owner owner_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.owner
    ADD CONSTRAINT owner_pkey PRIMARY KEY (owner_id);


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
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

