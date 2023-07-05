INSERT INTO table_employees (person_id, position, hire_date, salary)
VALUES (1, 'Manager', '20.05.2005', '-');
INSERT INTO table_employees (person_id, position, hire_date, salary)
VALUES (2, 'Senior manager', '20.05.2005', '-');

INSERT INTO table_customers (person_id, order_history, discount, subscribe)
VALUES (1, '17.07.2007', 'Да', 1);
INSERT INTO table_customers (person_id, order_history, discount, subscribe)
VALUES (2, '18.07.2007', 'Нет', 0);

INSERT INTO table_persons (name, email, phone, gender)
VALUES ('Vladimir', 'null', 'Да', 'Муж');
INSERT INTO table_persons (name, email, phone, gender)
VALUES ('Anastasia', 'null', 'Да', 'Жен');
INSERT INTO table_persons (name, email, phone, gender)
VALUES ('Vladislav', 'null', 'Нет', 'Муж');
INSERT INTO table_persons (name, email, phone, gender)
VALUES ('Svetlana', 'null', 'Да', 'Жен');

INSERT INTO table_goods (name, category, quantity, cost_price, manufacturer, sell_price)
VALUES ('Dumbbells', 'Weights', 'New', '269$', 'BodyMax', '269$');
INSERT INTO table_goods (name, category, quantity, cost_price, manufacturer, sell_price)
VALUES ('Barbelss', 'Weights', 'New', '29$', 'Bodymax', '29$');

INSERT INTO table_sales (employee_id, customer_id, goods_id, sale_price, sale_date, quantity, cost_price, manufacturer)
VALUES (1, 1, 1, '269$', '17.07.2007', 'New', '269$', 'BodyMax');
INSERT INTO table_sales (employee_id, customer_id, goods_id, sale_price, sale_date, quantity, cost_price, manufacturer)
VALUES (2, 2, 2, '29$', '18.07.2007', 'New', '29$', 'BodyMax');









