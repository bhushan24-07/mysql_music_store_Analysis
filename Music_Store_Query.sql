-- Q1: who is the senior most employee based on job title ?

select * from employee
order by Levels desc
limit 1 ;

-- Q2: Which countries have the most Invoices?

select count(*) as c , BillingCountry 
from invoice
group by BillingCountry
order by c desc;

-- Q3: What are top 3 values of total invoice

 select Total from invoice
 order by Total desc
 limit 3 ;
 
--  Q4: Which city has the best customers? We would like to throw a
-- promotional Music Festival in the city we made the most money. Write a
-- query that returns one city that has the highest sum of invoice totals.
-- Return both the city name & sum of all invoice totals

select sum(Total) as invoice_total, BillingCity
from invoice
group by BillingCity
order by invoice_total desc;

-- Q5: Who is the best customer? The customer who has spent the most
-- money will be declared the best customer. Write a query that returns
-- the person who has spent the most money.

select customer.CustomerId , customer.FirstName , customer.LastName , sum(invoice.Total) as total
from customer
join invoice on customer.CustomerId = invoice.CustomerId
group by customer.CustomerId
order by total desc
limit 1 ;

