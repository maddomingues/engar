--
-- PostgreSQL database dump
--

SET client_encoding = 'LATIN1';
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: engar; Type: DATABASE; Schema: -; Owner: nane
--

CREATE DATABASE engar WITH TEMPLATE = template0 ENCODING = 'LATIN1';


\connect engar

SET client_encoding = 'LATIN1';
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'Standard public schema';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: arule; Type: TABLE; Schema: public; Owner: nane; Tablespace: 
--

CREATE TABLE arule (
    id character varying(20) NOT NULL,
    antecedent character varying(3000),
    hibid bigint,
    consequent character varying(255),
    ars_hibid integer,
    idx integer,
    ct character varying(100),
    source_rules_hibids character varying(255)
);


--
-- Name: aruleset; Type: TABLE; Schema: public; Owner: nane; Tablespace: 
--

CREATE TABLE aruleset (
    hibid serial NOT NULL,
    name character varying(40),
    description character varying(255),
    original_rs_id integer,
    taxsetid integer,
    limit_confidence double precision,
    limit_support double precision,
    generalized_side character(1)
);


--
-- Name: dataset; Type: TABLE; Schema: public; Owner: nane; Tablespace: 
--

CREATE TABLE dataset (
    ds_uid serial NOT NULL,
    name character varying(40),
    description character varying(255)
);


--
-- Name: itemset; Type: TABLE; Schema: public; Owner: nane; Tablespace: 
--

CREATE TABLE itemset (
    ds_uid integer,
    is_uid integer,
    item character varying(255)
);


--
-- Name: taxonomy; Type: TABLE; Schema: public; Owner: nane; Tablespace: 
--

CREATE TABLE taxonomy (
    ts_hibid integer,
    idx integer,
    father character varying(40),
    children character varying(255)
);


--
-- Name: taxonomyset; Type: TABLE; Schema: public; Owner: nane; Tablespace: 
--

CREATE TABLE taxonomyset (
    hibid integer,
    name character varying(40),
    description character varying(255)
);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

