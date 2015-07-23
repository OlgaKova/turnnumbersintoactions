SELECT sfoi.sku AS SKU, sum(qty_ordered) AS Qty , name AS Description
FROM  `sales_flat_order_item` AS sfoi
JOIN  `catalog_product_entity` AS cpe ON cpe.entity_id = sfoi.product_id
GROUP BY product_id
ORDER BY sum(qty_ordered) DESC
LIMIT 5
/*However this query does not address the situation when we have more than five most popular product with the same number of units sold. If we have two products that were sold equal number of times, ‘Top Product Number Five’ and ‘Top Product Number 6′, MySQL will return either the ‘Top Product Number Five’ or the ‘Top Product Number 6′ randomly for the fifth most popular product each time we run the query.*/