--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: mwfuuybibuxdmb; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO mwfuuybibuxdmb;

--
-- Name: subscribers; Type: TABLE; Schema: public; Owner: mwfuuybibuxdmb; Tablespace: 
--

CREATE TABLE subscribers (
    id integer NOT NULL,
    email character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.subscribers OWNER TO mwfuuybibuxdmb;

--
-- Name: subscribers_id_seq; Type: SEQUENCE; Schema: public; Owner: mwfuuybibuxdmb
--

CREATE SEQUENCE subscribers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscribers_id_seq OWNER TO mwfuuybibuxdmb;

--
-- Name: subscribers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mwfuuybibuxdmb
--

ALTER SEQUENCE subscribers_id_seq OWNED BY subscribers.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mwfuuybibuxdmb
--

ALTER TABLE ONLY subscribers ALTER COLUMN id SET DEFAULT nextval('subscribers_id_seq'::regclass);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: mwfuuybibuxdmb
--

COPY schema_migrations (version) FROM stdin;
20140519201927
20140519203426
\.


--
-- Data for Name: subscribers; Type: TABLE DATA; Schema: public; Owner: mwfuuybibuxdmb
--

COPY subscribers (id, email, created_at, updated_at) FROM stdin;
1	alexander.chen@yale.edu	2014-05-20 08:00:07.770644	2014-05-20 08:00:07.770644
\.


--
-- Name: subscribers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mwfuuybibuxdmb
--

SELECT pg_catalog.setval('subscribers_id_seq', 1, true);


--
-- Name: subscribers_pkey; Type: CONSTRAINT; Schema: public; Owner: mwfuuybibuxdmb; Tablespace: 
--

ALTER TABLE ONLY subscribers
    ADD CONSTRAINT subscribers_pkey PRIMARY KEY (id);


--
-- Name: index_subscribers_on_email; Type: INDEX; Schema: public; Owner: mwfuuybibuxdmb; Tablespace: 
--

CREATE UNIQUE INDEX index_subscribers_on_email ON subscribers USING btree (email);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: mwfuuybibuxdmb; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

