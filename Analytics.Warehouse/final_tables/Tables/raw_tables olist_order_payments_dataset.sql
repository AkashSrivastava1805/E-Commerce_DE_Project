CREATE TABLE [final_tables].[raw_tables olist_order_payments_dataset] (
    [order_id]             VARCHAR (8000) NULL,
    [payment_sequential]   BIGINT         NULL,
    [payment_type]         VARCHAR (8000) NULL,
    [payment_installments] BIGINT         NULL,
    [payment_value]        FLOAT (53)     NULL
);


GO