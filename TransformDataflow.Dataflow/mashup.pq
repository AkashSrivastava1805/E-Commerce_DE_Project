[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Append"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[BindToDefaultDestination = true]
shared #"raw_tables olist_customers_dataset" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "70c54940-ebd1-46f2-8bd2-38b6483ee929"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "raw_tables.olist_customers_dataset", ItemKind = "Table"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 2", {{"customer_zip_code_prefix", Int64.Type}})
in
  #"Changed column type";
[BindToDefaultDestination = true]
shared #"raw_tables olist_geolocation_dataset" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "70c54940-ebd1-46f2-8bd2-38b6483ee929"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "raw_tables.olist_geolocation_dataset", ItemKind = "Table"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 2", {{"geolocation_zip_code_prefix", Int64.Type}, {"geolocation_lat", type number}, {"geolocation_lng", type number}})
in
  #"Changed column type";
[BindToDefaultDestination = true]
shared #"raw_tables olist_order_items_dataset" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "70c54940-ebd1-46f2-8bd2-38b6483ee929"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "raw_tables.olist_order_items_dataset", ItemKind = "Table"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 2", {{"order_item_id", Int64.Type}, {"price", type number}, {"freight_value", type number}, {"shipping_limit_date", type datetime}})
in
  #"Changed column type";
[BindToDefaultDestination = true]
shared #"raw_tables olist_order_payments_dataset" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "70c54940-ebd1-46f2-8bd2-38b6483ee929"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "raw_tables.olist_order_payments_dataset", ItemKind = "Table"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 2", {{"payment_sequential", Int64.Type}, {"payment_installments", Int64.Type}, {"payment_value", type number}})
in
  #"Changed column type";
[BindToDefaultDestination = true]
shared #"raw_tables olist_order_reviews_dataset" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "70c54940-ebd1-46f2-8bd2-38b6483ee929"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "raw_tables.olist_order_reviews_dataset", ItemKind = "Table"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 2", {{"review_score", type text}, {"review_creation_date", type text}, {"review_answer_timestamp", type text}})
in
  #"Changed column type";
[BindToDefaultDestination = true]
shared #"raw_tables olist_orders_dataset" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "70c54940-ebd1-46f2-8bd2-38b6483ee929"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "raw_tables.olist_orders_dataset", ItemKind = "Table"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 2", {{"order_purchase_timestamp", type datetime}, {"order_approved_at", type datetime}, {"order_delivered_carrier_date", type datetime}, {"order_delivered_customer_date", type datetime}, {"order_estimated_delivery_date", type datetime}})
in
  #"Changed column type";
[BindToDefaultDestination = true]
shared #"raw_tables olist_products_dataset" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "70c54940-ebd1-46f2-8bd2-38b6483ee929"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "raw_tables.olist_products_dataset", ItemKind = "Table"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 2", {{"product_name_lenght", Int64.Type}, {"product_description_lenght", Int64.Type}, {"product_photos_qty", Int64.Type}, {"product_weight_g", Int64.Type}, {"product_length_cm", Int64.Type}, {"product_height_cm", Int64.Type}, {"product_width_cm", Int64.Type}})
in
  #"Changed column type";
[BindToDefaultDestination = true]
shared #"raw_tables olist_sellers_dataset" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "70c54940-ebd1-46f2-8bd2-38b6483ee929"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "raw_tables.olist_sellers_dataset", ItemKind = "Table"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 2", {{"seller_zip_code_prefix", Int64.Type}})
in
  #"Changed column type";
shared Merge = let
  Source = Table.NestedJoin(#"raw_tables olist_customers_dataset", {"customer_id"}, #"raw_tables olist_orders_dataset", {"customer_id"}, "raw_tables olist_orders_dataset", JoinKind.LeftOuter),
  #"Expanded raw_tables olist_orders_dataset" = Table.ExpandTableColumn(Source, "raw_tables olist_orders_dataset", {"order_id", "order_status", "order_purchase_timestamp", "order_delivered_customer_date"}, {"order_id", "order_status", "order_purchase_timestamp", "order_delivered_customer_date"})
in
  #"Expanded raw_tables olist_orders_dataset";
shared #"Merge (2)" = let
  Source = Table.NestedJoin(Merge, {"order_id"}, #"raw_tables olist_order_items_dataset", {"order_id"}, "raw_tables olist_order_items_dataset", JoinKind.LeftOuter),
  #"Expanded raw_tables olist_order_items_dataset" = Table.ExpandTableColumn(Source, "raw_tables olist_order_items_dataset", {"product_id", "seller_id", "price"}, {"product_id", "seller_id", "price"})
in
  #"Expanded raw_tables olist_order_items_dataset";
shared #"Merge (3)" = let
  Source = Table.NestedJoin(#"Merge (2)", {"product_id"}, #"raw_tables olist_products_dataset", {"product_id"}, "raw_tables olist_products_dataset", JoinKind.LeftOuter),
  #"Expanded raw_tables olist_products_dataset" = Table.ExpandTableColumn(Source, "raw_tables olist_products_dataset", {"product_category_name"}, {"product_category_name"})
in
  #"Expanded raw_tables olist_products_dataset";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Final_Customer_And_seller_Table_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared Final_Customer_And_seller_Table = let
  Source = Table.NestedJoin(#"Merge (3)", {"seller_id"}, #"raw_tables olist_sellers_dataset", {"seller_id"}, "raw_tables olist_sellers_dataset", JoinKind.LeftOuter),
  #"Expanded raw_tables olist_sellers_dataset" = Table.ExpandTableColumn(Source, "raw_tables olist_sellers_dataset", {"seller_zip_code_prefix", "seller_city", "seller_state"}, {"seller_zip_code_prefix", "seller_city", "seller_state"}),
  #"Reordered columns" = Table.ReorderColumns(#"Expanded raw_tables olist_sellers_dataset", {"customer_unique_id", "customer_id", "customer_zip_code_prefix", "customer_city", "customer_state", "product_id", "product_category_name", "price", "order_id", "order_status", "order_purchase_timestamp", "order_delivered_customer_date", "seller_id", "seller_zip_code_prefix", "seller_city", "seller_state"})
in
  #"Reordered columns";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Shipment_And_Payment_Details_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared Shipment_And_Payment_Details = let
  Source = Table.NestedJoin(#"raw_tables olist_order_payments_dataset", {"order_id"}, #"raw_tables olist_orders_dataset", {"order_id"}, "raw_tables olist_orders_dataset", JoinKind.LeftOuter),
  #"Removed columns" = Table.RemoveColumns(Source, {"payment_sequential", "payment_installments"}),
  #"Expanded raw_tables olist_orders_dataset" = Table.ExpandTableColumn(#"Removed columns", "raw_tables olist_orders_dataset", {"customer_id", "order_status", "order_purchase_timestamp", "order_approved_at", "order_delivered_carrier_date", "order_delivered_customer_date", "order_estimated_delivery_date"}, {"customer_id", "order_status", "order_purchase_timestamp", "order_approved_at", "order_delivered_carrier_date", "order_delivered_customer_date", "order_estimated_delivery_date"}),
  #"Reordered columns" = Table.ReorderColumns(#"Expanded raw_tables olist_orders_dataset", {"customer_id", "order_id", "payment_type", "payment_value", "order_status", "order_purchase_timestamp", "order_approved_at", "order_delivered_carrier_date", "order_delivered_customer_date", "order_estimated_delivery_date"})
in
  #"Reordered columns";
shared Final_Customer_And_seller_Table_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true]),
  Navigation_1 = Pattern{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "1c8af75d-08d6-4d31-9b4b-10a6ca900470"]}[Data],
  Navigation_3 = Navigation_2{[Id = "Transformed_Tables", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "Final_Customer_And_seller_Table", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared Shipment_And_Payment_Details_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true]),
  Navigation_1 = Pattern{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "1c8af75d-08d6-4d31-9b4b-10a6ca900470"]}[Data],
  Navigation_3 = Navigation_2{[Id = "Transformed_Tables", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "Shipment_And_Payment_Details", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared NavigationQuery = let
  Source = Fabric.Warehouse([CreateNavigationProperties = false, HierarchicalNavigation = true])
in
  Source;
shared DefaultDestination = let
  Source = Fabric.Warehouse([CreateNavigationProperties = false, HierarchicalNavigation = true]),
  #"Navigation 1" = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[warehouseId = "c9e93946-b10c-4759-8415-cc8e4ce2a2a0"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Schema = "final_tables"]}[Data]
in
  #"Navigation 3";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Fact_Table_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared Fact_Table = let
  Source = Table.NestedJoin(Final_Customer_And_seller_Table, {"order_id"}, #"raw_tables olist_order_reviews_dataset", {"order_id"}, "raw_tables olist_order_reviews_dataset", JoinKind.LeftOuter),
  #"Expanded raw_tables olist_order_reviews_dataset" = Table.ExpandTableColumn(Source, "raw_tables olist_order_reviews_dataset", {"review_id", "order_id", "review_score", "review_comment_title", "review_comment_message", "review_creation_date", "review_answer_timestamp"}, {"review_id", "order_id.1", "review_score", "review_comment_title", "review_comment_message", "review_creation_date", "review_answer_timestamp"}),
  #"Removed columns" = Table.RemoveColumns(#"Expanded raw_tables olist_order_reviews_dataset", {"customer_city", "customer_state", "product_category_name", "order_status", "review_comment_message", "review_comment_title", "order_id.1", "seller_state", "seller_city"})
in
  #"Removed columns";
shared Fact_Table_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true]),
  Navigation_1 = Pattern{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "1c8af75d-08d6-4d31-9b4b-10a6ca900470"]}[Data],
  Navigation_3 = Navigation_2{[Id = "Transformed_Tables", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "Fact_Table", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
