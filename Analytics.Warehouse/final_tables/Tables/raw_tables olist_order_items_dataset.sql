CREATE TABLE [final_tables].[raw_tables olist_order_items_dataset] (
    [order_id]            VARCHAR (8000) NULL,
    [order_item_id]       BIGINT         NULL,
    [product_id]          VARCHAR (8000) NULL,
    [seller_id]           VARCHAR (8000) NULL,
    [shipping_limit_date] DATETIME2 (6)  NULL,
    [price]               FLOAT (53)     NULL,
    [freight_value]       FLOAT (53)     NULL
);


GO