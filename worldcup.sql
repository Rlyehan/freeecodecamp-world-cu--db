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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_teamd_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_teamd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_teamd_id_seq OWNER TO freecodecamp;

--
-- Name: teams_teamd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_teamd_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_teamd_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 226, 225, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 228, 227, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 225, 227, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 226, 228, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 225, 233, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 227, 235, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 228, 237, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 226, 239, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 227, 241, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 235, 243, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 228, 245, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 237, 247, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 225, 249, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 233, 251, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 239, 253, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 226, 255, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 258, 255, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 260, 237, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 255, 260, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 258, 237, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 260, 265, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 255, 228, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 237, 241, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 258, 226, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 237, 273, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 241, 239, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 226, 277, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 258, 279, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 260, 247, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 265, 283, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 255, 243, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 228, 287, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (225, 'Croatia');
INSERT INTO public.teams VALUES (226, 'France');
INSERT INTO public.teams VALUES (227, 'England');
INSERT INTO public.teams VALUES (228, 'Belgium');
INSERT INTO public.teams VALUES (233, 'Russia');
INSERT INTO public.teams VALUES (235, 'Sweden');
INSERT INTO public.teams VALUES (237, 'Brazil');
INSERT INTO public.teams VALUES (239, 'Uruguay');
INSERT INTO public.teams VALUES (241, 'Colombia');
INSERT INTO public.teams VALUES (243, 'Switzerland');
INSERT INTO public.teams VALUES (245, 'Japan');
INSERT INTO public.teams VALUES (247, 'Mexico');
INSERT INTO public.teams VALUES (249, 'Denmark');
INSERT INTO public.teams VALUES (251, 'Spain');
INSERT INTO public.teams VALUES (253, 'Portugal');
INSERT INTO public.teams VALUES (255, 'Argentina');
INSERT INTO public.teams VALUES (258, 'Germany');
INSERT INTO public.teams VALUES (260, 'Netherlands');
INSERT INTO public.teams VALUES (265, 'Costa Rica');
INSERT INTO public.teams VALUES (273, 'Chile');
INSERT INTO public.teams VALUES (277, 'Nigeria');
INSERT INTO public.teams VALUES (279, 'Algeria');
INSERT INTO public.teams VALUES (283, 'Greece');
INSERT INTO public.teams VALUES (287, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_teamd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_teamd_id_seq', 288, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games opponent_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_fk FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_fk FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

