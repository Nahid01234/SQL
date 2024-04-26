-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) hr, COUNT(order_id)
FROM
    orders_
GROUP BY hr;











