-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    category, SUM(quantity) AS total_quan
FROM
    order_details od
        JOIN
    pizzas pz ON od.pizza_id = pz.pizza_id
        JOIN
    pizza_types pt ON pz.pizza_type_id = pt.pizza_type_id
GROUP BY category
ORDER BY total_quan;






