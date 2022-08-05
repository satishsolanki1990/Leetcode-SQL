-- Use 'show tables' to see tables
/*
SQL Schema
Table: Customers

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the ID and name of a customer.
 

Table: Orders

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| customerId  | int  |
+-------------+------+
id is the primary key column for this table.
customerId is a foreign key of the ID from the Customers table.
Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
 

Write an SQL query to report all customers who never order anything.

Return the result table in any order.

The query result format is in the following example.

left join (A,B) gives a table A with columns of B with some of the values null and not NULL depands on joining condition.


*/


# Write your MySQL query statement below

SELECT cst.name as Customers
FROM Customers cst left join Orders ord
on cst.id = ord.customerId 
where ord.customerId is NULL;






