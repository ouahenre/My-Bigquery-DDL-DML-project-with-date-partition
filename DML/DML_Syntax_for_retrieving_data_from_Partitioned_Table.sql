
/*How to use queries that target specific partitions
When running queries, it is useful to specify date ranges to limit the partitions queried.
- siebel is the dataset name
- s_sales the table name
*/

SELECT *
FROM siebel.s_sales
WHERE created_at BETWEEN '2023-01-01' AND '2023-12-31';

/*Below the total data of the table siebel.s_sales */
id	sales_amount	customer_name	created_at
1	200	                    Taba	2020-01-01
2	220	                    Xaco	2020-02-01
3	300	                    Roca	2021-07-02
4	330	                    Raco	2023-01-02
5	320	                    Tubu	2023-12-28
6	339	                    Fubu	2023-12-29
7	400	                    Fubu	2023-12-30


/*Considering the request  only the 4 loast rows will be selected. Here is the result*/

id	sales_amount	customer_name	created_at
4	330	                    Raco	2023-01-02
5	320	                    Tubu	2023-12-28
6	339	                    Fubu	2023-12-29
7	400	                    Fubu	2023-12-30


/*what are the advantages using partiions*/
- Reduce query costs by scanning only the needed data
- Improved query performance on large volumes of data.

/*How to manage the partions: questions of utility or space storage*/
- Partitions can be deleted after a certain period of time (e.g. every 3 months).
