-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    name, SUM(quantity) amount
FROM
    pizza_types pt
        JOIN
    pizzas p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details od ON od.pizza_id = p.pizza_id
GROUP BY name
ORDER BY amount DESC
LIMIT 5;





