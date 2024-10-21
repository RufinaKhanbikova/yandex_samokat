--Задание 1:

SELECT count (*), "Couriers"."login"
FROM "Orders"
LEFT JOIN "Couriers" ON "Orders"."courierId" = "Couriers"."id"
WHERE "inDelivery" = 'true'
GROUP BY "Couriers"."login";

--Задание 2:
SELECT "track", CASE
					WHEN "finished" = 'true'  THEN '2'
					WHEN "cancelled" = 'true' THEN '-1'
					WHEN "inDelivery" = 'true' THEN '1'
					ELSE '0'
				END AS "status"
FROM "Orders";