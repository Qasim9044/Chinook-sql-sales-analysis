# Chinook Sales Analysis – Methodology

## Approach

This project follows a structured SQL analysis workflow designed to explore sales performance within the Chinook digital media store database.

The analysis focuses on identifying patterns in:

- Customer purchasing behavior
- Revenue distribution across geographic regions
- Genre popularity
- Artist revenue contribution
- Track-level sales performance

---

## Analytical Steps

### 1. Database Exploration

The analysis began with exploring the database schema to understand table relationships including:

- customers
- invoices
- invoice_items
- tracks
- albums
- artists
- genres

Primary and foreign key relationships were examined to determine how sales data connects across the dataset.

---

### 2. Revenue Analysis

Queries were written to evaluate overall revenue performance, including:

- Total revenue generated
- Revenue distribution by country
- Identification of high-value customers

---

### 3. Product Performance

The next phase analyzed product-level performance by evaluating:

- Sales by genre
- Artist revenue contribution
- Most frequently purchased tracks

These queries relied on multiple SQL joins across transaction and catalog tables.

---

### 4. Insight Generation

The final stage focusing on seeing for the  business insights from the query results and highlighting key trends in customer behavior and catalog performance.

---

## Tools Used

- SQLite
- DBeaver
- GitHub
