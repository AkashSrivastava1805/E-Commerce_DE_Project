CREATE TABLE [final_tables].[Dim_Shipment_And_Payment_Details] (
    [customer_id]                   VARCHAR (8000) NULL,
    [order_id]                      VARCHAR (8000) NULL,
    [payment_type]                  VARCHAR (8000) NULL,
    [payment_value]                 FLOAT (53)     NULL,
    [order_status]                  VARCHAR (8000) NULL,
    [order_purchase_timestamp]      DATETIME2 (6)  NULL,
    [order_approved_at]             DATETIME2 (6)  NULL,
    [order_delivered_carrier_date]  DATETIME2 (6)  NULL,
    [order_delivered_customer_date] DATETIME2 (6)  NULL,
    [order_estimated_delivery_date] DATETIME2 (6)  NULL
);


GO