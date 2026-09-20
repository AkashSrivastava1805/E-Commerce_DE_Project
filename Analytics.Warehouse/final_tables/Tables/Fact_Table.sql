CREATE TABLE [final_tables].[Fact_Table] (
    [customer_unique_id]            VARCHAR (8000) NULL,
    [customer_id]                   VARCHAR (8000) NULL,
    [customer_zip_code_prefix]      BIGINT         NULL,
    [product_id]                    VARCHAR (8000) NULL,
    [price]                         FLOAT (53)     NULL,
    [order_id]                      VARCHAR (8000) NULL,
    [order_purchase_timestamp]      DATETIME2 (6)  NULL,
    [order_delivered_customer_date] DATETIME2 (6)  NULL,
    [seller_id]                     VARCHAR (8000) NULL,
    [seller_zip_code_prefix]        BIGINT         NULL,
    [review_id]                     VARCHAR (8000) NULL,
    [review_score]                  VARCHAR (8000) NULL,
    [review_creation_date]          VARCHAR (8000) NULL,
    [review_answer_timestamp]       VARCHAR (8000) NULL
);


GO