SELECT date(created_at) created_at,
ROUND(AVG(point), 0) average_points
FROM point_users
group by 1