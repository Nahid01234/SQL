-- Identify the highest-priced pizza.

SELECT 
    name, price
FROM
    pizzas p
        JOIN
    pizza_types o ON p.pizza_type_id = o.pizza_type_id
ORDER BY p.price DESC
LIMIT 1;