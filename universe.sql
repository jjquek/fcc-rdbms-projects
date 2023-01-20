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
-- Name: asterism; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asterism (
    asterism_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    beautiful boolean NOT NULL
);


ALTER TABLE public.asterism OWNER TO freecodecamp;

--
-- Name: asterism_asterism_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.asterism ALTER COLUMN asterism_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.asterism_asterism_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_types character varying(30),
    age_in_million_years integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    orbital_period_in_days numeric NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_type character varying(30) NOT NULL,
    age_in_million_years integer,
    confirmed boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    distance_from_earth_astro_units numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: asterism; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asterism OVERRIDING SYSTEM VALUE VALUES (1, 'Orion''s Belt', NULL, true);
INSERT INTO public.asterism OVERRIDING SYSTEM VALUE VALUES (2, 'Northern Cross', NULL, true);
INSERT INTO public.asterism OVERRIDING SYSTEM VALUE VALUES (3, 'Southern Cross', NULL, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'Milky Way', NULL, NULL, 13610);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (2, 'Sagittarius Spheroidal', NULL, NULL, 13000);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (3, 'Segue 1', NULL, NULL, 12000);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (4, 'Wilman 1', NULL, NULL, 10000);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (5, 'Large Magellanic Cloud', NULL, NULL, 1101);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'Ursa Minor Dwarf', NULL, NULL, 14000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 'Moon', NULL, 27.0, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 'Phobos', NULL, 0.292, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 'Deimos', NULL, 1.25, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 'Adrastea', NULL, 0.2983, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 'Aitne', NULL, -730.10, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 'Amalthea', NULL, 0.4999, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 'Ananke', NULL, -629.79, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 'Aoede', NULL, -761.46, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 'Arche', NULL, -731.88, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 'Callisto', NULL, 16.690, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 'Carme', NULL, -734.19, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 'Carpo', NULL, 456.29, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 'Dia', NULL, 278.21, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 'Ersa', NULL, 249.23, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 'Europa', NULL, 3.5255, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 'Io', NULL, 1.7267, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 'Elara', NULL, 259.64, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 'Kale', NULL, -729.64, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (21, 'Kore', NULL, -776.76, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (22, 'Lysithea', NULL, 259.2, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 'Mercury', 'terrestrial', NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 'Venus', 'terrestrial', NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 'Earth', 'terrestrial', NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 'Mars', 'rocky', NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 'Jupiter', 'gas giant', NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 'Saturn', 'gas giant', NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 'Uranus', 'neptunian', NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 'Neptune', 'neptunian', NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 'Planet Nine', 'rocky super earth', NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 'Ceras', 'dwarf', NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 'Pallas', 'dwarf', NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 'Vesta', 'dwarf', NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 'Sun', 'very hot', NULL, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (2, 'Barnard''s Star', 'too faint to be seen without telescope', NULL, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (3, 'Tau Ceti', 'spectrally similar to the sun', NULL, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 'YZ Ceti', 'a flare star that undergoes intermittent fluctuations in luminosity', NULL, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 'Luyten''s Star', 'a red dwarf in the Canis constellation', NULL, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 'Sagittarius', 'old man archer with horse body constellation', NULL, 2);


--
-- Name: asterism_asterism_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asterism_asterism_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asterism asterism_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asterism
    ADD CONSTRAINT asterism_description_key UNIQUE (description);


--
-- Name: asterism asterism_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asterism
    ADD CONSTRAINT asterism_name_key UNIQUE (name);


--
-- Name: asterism asterism_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asterism
    ADD CONSTRAINT asterism_pkey PRIMARY KEY (asterism_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

