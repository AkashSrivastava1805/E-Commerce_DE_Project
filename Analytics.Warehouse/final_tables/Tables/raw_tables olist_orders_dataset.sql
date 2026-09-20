CREATE TABLE [final_tables].[raw_tables olist_orders_dataset] (
    [order_id]                      VARCHAR (8000) NULL,
    [customer_id]                   VARCHAR (8000) NULL,
    [order_status]                  VARCHAR (8000) NULL,
    [order_purchase_timestamp]      DATETIME2 (6)  NULL,
    [order_approved_at]             DATETIME2 (6)  NULL,
    [order_delivered_carrier_date]  DATETIME2 (6)  NULL,
    [order_delivered_customer_date] DATETIME2 (6)  NULL,
    [order_estimated_delivery_date] DATETIME2 (6)  NULL
);


GO