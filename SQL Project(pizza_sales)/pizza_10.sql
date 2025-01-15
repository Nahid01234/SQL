-- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    name, CEIL(SUM(quantity * price)) AS revenue
FROM
    order_details od
        JOIN
    pizzas pz ON od.pizza_id = pz.pizza_id
        JOIN
    pizza_types pt ON pt.pizza_type_id = pz.pizza_type_id
GROUP BY name
ORDER BY revenue DESC
LIMIT 3;






