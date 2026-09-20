[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Transformed_Tables Final_Customer_And_seller_Table_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared #"Transformed_Tables Final_Customer_And_seller_Table" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "1c8af75d-08d6-4d31-9b4b-10a6ca900470"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "Transformed_Tables.Final_Customer_And_seller_Table", ItemKind = "Table"]}[Data]
in
  #"Navigation 2";
shared #"final_tables raw_tables olist_order_reviews_dataset" = let
  Source = Fabric.Warehouse(null),
  Navigation = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 1" = Navigation{[warehouseId = "c9e93946-b10c-4759-8415-cc8e4ce2a2a0"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Schema = "final_tables", Item = "raw_tables olist_order_reviews_dataset"]}[Data]
in
  #"Navigation 2";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Fact_Table_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared Fact_Table = let
  Source = Table.NestedJoin(#"Transformed_Tables Final_Customer_And_seller_Table", {"order_id"}, #"final_tables raw_tables olist_order_reviews_dataset", {"order_id"}, "final_tables raw_tables olist_order_reviews_dataset", JoinKind.LeftOuter),
  #"Expanded final_tables raw_tables olist_order_reviews_dataset" = Table.ExpandTableColumn(Source, "final_tables raw_tables olist_order_reviews_dataset", {"review_id", "review_score", "review_comment_title", "review_comment_message", "review_creation_date", "review_answer_timestamp"}, {"review_id", "review_score", "review_comment_title", "review_comment_message", "review_creation_date", "review_answer_timestamp"}),
  #"Removed columns" = Table.RemoveColumns(#"Expanded final_tables raw_tables olist_order_reviews_dataset", {"customer_city", "product_category_name", "order_status", "customer_state", "review_comment_message", "review_comment_title", "seller_city", "seller_state"})
in
  #"Removed columns";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Transformed_Tables Shipment_And_Payment_Details_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared #"Transformed_Tables Shipment_And_Payment_Details" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "1c8af75d-08d6-4d31-9b4b-10a6ca900470"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "Transformed_Tables.Shipment_And_Payment_Details", ItemKind = "Table"]}[Data]
in
  #"Navigation 2";
shared #"Transformed_Tables Shipment_And_Payment_Details_DataDestination" = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true]),
  Navigation_1 = Pattern{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "c5295492-f4e2-4365-b71f-ea70714cece1"]}[Data],
  Navigation_3 = Navigation_2{[Id = "Fact_And_Dim", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "Dim_Shipment_And_Payment_Details", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared #"Transformed_Tables Final_Customer_And_seller_Table_DataDestination" = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true]),
  Navigation_1 = Pattern{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "c5295492-f4e2-4365-b71f-ea70714cece1"]}[Data],
  Navigation_3 = Navigation_2{[Id = "Fact_And_Dim", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "Dim_Final_Customer_And_seller_Table", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared Fact_Table_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true]),
  Navigation_1 = Pattern{[workspaceId = "e619338b-7661-4855-92ee-89037ea957b0"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "c5295492-f4e2-4365-b71f-ea70714cece1"]}[Data],
  Navigation_3 = Navigation_2{[Id = "Fact_And_Dim", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "Fact_Table", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
