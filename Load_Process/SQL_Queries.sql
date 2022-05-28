-- Query to check successful load
SELECT * FROM currys_products;

SELECT * FROM very_products;

-- Drop duplicated index columns 

ALTER TABLE currys_products
  DROP COLUMN index;

ALTER TABLE very_products
  DROP COLUMN index;
  
-- Rename very table to very_products
ALTER TABLE very
  RENAME TO very_products;
  
-- Rename currys table to currys_products
ALTER TABLE currys
  RENAME TO currys_products;

-- Query very_products without null prices
SELECT * FROM very_products
WHERE price IS NOT NULL;
  
-- Query tables to view all products
SELECT DISTINCT cp.product_name, cp.category, cp.price, vp.product_name, vp.category, vp.price
FROM currys_products AS cp
FULL JOIN very_products as vp
ON (cp.product_name = vp.product_name)
WHERE vp.price IS NOT NULL;

-- Query tables to view customer ratings comparison
SELECT DISTINCT cp.product_name, cp.category, cp.customer_rating, cp.rating_count, vp.product_name, vp.category, vp.customer_rating, vp.rating_count
FROM currys_products AS cp
FULL JOIN very_products as vp
ON (cp.product_name = vp.product_name)
WHERE vp.product_name IS NOT NULL;

-- Query highest rated currys_products
SELECT cp.product_name, cp.category, cp.customer_rating
FROM currys_products AS cp
WHERE customer_rating BETWEEN '3' AND '5'
ORDER BY customer_rating DESC;

-- Query lowest rated currys_products
SELECT cp.product_name, cp.category, cp.customer_rating
FROM currys_products AS cp
WHERE customer_rating BETWEEN '0.0' AND '2'
ORDER BY customer_rating DESC;

-- Query highest rated very_products
SELECT vp.product_name, vp.category, vp.customer_rating
FROM very_products AS vp
WHERE customer_rating BETWEEN '3' AND '5'
ORDER BY customer_rating DESC;

-- Query lowest rated very_products
SELECT vp.product_name, vp.category, vp.customer_rating
FROM very_products AS vp
WHERE customer_rating BETWEEN '0.0' AND '2'
ORDER BY customer_rating DESC;

-- Query AVG customer product rating currys_products
SELECT AVG(customer_rating) FROM currys_products;

-- Query AVG customer product rating very_products
SELECT AVG(customer_rating) FROM very_products;
