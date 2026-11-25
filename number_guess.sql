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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games_played; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games_played (
    id integer NOT NULL,
    username_id integer,
    tries integer,
    secret_number integer
);


ALTER TABLE public.games_played OWNER TO freecodecamp;

--
-- Name: games_played_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_played_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_played_id_seq OWNER TO freecodecamp;

--
-- Name: games_played_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_played_id_seq OWNED BY public.games_played.id;


--
-- Name: username; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.username (
    id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.username OWNER TO freecodecamp;

--
-- Name: username_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_id_seq OWNER TO freecodecamp;

--
-- Name: username_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_id_seq OWNED BY public.username.id;


--
-- Name: games_played id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_played ALTER COLUMN id SET DEFAULT nextval('public.games_played_id_seq'::regclass);


--
-- Name: username id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username ALTER COLUMN id SET DEFAULT nextval('public.username_id_seq'::regclass);


--
-- Data for Name: games_played; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games_played VALUES (1, 1, 14, 123);
INSERT INTO public.games_played VALUES (2, 23, 693, 692);
INSERT INTO public.games_played VALUES (3, 23, 545, 544);
INSERT INTO public.games_played VALUES (4, 24, 745, 744);
INSERT INTO public.games_played VALUES (5, 24, 796, 795);
INSERT INTO public.games_played VALUES (6, 23, 536, 533);
INSERT INTO public.games_played VALUES (7, 23, 133, 131);
INSERT INTO public.games_played VALUES (8, 23, 86, 85);
INSERT INTO public.games_played VALUES (9, 1, 5, 350);
INSERT INTO public.games_played VALUES (10, 25, 958, 957);
INSERT INTO public.games_played VALUES (11, 25, 144, 143);
INSERT INTO public.games_played VALUES (12, 26, 397, 396);
INSERT INTO public.games_played VALUES (13, 26, 394, 393);
INSERT INTO public.games_played VALUES (14, 25, 281, 278);
INSERT INTO public.games_played VALUES (15, 25, 589, 587);
INSERT INTO public.games_played VALUES (16, 25, 88, 87);
INSERT INTO public.games_played VALUES (17, 27, 847, 846);
INSERT INTO public.games_played VALUES (18, 27, 389, 388);
INSERT INTO public.games_played VALUES (19, 28, 541, 540);
INSERT INTO public.games_played VALUES (20, 28, 75, 74);
INSERT INTO public.games_played VALUES (21, 27, 382, 379);
INSERT INTO public.games_played VALUES (22, 27, 866, 864);
INSERT INTO public.games_played VALUES (23, 27, 353, 352);
INSERT INTO public.games_played VALUES (24, 31, 376, 375);
INSERT INTO public.games_played VALUES (25, 31, 97, 96);
INSERT INTO public.games_played VALUES (26, 32, 688, 687);
INSERT INTO public.games_played VALUES (27, 32, 369, 368);
INSERT INTO public.games_played VALUES (28, 31, 982, 979);
INSERT INTO public.games_played VALUES (29, 31, 304, 302);
INSERT INTO public.games_played VALUES (30, 31, 331, 330);
INSERT INTO public.games_played VALUES (31, 33, 488, 487);
INSERT INTO public.games_played VALUES (32, 33, 343, 342);
INSERT INTO public.games_played VALUES (33, 34, 860, 859);
INSERT INTO public.games_played VALUES (34, 34, 33, 32);
INSERT INTO public.games_played VALUES (35, 33, 422, 419);
INSERT INTO public.games_played VALUES (36, 33, 104, 102);
INSERT INTO public.games_played VALUES (37, 33, 793, 792);
INSERT INTO public.games_played VALUES (38, 36, 327, 326);
INSERT INTO public.games_played VALUES (39, 36, 877, 876);
INSERT INTO public.games_played VALUES (40, 37, 251, 250);
INSERT INTO public.games_played VALUES (41, 37, 828, 827);
INSERT INTO public.games_played VALUES (42, 36, 565, 562);
INSERT INTO public.games_played VALUES (43, 36, 746, 744);
INSERT INTO public.games_played VALUES (44, 36, 82, 81);


--
-- Data for Name: username; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.username VALUES (1, 'Ilemar');
INSERT INTO public.username VALUES (2, 'user_1795642209388');
INSERT INTO public.username VALUES (3, 'user_1795642209387');
INSERT INTO public.username VALUES (4, 'user_1795642928908');
INSERT INTO public.username VALUES (5, 'user_1795642928907');
INSERT INTO public.username VALUES (6, 'user_1795642991339');
INSERT INTO public.username VALUES (7, 'user_1795642991338');
INSERT INTO public.username VALUES (8, 'user_1795644270030');
INSERT INTO public.username VALUES (9, 'user_1795644270029');
INSERT INTO public.username VALUES (10, 'user_1795645783973');
INSERT INTO public.username VALUES (11, 'user_1795645783972');
INSERT INTO public.username VALUES (12, 'user_1795646092354');
INSERT INTO public.username VALUES (13, 'user_1795646092353');
INSERT INTO public.username VALUES (14, 'user_1795646104313');
INSERT INTO public.username VALUES (15, 'user_1795646104312');
INSERT INTO public.username VALUES (16, 'user_1795646126384');
INSERT INTO public.username VALUES (17, 'user_1795646126383');
INSERT INTO public.username VALUES (18, 'user_1795646160528');
INSERT INTO public.username VALUES (19, 'user_1795646160527');
INSERT INTO public.username VALUES (20, 'Ilmear');
INSERT INTO public.username VALUES (21, 'user_1795646822753');
INSERT INTO public.username VALUES (22, 'user_1795646822752');
INSERT INTO public.username VALUES (23, 'user_1795647523711');
INSERT INTO public.username VALUES (24, 'user_1795647523710');
INSERT INTO public.username VALUES (25, 'user_1795647664966');
INSERT INTO public.username VALUES (26, 'user_1795647664965');
INSERT INTO public.username VALUES (27, 'user_1795647894253');
INSERT INTO public.username VALUES (28, 'user_1795647894252');
INSERT INTO public.username VALUES (29, 'user_1795648035755');
INSERT INTO public.username VALUES (30, 'user_1795648035754');
INSERT INTO public.username VALUES (31, 'user_1795648089950');
INSERT INTO public.username VALUES (32, 'user_1795648089949');
INSERT INTO public.username VALUES (33, 'user_1795648253368');
INSERT INTO public.username VALUES (34, 'user_1795648253367');
INSERT INTO public.username VALUES (35, 'Jhon');
INSERT INTO public.username VALUES (36, 'user_1795648323962');
INSERT INTO public.username VALUES (37, 'user_1795648323961');


--
-- Name: games_played_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_played_id_seq', 44, true);


--
-- Name: username_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_id_seq', 37, true);


--
-- Name: games_played games_played_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_played
    ADD CONSTRAINT games_played_pkey PRIMARY KEY (id);


--
-- Name: username username_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username
    ADD CONSTRAINT username_pkey PRIMARY KEY (id);


--
-- Name: games_played fk_username_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_played
    ADD CONSTRAINT fk_username_id FOREIGN KEY (username_id) REFERENCES public.username(id);


--
-- PostgreSQL database dump complete
--

