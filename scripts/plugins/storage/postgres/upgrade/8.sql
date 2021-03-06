-- Create SEQUENCE for asset_tracker
CREATE SEQUENCE fledge.asset_tracker_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

-- Create TABLE for asset_tracker
CREATE TABLE fledge.asset_tracker (
       id            integer                NOT NULL DEFAULT nextval('fledge.asset_tracker_id_seq'::regclass),
       asset         character(50)          NOT NULL,
       event         character varying(50)  NOT NULL,
       service       character varying(255) NOT NULL,
       fledge       character varying(50)  NOT NULL,
       plugin        character varying(50)  NOT NULL,
       ts            timestamp(6) with time zone NOT NULL DEFAULT now() );

-- Create INDEX for asset_tracker
CREATE INDEX asset_tracker_ix1 ON fledge.asset_tracker USING btree (asset);
CREATE INDEX asset_tracker_ix2 ON fledge.asset_tracker USING btree (service);
