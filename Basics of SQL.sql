USE new_schema;

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    size VARCHAR(10),
    stock INT,
    rating DECIMAL(2,1)
);

INSERT INTO product
(product_id, product_name, category, brand, price, size, stock, rating)
VALUES
(1, 'Cotton T-Shirt', 'T-Shirt', 'Nike', 1299, 'M', 50, 4.3),
(2, 'Slim Fit Jeans', 'Jeans', 'Levis', 2999, '32', 35, 4.5),
(3, 'Casual Shirt', 'Shirt', 'Peter England', 1999, 'L', 40, 4.2),
(4, 'Hoodie', 'Winter Wear', 'Puma', 2499, 'XL', 25, 4.4),
(5, 'Formal Trousers', 'Trousers', 'Van Heusen', 2799, '34', 30, 4.1),
(6, 'Printed T-Shirt', 'T-Shirt', 'Adidas', 1499, 'L', 45, 4.6),
(7, 'Denim Jacket', 'Jacket', 'Levis', 3999, 'M', 15, 4.7),
(8, 'Polo T-Shirt', 'T-Shirt', 'Puma', 1799, 'S', 38, 4.3),
(9, 'Kurta', 'Ethnic Wear', 'Manyavar', 2299, 'L', 20, 4.5),
(10, 'Chinos', 'Trousers', 'Allen Solly', 2199, '32', 28, 4.0),
(11, 'Track Pants', 'Sportswear', 'Nike', 1899, 'M', 42, 4.2),
(12, 'Sweatshirt', 'Winter Wear', 'Adidas', 2699, 'XL', 18, 4.4),
(13, 'Cargo Pants', 'Trousers', 'Roadster', 2399, '34', 32, 4.1),
(14, 'Floral Dress', 'Dress', 'H&M', 2999, 'M', 22, 4.6),
(15, 'Leather Jacket', 'Jacket', 'Roadster', 4999, 'L', 10, 4.8),
(16, 'Cotton T-Shirt', 'T-Shirt', 'Adidas', 1399, 'L', 35, 4.4),
(17, 'Straight Fit Jeans', 'Jeans', 'Wrangler', 3299, '30', 24, 4.4),
(18, 'Linen Shirt', 'Shirt', 'Allen Solly', 2399, 'M', 27, 4.5),
(19, 'Bomber Jacket', 'Jacket', 'Puma', 4499, 'L', 12, 4.2),
(20, 'Formal Shirt', 'Shirt', 'Van Heusen', 2199, 'XL', 33, 4.6),
(21, 'Joggers', 'Sportswear', 'Adidas', 1999, 'L', 41, 4.1),
(22, 'Denim Shorts', 'Shorts', 'Levis', 1799, '32', 26, 4.0),
(23, 'Maxi Dress', 'Dress', 'H&M', 3499, 'M', 16, 4.7),
(24, 'Silk Kurta', 'Ethnic Wear', 'Manyavar', 3299, 'XL', 14, 4.6),
(25, 'Woolen Sweater', 'Winter Wear', 'Roadster', 2999, 'L', 21, 4.3),
(26, 'Skinny Jeans', 'Jeans', 'Wrangler', 2899, '28', 31, 4.2),
(27, 'Running Shorts', 'Sportswear', 'Nike', 1399, 'M', 48, 4.4),
(28, 'Casual Blazer', 'Blazer', 'Peter England', 5999, 'L', 9, 4.5),
(29, 'Graphic T-Shirt', 'T-Shirt', 'Adidas', 1199, 'S', 60, 4.1),
(30, 'Party Wear Dress', 'Dress', 'H&M', 4299, 'L', 11, 4.8),
(31, 'Cotton T-Shirt', 'T-Shirt', 'Puma', 1299, 'XL', 44, 4.2),
(32, 'Slim Fit Jeans', 'Jeans', 'Levis', 3199, '34', 29, 4.6),
(33, 'Casual Shirt', 'Shirt', 'Roadster', 1899, 'M', 37, 4.3),
(34, 'Hoodie', 'Winter Wear', 'Nike', 2999, 'L', 17, 4.5),
(35, 'Formal Trousers', 'Trousers', 'Allen Solly', 2599, '32', 26, 4.2),
(36, 'Polo T-Shirt', 'T-Shirt', 'Nike', 1699, 'M', 39, 4.4),
(37, 'Denim Jacket', 'Jacket', 'Wrangler', 4199, 'XL', 13, 4.6),
(38, 'Kurta', 'Ethnic Wear', 'Manyavar', 2499, 'M', 23, 4.4),
(39, 'Track Pants', 'Sportswear', 'Puma', 1799, 'L', 34, 4.3),
(40, 'Floral Dress', 'Dress', 'H&M', 3199, 'S', 19, 4.7);

SELECT * FROM product;

SELECT product_name, price, rating
FROM product;

SELECT *
FROM product
WHERE price > 2000;

SELECT *
FROM product
WHERE price > 1500 AND rating > 4.2;

SELECT *
FROM product
WHERE product_name LIKE '%Shirt%';

SELECT *
FROM product
WHERE product_name LIKE 'C%';

SELECT *
FROM product
WHERE category IN ('Jeans', 'Shirt');

SELECT DISTINCT category
FROM product;

SELECT *
FROM product
ORDER BY price DESC;

SELECT *
FROM product
LIMIT 2;

