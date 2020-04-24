#Problem Set 3
#Written By John Imgrund

USE my_guitar_shop;

#Question 1
SELECT category_name, product_name, list_price FROM categories JOIN products ON
	categories.category_id = products.category_id
ORDER BY category_name, product_name ASC;

#Question 2
SELECT CONCAT(first_name, " ", last_name) AS customer_name, order_date, product_name AS product, CONCAT("$", item_price) AS price, CONCAT("$", discount_amount) AS discount, quantity FROM customers JOIN orders ON
	customers.customer_id = orders.customer_id
		JOIN order_items ON
			orders.order_id = order_items.order_id
				JOIN products ON
					order_items.product_id = products.product_id
ORDER BY last_name, order_date, product_name;

#Question 3
SELECT main.product_name, main.list_price FROM products main INNER JOIN products other ON
	main.product_id != other.product_id AND main.list_price = other.list_price
ORDER BY product_name;

#Question 4
SELECT category_name, product_id FROM categories LEFT JOIN products ON
	categories.category_id = products.category_id
WHERE product_id IS NULL;

#Question 5
SELECT COUNT(*) AS Number_Of_Orders, SUM(tax_amount) AS Tax_Sum FROM orders; 

#Question 6
SELECT email_address, COUNT(orders.order_id) as Orders_Placed, (SELECT SUM(item_price - discount_amount * quantity) FROM order_items WHERE order_id = orders.order_id) AS Order_Total FROM customers JOIN orders ON
		customers.customer_id = orders.customer_id
GROUP BY orders.customer_id 
HAVING COUNT(orders.order_id) > 1;

#Question 7
SELECT email_address, COUNT(DISTINCT order_items.product_id) AS Number_Of_Orders FROM customers JOIN orders ON
	customers.customer_id = orders.customer_id
		JOIN order_items ON
			orders.order_id = order_items.order_id
				JOIN products ON
					order_items.product_id = products.product_id
HAVING COUNT(DISTINCT order_items.product_id) > 1;

#Question 8
SELECT DISTINCT category_name FROM categories
WHERE categories.category_id IN (SELECT products.category_id FROM products)
ORDER BY category_name;

#Question 9
SELECT email_address, order_id AS order_number, (SELECT SUM(item_price - discount_amount * quantity) AS Total FROM order_items WHERE order_id = order_number) AS Order_Total FROM orders JOIN customers ON
	orders.customer_id = customers.customer_id;

#Question 10
SELECT order_id, order_date, if(ship_date IS NOT NULL,'SHIPPED','') as ship_status FROM orders WHERE ship_date IS NOT NULL
UNION
SELECT order_id, order_date, if(ship_date IS NULL,'NOT SHIPPED','') as ship_status FROM orders WHERE ship_date IS NULL
ORDER BY order_date;