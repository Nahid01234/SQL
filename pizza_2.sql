-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(quantity * price), 2) AS revenue
FROM
    order_details od
        JOIN
    pizzas pz ON od.pizza_id = pz.pizza_id

