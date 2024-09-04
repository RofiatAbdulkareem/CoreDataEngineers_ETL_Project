/* 1. Find a list of order IDs where either gloss_qty or poster_qty is greater than 4000. Only include the id field in the resulting table. */
SELECT id
FROM   orders
WHERE  gloss_qty > 4000 OR poster_qty > 4000;

/* 2. Write a query that returns a list of orders where the standard_qty is zero and either the gloss_qty or poster_qty is over 1000. */
SELECT  *
FROM    orders
WHERE   standard_qty = 0 AND (gloss_qty > 1000 OR poster_qty > 1000);

/* 3. Find all the company names that start with a 'C' or 'W', and where the primary contact contains 'ana' or 'Ana', but does not contain 'eana'. */
SELECT name
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%')
AND   (name ILIKE '%ana%') AND   (name NOT ILIKE '%eana%');

/* 4. Provide a table that shows the region for each sales rep along with their associated accounts. Your final table should include three columns: 
the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z) by account name. */
SELECT   r.name region_name, s.name sales_reps_name, a.name account_name
FROM     accounts a
JOIN     sales_reps s
ON       a.sales_rep_id = s.id
JOIN     region r
ON       s.region_id = r.id
ORDER BY a.name ASC;
