/*Counting the number of items per order*/
SELECT sfo.increment_id, sum( qty_ordered ) items_number
FROM  `sales_flat_order_item` AS sfoi
INNER JOIN  `sales_flat_order` AS sfo ON sfo.entity_id = sfoi.order_id
GROUP BY order_id
