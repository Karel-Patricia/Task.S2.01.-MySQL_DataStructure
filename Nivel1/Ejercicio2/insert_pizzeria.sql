USE pizzeria;

INSERT INTO province (name) VALUES ('Barcelona');
INSERT INTO city (name, province_id) VALUES ('Barcelona', 1);

INSERT INTO store (address, postal_code, city_id) VALUES ('Main street 10', '08001', 1);

INSERT INTO customer (first_name, last_name, address, postal_code, phone, city_id) VALUES 
('John', 'Doe', 'Street 5', '08002', '600123456', 1);

INSERT INTO employee (first_name, last_name, nif, phone, role, store_id) VALUES 
('Ana', 'Guti', '12345678A', '600111111', 'delivery', 1),
('Marco', 'Rosti', '87654321B', '600222222', 'cook', 1);

INSERT INTO pizza_category (name) VALUES ('Classic');

INSERT INTO product (name, description, price, product_type) VALUES 
('Coca-Cola', 'Soft drink', 2.50, 'drink'),
('Water', 'Mineral water', 1.50, 'drink'),
('Margherita', 'Cheese pizza', 8.00, 'pizza');

INSERT INTO `order` (order_date, delivery_type, total_price, customer_id, store_id, delivery_employee_id)
VALUES ('2026-01-10 20:00:00', 'home_delivery', 12.50, 1, 1, 1);

INSERT INTO order_product (order_id, product_id, quantity) VALUES 
(1, 1, 2), 
(1, 2, 1); 





