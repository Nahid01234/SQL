-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(avg_quan), 0) as average
FROM
    (SELECT 
        order_date day, SUM(quantity) avg_quan
    FROM
        orders_ o
    JOIN order_details ods ON o.order_id = ods.order_id
    GROUP BY day
    ORDER BY day) AS order_table;