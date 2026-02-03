INSERT INTO supplier (name, street, street_number, floor, door, city, postal_code, country, phone, fax, nif) 
VALUES
('Vision Top', 'Main Street', '12', '2', 'A', 'Barcelona', '08001', 'Spain', '931234567', '931234568', 'B12345678'),
('Optic Fox', 'High Road', '45', NULL, NULL, 'Madrid', '28010', 'Spain', '911234567', NULL, 'B87654321');

INSERT INTO brand (name, supplier_id) 
VALUES
('RayView', 1),
('ClearLook', 1),
('EyeStyle', 2);

INSERT INTO glasses (brand_id, left_lens_graduation, right_lens_graduation, frame_type, frame_color, left_lens_color, right_lens_color, price)
VALUES
(1, -2.50, -2.00, 'plastic', 'black', 'transparent', 'transparent', 120.00),
(2,  1.25,  1.50, 'metal', 'silver', 'transparent', 'transparent', 150.00),
(3, -1.00, -1.25, 'floating', 'blue', 'transparent', 'transparent', 180.00);

INSERT INTO customer (name, postal_address, phone, email, registration_date, recommended_by)
VALUES
('Joan Ramon', 'Calle Falsa 123, 28001 Madrid, España', '600123456', 'john.smith@email.com', '2025-01-10', NULL),
('Cristina Portal', 'Calle Mayor 10, 3º Izquierda, 28013 Madrid, España', '600987654', 'anna.brown@email.com', '2025-02-05', NULL),
('Joaquin Saba', 'Av. de la Constitución 50, 41001 Sevilla, España', '601111111', 'mark.wilson@email.com', '2025-03-01', 1);

INSERT INTO employee (name)
VALUES
('Erika Sandoval'),
('Belen Navidad');

INSERT INTO sale (sale_date, customer_id, employee_id, glasses_id)
VALUES
('2025-03-10', 1, 1, 1),
('2025-03-12', 3, 2, 2),
('2025-03-15', 2, 1, 3);





