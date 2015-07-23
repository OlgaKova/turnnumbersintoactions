/*The CURDATE() function returns the current date.
The NOW() function returns the current system date and time.
If you want to get a sales report for the last X days, make sure to think first what kind of output you want to get.
For me, if I run the same sales report for the last X days in the morning and in the evening of the same day, I want to get the same report without regard the current time, so I will use the CURDATE() function.
In case if we use the NOW() function, and two people want to generate the same report and then do something with it, each of them will get a slightly different version of the report since it’s nearly impossible to run the SQL query at the same time by two different people. It will create discrepancies.
Example: Orders report for the last X days*/
SELECT SFO.increment_id AS OrderId, SFO.base_subtotal AS BasketAmount, 
    SFO.base_shipping_amount AS Shipping,   
    SFO.base_discount_amount AS Discount, 
    SFO.base_tax_amount AS Tax, 
    IFNULL( SFO.base_total_paid, 0 ) AS CustomerPaid
FROM  `sales_flat_order` AS SFO
WHERE
    SFO.created_at > DATE_SUB( CURDATE( ) , INTERVAL X DAY ) 
ORDER BY SFO.created_at DESC 