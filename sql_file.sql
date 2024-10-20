--Задание 1:

SELECT count (*), "Couriers"."login"
FROM "Orders"
LEFT JOIN "Couriers" ON "Orders"."courierId" = "Couriers"."id"
WHERE "inDelivery" = 't'
GROUP BY "Couriers"."login";

--Задание 2:
SELECT "track", CASE
					WHEN "finished" = 't'  THEN '2'
					WHEN "cancelled" = 't' THEN '-1'
					WHEN "inDelivery" = 't' THEN '1'
					ELSE '0'
				END
FROM "Orders";