CREATE TABLE [final_tables].[Dim_Final_Customer_And_seller_Table] (
    [customer_unique_id]            VARCHAR (8000) NULL,
    [customer_id]                   VARCHAR (8000) NULL,
    [customer_zip_code_prefix]      BIGINT         NULL,
    [customer_city]                 VARCHAR (8000) NULL,
    [customer_state]                VARCHAR (8000) NULL,
    [product_id]                    VARCHAR (8000) NULL,
    [product_category_name]         VARCHAR (8000) NULL,
    [price]                         FLOAT (53)     NULL,
    [order_id]                      VARCHAR (8000) NULL,
    [order_status]                  VARCHAR (8000) NULL,
    [order_purchase_timestamp]      DATETIME2 (6)  NULL,
    [order_delivered_customer_date] DATETIME2 (6)  NULL,
    [seller_id]                     VARCHAR (8000) NULL,
    [seller_zip_code_prefix]        BIGINT         NULL,
    [seller_city]                   VARCHAR (8000) NULL,
    [seller_state]                  VARCHAR (8000) NULL
);


GO