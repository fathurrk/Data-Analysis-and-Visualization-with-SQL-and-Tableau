CREATE TABLE dogecoin
(
    sno integer NOT NULL DEFAULT nextval('dogecoin_sno_seq'::regclass),
    name character varying(20) COLLATE pg_catalog."default",
    symbol character varying(20) COLLATE pg_catalog."default",
    date date NOT NULL,
    high numeric(9,8) NOT NULL,
    low numeric(9,8) NOT NULL,
    open numeric(9,8) NOT NULL,
    close numeric(9,8) NOT NULL,
    volume bigint NOT NULL,
    marketcap bigint NOT NULL,
    CONSTRAINT dogecoin_pkey PRIMARY KEY (sno)
)