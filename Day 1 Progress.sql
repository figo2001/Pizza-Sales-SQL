-- Identify the most common pizza size ordered.

SELECT 
    pizzas.size, COUNT(order_details.quantity)
FROM
    pizzas
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizzas.size;