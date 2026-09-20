# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "70c54940-ebd1-46f2-8bd2-38b6483ee929",
# META       "default_lakehouse_name": "Bronze_Lakehouse",
# META       "default_lakehouse_workspace_id": "e619338b-7661-4855-92ee-89037ea957b0",
# META       "known_lakehouses": [
# META         {
# META           "id": "70c54940-ebd1-46f2-8bd2-38b6483ee929"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

df1 = spark.read.format("csv") \
                .option("header","true") \
                .load("Files/olist_customers_dataset/olist_customers_dataset.csv")
# df now is a Spark DataFrame containing CSV data from "Files/olist_customers_dataset/olist_customers_dataset.csv".
df1.write.format("delta") \
         .mode("overwrite") \
         .saveAsTable("raw_tables.olist_customers_dataset")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df2 = spark.read.format("csv") \
               .option("header","true") \
               .load("Files/olist_geolocation_dataset/olist_geolocation_dataset.csv")
# df now is a Spark DataFrame containing CSV data from "Files/olist_geolocation_dataset/olist_geolocation_dataset.csv".
df2.write.format("delta") \
         .mode("overwrite") \
         .saveAsTable("raw_tables.olist_geolocation_dataset")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df3 = spark.read.format("csv") \
               .option("header","true") \
               .load("Files/olist_order_items_dataset/olist_order_items_dataset.csv")
# df now is a Spark DataFrame containing CSV data from "Files/olist_geolocation_dataset/olist_geolocation_dataset.csv".
df3.write.format("delta") \
         .mode("overwrite") \
         .saveAsTable("raw_tables.olist_order_items_dataset")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df4 = spark.read.format("csv") \
               .option("header","true") \
               .load("Files/olist_order_payments_dataset/olist_order_payments_dataset.csv")
# df now is a Spark DataFrame containing CSV data from "Files/olist_geolocation_dataset/olist_geolocation_dataset.csv".
df4.write.format("delta") \
         .mode("overwrite") \
         .saveAsTable("raw_tables.olist_order_payments_dataset")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df5 = spark.read.format("csv") \
               .option("header","true") \
               .load("Files/olist_order_reviews_dataset/olist_order_reviews_dataset.csv")
# df now is a Spark DataFrame containing CSV data from "Files/olist_geolocation_dataset/olist_geolocation_dataset.csv".
df5.write.format("delta") \
         .mode("overwrite") \
         .saveAsTable("raw_tables.olist_order_reviews_dataset")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df6 = spark.read.format("csv") \
               .option("header","true") \
               .load("Files/olist_orders_dataset/olist_orders_dataset.csv")
# df now is a Spark DataFrame containing CSV data from "Files/olist_geolocation_dataset/olist_geolocation_dataset.csv".
df6.write.format("delta") \
         .mode("overwrite") \
         .saveAsTable("raw_tables.olist_orders_dataset")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df7 = spark.read.format("csv") \
               .option("header","true") \
               .load("Files/olist_products_dataset/olist_products_dataset.csv")
# df now is a Spark DataFrame containing CSV data from "Files/olist_geolocation_dataset/olist_geolocation_dataset.csv".
df7.write.format("delta") \
         .mode("overwrite") \
         .saveAsTable("raw_tables.olist_products_dataset")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df8 = spark.read.format("csv") \
               .option("header","true") \
               .load("Files/olist_sellers_dataset/olist_sellers_dataset.csv")
# df now is a Spark DataFrame containing CSV data from "Files/olist_geolocation_dataset/olist_geolocation_dataset.csv".
df8.write.format("delta") \
         .mode("overwrite") \
         .saveAsTable("raw_tables.olist_sellers_dataset")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df9 = spark.read.format("csv") \
               .option("header","true") \
               .load("Files/product_category_name_translation/product_category_name_translation.csv")
# df now is a Spark DataFrame containing CSV data from "Files/olist_geolocation_dataset/olist_geolocation_dataset.csv".
df9.write.format("delta") \
         .mode("overwrite") \
         .saveAsTable("raw_tables.product_category_name_translation")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
