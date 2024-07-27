/*Syntax for creating a Partitioned Table
In this project, I'm creating a table based on date/time partitioning. There are two other types: 
-Partitioning by integer: Useful for partitioning data based on an INTEGER column.
-Partitioning by ingestion: Creates a partition on the date of data insertion.
For the table below  consider : 
- siebel:  the dataset name
- s_sales :  the table name*/
CREATE TABLE siebel.s_sales
(
    id INT64 NOT NULL,
	sales_amount FLOAT64,
	customer_name STRING,
    created_at TIMESTAMP
) 
PARTITION BY DATE(created_at);
