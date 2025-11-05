SELECT
    u.name AS user_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_spent
FROM
    users u
JOIN
    orders o ON u.id = o.user_id
GROUP BY
    u.name
HAVING
    SUM(o.amount) > 100
ORDER BY
    total_spent DESC;
