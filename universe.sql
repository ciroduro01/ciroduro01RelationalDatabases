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
    name character varying NOT NULL,
    galaxy_id numeric NOT NULL,
    density integer,
    weight integer,
    is_empty boolean,
    is_far boolean,
    latin_name text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: mars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mars (
    name character varying NOT NULL,
    mars_id numeric NOT NULL,
    is_empty boolean,
    is_far boolean,
    density integer,
    weight integer,
    latin_name text
);


ALTER TABLE public.mars OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    moon_id numeric NOT NULL,
    density integer,
    weight integer,
    is_empty boolean,
    is_far boolean,
    latin_name text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    planet_id numeric NOT NULL,
    density integer,
    weight integer,
    is_empty boolean,
    is_far boolean,
    latin_name text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    star_id numeric NOT NULL,
    density integer,
    weight integer,
    is_empty boolean,
    is_far boolean,
    latin_name text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('One', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Two', 2, 250, 300, false, true, 'The wind the willows');
INSERT INTO public.galaxy VALUES ('Three', 3, 500, 80, true, true, 'Flora and secret');
INSERT INTO public.galaxy VALUES ('Four', 4, 900, 700, false, false, 'Wind in the castle');
INSERT INTO public.galaxy VALUES ('Five', 5, 200, 500, true, false, 'The chimney');
INSERT INTO public.galaxy VALUES ('Six', 6, 900, 400, false, true, 'The galaxies around');


--
-- Data for Name: mars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mars VALUES ('One', 1, true, false, 550, 450, 'No mars here');
INSERT INTO public.mars VALUES ('Two', 2, false, false, 550, 3450, 'Mars is not here');
INSERT INTO public.mars VALUES ('Three', 3, false, true, 600, 200, 'Mars was here');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('One', 1, 250, 400, true, false, 'The sky', 1);
INSERT INTO public.moon VALUES ('Two', 2, 450, 340, false, false, 'The sunset', 1);
INSERT INTO public.moon VALUES ('Three', 3, 504, 2304, false, true, 'The skyB', 1);
INSERT INTO public.moon VALUES ('Four', 4, 50, 450, false, false, 'The sunsetB', 1);
INSERT INTO public.moon VALUES ('Five', 5, 340, 450, false, true, 'The moonA', 1);
INSERT INTO public.moon VALUES ('Six', 6, 340, 560, false, true, 'The skyQP', 1);
INSERT INTO public.moon VALUES ('Seven', 7, 234, 450, true, false, 'The LandA', 1);
INSERT INTO public.moon VALUES ('Eight', 8, 345, 567, false, false, 'The LandB', 1);
INSERT INTO public.moon VALUES ('Nine', 9, 1234, 4560, true, false, 'The LandC', 1);
INSERT INTO public.moon VALUES ('Ten', 10, 23450, 5670, false, false, 'The LandD', 1);
INSERT INTO public.moon VALUES ('Eleven', 11, 2345, 4560, true, true, 'OrbitA', 1);
INSERT INTO public.moon VALUES ('Twelve', 12, 23450, 4560, false, false, 'OrbitB', 1);
INSERT INTO public.moon VALUES ('Thirteen', 13, 3450, 5670, false, true, 'OrbitC', 1);
INSERT INTO public.moon VALUES ('Fourteen', 14, 540, 450, false, false, 'OrbitD', 1);
INSERT INTO public.moon VALUES ('Fifteen', 15, 5450, 560, true, true, 'OrbitE', 1);
INSERT INTO public.moon VALUES ('Sixteen', 16, 4560, 4503, false, false, 'OrbitF', 1);
INSERT INTO public.moon VALUES ('Seventeen', 17, 550, 5430, false, false, 'OrbitG', 1);
INSERT INTO public.moon VALUES ('Eighteen', 18, 550, 6750, false, false, 'OrbitH', 1);
INSERT INTO public.moon VALUES ('Nineteen', 19, 450, 550, false, false, 'OrbitW', 1);
INSERT INTO public.moon VALUES ('Twenty', 20, 2210, 22450, false, false, 'OrbitX', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('One', 1, 240, 340, false, false, 'Mercury', 1);
INSERT INTO public.planet VALUES ('Two', 2, 450, 750, false, true, 'Venus', 1);
INSERT INTO public.planet VALUES ('Three', 3, 540, 340, true, true, 'Earth', 1);
INSERT INTO public.planet VALUES ('Four', 4, 40, 230, false, true, 'Mars', 1);
INSERT INTO public.planet VALUES ('Five', 5, 530, 340, true, true, 'JupyterA', 1);
INSERT INTO public.planet VALUES ('Six', 6, 450, 2430, false, false, 'JupyterB', 1);
INSERT INTO public.planet VALUES ('Seven', 7, 23450, 45030, true, true, 'JupyterC', 1);
INSERT INTO public.planet VALUES ('Eight', 8, 560, 2340, false, false, 'JupterD', 1);
INSERT INTO public.planet VALUES ('Nine', 9, 450, 230, true, true, 'SaturnA', 1);
INSERT INTO public.planet VALUES ('Ten', 10, 2340, 560, true, true, 'SaturnB', 1);
INSERT INTO public.planet VALUES ('Eleven', 11, 450, 460, false, false, 'SaturnC', 1);
INSERT INTO public.planet VALUES ('Twelve', 12, 560, 4560, false, true, 'SatudD', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Two', 2, 250, 500, false, false, 'No real but real name', 1);
INSERT INTO public.star VALUES ('One', 1, 200, 300, false, true, 'Alpha', 1);
INSERT INTO public.star VALUES ('Three', 3, 300, 400, false, false, 'Beta', 1);
INSERT INTO public.star VALUES ('Four', 4, 450, 500, true, true, 'Omega', 1);
INSERT INTO public.star VALUES ('Five', 5, 600, 40, false, true, 'Delta', 1);
INSERT INTO public.star VALUES ('Six', 6, 400, 700, true, false, 'Epsilon', 1);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: mars hw_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars
    ADD CONSTRAINT hw_name UNIQUE (name);


--
-- Name: mars mars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars
    ADD CONSTRAINT mars_pkey PRIMARY KEY (mars_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star unique_density; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_density UNIQUE (density);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon wh_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT wh_name UNIQUE (name);


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

