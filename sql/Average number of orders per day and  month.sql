/*What is the average number of orders per day?*/
SELECT AVG( orders_num )
FROM (
	SELECT created_at, COUNT( DISTINCT order_id ) orders_num
	FROM `sales_flat_order_item`
	GROUP BY CAST( created_at AS DATE )
)orders_per_day
/*What is the average number of orders per month?*/
SELECT AVG( orders_num ) 
FROM (
	SELECT created_at, COUNT( DISTINCT order_id ) orders_num
	FROM  `sales_flat_order_item` 
	GROUP BY MONTH( created_at )
)orders_per_month
