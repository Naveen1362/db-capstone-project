-- TASK 3
SELECT Cuisine as MenuName from Menus
where MenuID = ANY (select MenuID from orders where Quantity >2);