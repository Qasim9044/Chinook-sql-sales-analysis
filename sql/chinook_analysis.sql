-- ============================================================
-- Project: Music Store Revenue & Customer Intelligence Analysis
-- Database: Chinook (SQLite)
-- Tool: DBeaver
-- Author: QASIM AHMAD
-- Description:
-- This file contains structured SQL queries used to analyze
-- revenue performance, customer value, product trends, and
-- geographic distribution within the Chinook database.
-- ============================================================

-- =========================================
-- Chinook Database Sales Analysis
-- SQL Analysis using SQLite (DBeaver)
-- =========================================


-- 1. Total Customers
SELECT COUNT(*) AS total_customers
FROM customers;


-- 2. Total Store Revenue
SELECT ROUND(SUM(total),2) AS total_revenue
FROM invoices;


-- 3. Revenue by Country
SELECT BillingCountry,
       ROUND(SUM(total),2) AS revenue
FROM invoices
GROUP BY BillingCountry
ORDER BY revenue DESC;


-- 4. Top Customers by Spending
SELECT 
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country,
    ROUND(SUM(i.Total),2) AS total_spent
FROM customers c
JOIN invoices i
ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY total_spent DESC
LIMIT 10;


-- 5. Genre Performance
SELECT 
    g.Name AS genre,
    COUNT(ii.InvoiceLineId) AS tracks_sold,
    ROUND(SUM(ii.UnitPrice * ii.Quantity),2) AS revenue
FROM invoice_items ii
JOIN tracks t ON ii.TrackId = t.TrackId
JOIN genres g ON t.GenreId = g.GenreId
GROUP BY g.Name
ORDER BY revenue DESC;


-- 6. Top Artists by Revenue
SELECT 
    ar.Name AS artist,
    ROUND(SUM(ii.UnitPrice * ii.Quantity),2) AS revenue
FROM invoice_items ii
JOIN tracks t ON ii.TrackId = t.TrackId
JOIN albums al ON t.AlbumId = al.AlbumId
JOIN artists ar ON al.ArtistId = ar.ArtistId
GROUP BY ar.Name
ORDER BY revenue DESC
LIMIT 10;


-- 7. Top Selling Tracks
SELECT 
    t.Name AS track,
    ar.Name AS artist,
    COUNT(ii.InvoiceLineId) AS times_purchased,
    ROUND(SUM(ii.UnitPrice * ii.Quantity),2) AS revenue
FROM invoice_items ii
JOIN tracks t ON ii.TrackId = t.TrackId
JOIN albums al ON t.AlbumId = al.AlbumId
JOIN artists ar ON al.ArtistId = ar.ArtistId
GROUP BY t.TrackId
ORDER BY times_purchased DESC
LIMIT 10;
