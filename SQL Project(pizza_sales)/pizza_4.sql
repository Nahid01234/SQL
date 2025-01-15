-- Identify the most common pizza size ordered.

SELECT 
    size, COUNT(*) cp
FROM
    order_details od
        JOIN
    pizzas p ON od.pizza_id = p.pizza_id
GROUP BY size
ORDER BY cp DESC
LIMIT 1;





