CREATE TABLE [final_tables].[raw_tables olist_geolocation_dataset] (
    [geolocation_zip_code_prefix] BIGINT         NULL,
    [geolocation_lat]             FLOAT (53)     NULL,
    [geolocation_lng]             FLOAT (53)     NULL,
    [geolocation_city]            VARCHAR (8000) NULL,
    [geolocation_state]           VARCHAR (8000) NULL
);


GO