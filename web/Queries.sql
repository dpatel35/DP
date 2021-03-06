/*
Queries
*/

/*
1.

Create a query that displays all customer orders highest to lowest orders (remember to include the customer’s name and address in the query). 
*/

select orders.orderID, customer.customerFirstName, customer.customerLastName, customer.customerAddress, orders.orderTotal
from orders, customer
order by orders.orderTotal DESC;

/*
2.

Create a query that displays the average total cost of all orders in the database. 
*/

select AVG(orderTotal)
FROM APP.ORDERS;

/*
3.

Create a query that will delete an order.
*/

delete
from APP.ORDERS
where orderID =1;

/*
4.

Create a query to generate a report that displays available products
*/

SELECT distinct i.PRODUCTNAME, ( i.inventoryQuantity - c.ProductQuantity) as remainingQty
FROM INVENTORY as i join crossreference as c
on i.ProductID = c.ProductID;

/*
5.

Create a query to generate a report that displays the total sales.
*/

SELECT SUM(ORDERTOTAL)
FROM ORDERS;

/*
6.

Create a query to generate a report that displays the number of different products sold. 
*/

SELECT p.PRODUCTNAME, c.ProductQuantity as SoldProductQuantity 
FROM Product as p join crossreference as c
on p.ProductID = c.ProductID;
