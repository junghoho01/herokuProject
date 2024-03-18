--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-18 22:26:37

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
-- TOC entry 216 (class 1259 OID 16413)
-- Name: images; Type: TABLE; Schema: public; Owner: jh
--

CREATE TABLE public.images (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    cloudinary_id character varying(128) NOT NULL,
    image_url character varying(128) NOT NULL
);


ALTER TABLE public.images OWNER TO jh;

--
-- TOC entry 215 (class 1259 OID 16412)
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: jh
--

CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.images_id_seq OWNER TO jh;

--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 215
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jh
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- TOC entry 4688 (class 2604 OID 16416)
-- Name: images id; Type: DEFAULT; Schema: public; Owner: jh
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- TOC entry 4835 (class 0 OID 16413)
-- Dependencies: 216
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: jh
--

COPY public.images (id, title, cloudinary_id, image_url) FROM stdin;
4	An Image	zda82rdfjv9ogzokoniq	https://res.cloudinary.com/dpegtrppd/image/upload/v1709998429/zda82rdfjv9ogzokoniq.png
5	An Image	kepdogl2pziycbpmfzjm	https://res.cloudinary.com/dpegtrppd/image/upload/v1709998690/kepdogl2pziycbpmfzjm.png
6	An Image	gqyem86vlw165rr2cxds	https://res.cloudinary.com/dpegtrppd/image/upload/v1709999618/gqyem86vlw165rr2cxds.png
\.


--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 215
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jh
--

SELECT pg_catalog.setval('public.images_id_seq', 6, true);


--
-- TOC entry 4690 (class 2606 OID 16418)
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: jh
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


-- Completed on 2024-03-18 22:26:37

--
-- PostgreSQL database dump complete
--

