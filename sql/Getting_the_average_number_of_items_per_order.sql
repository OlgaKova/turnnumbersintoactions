/*Getting the average number of items per order*/
SELECT AVG( items_num ) AS AvgItemsOrder
FROM (
 
		SELECT order_id, COUNT( item_id ) items_num
		FROM  `sales_flat_order_item` 
		GROUP BY order_id
)ItemsOrder