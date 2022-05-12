SELECT productName AS "Name", productLine AS "Product Line", buyPrice AS "Buy Price"
FROM products

SELECT contactFirstName "First Name", contactLastName "Last Name", city "City"
FROM customers
WHERE country LIKE "Germany"

SELECT DISTINCT status
FROM orders
ORDER BY status ASC

SELECT *
FROM payments
WHERE paymentDate >= '2005-01-01'
ORDER BY paymentDate ASC

SELECT lastName, firstName, email, jobTitle
FROM employees e JOIN offices o ON  e.officeCode = O.officeCode
WHERE city LIKE "San Francisco"
ORDER BY 1

SELECT productName, productLine, productScale, productVendor
FROM products
WHERE productLine IN ('Vintage Cars', 'Classic Cars')
GROUP BY 1, 2, 3, 4
ORDER BY 1 ASC, 2 ASC, 3, 4