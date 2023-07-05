CREATE TABLE table_goods
(
    goods_id     INTEGER PRIMARY KEY AUTOINCREMENT,
    name         TEXT NOT NULL,
    category     TEXT NOT NULL,
    quantity     TEXT NOT NULL,
    cost_price   TEXT NOT NULL,
    manufacturer TEXT NOT NULL,
    sell_price   TEXT NOT NULL
);

CREATE TABLE table_persons
(
    person_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name      TEXT NOT NULL,
    email     TEXT NOT NULL,
    phone     TEXT NOT NULL,
    gender    TEXT NOT NULL
);

CREATE TABLE table_employees
(
    employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id   INTEGER NOT NULL,
    position    TEXT    NOT NULL,
    hire_date   TEXT    NOT NULL,
    salary      TEXT    NOT NULL,
    FOREIGN KEY (person_id) REFERENCES table_persons (person_id)
);

CREATE TABLE table_customers
(
    customer_id   INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id     INTEGER NOT NULL,
    order_history TEXT    NOT NULL,
    discount      TEXT    NOT NULL,
    subscribe     INTEGER NOT NULL,
    FOREIGN KEY (person_id) REFERENCES table_persons (person_id)
);

CREATE TABLE table_sales
(
    sale_id      INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id  INTEGER NOT NULL,
    customer_id  INTEGER NOT NULL,
    goods_id     INTEGER NOT NULL,
    sale_price   TEXT    NOT NULL,
    sale_date    TEXT    NOT NULL,
    quantity     TEXT    NOT NULL,
    cost_price   TEXT    NOT NULL,
    manufacturer TEXT    NOT NULL,
    FOREIGN KEY (goods_id) REFERENCES table_goods (goods_id),
    FOREIGN KEY (employee_id) REFERENCES table_employees (employee_id),
    FOREIGN KEY (customer_id) REFERENCES table_customers (customer_id)
);

CREATE VIEW view_salary_history_data AS
SELECT table_persons.person_id AS 'ID',
       table_employees.position AS 'Должность',
       table_customers.order_history AS 'Дата заказа'
FROM table_persons
JOIN table_employees
    ON table_persons.person_id = table_employees.person_id
JOIN table_customers
    ON table_persons.person_id = table_customers.person_id;

CREATE VIEW view_order_sale_date AS
SELECT table_customers.person_id AS 'ID',
       table_customers.order_history AS 'Дата заказа',
       table_sales.sale_date AS 'Дата продажи'
FROM table_customers
JOIN table_sales ON table_customers.customer_id = table_sales.customer_id;

CREATE VIEW viev_customers_order_sale_date AS
SELECT table_persons.person_id AS 'ID',
       table_persons.name AS 'Имя',
       table_persons.gender AS 'Пол',
       table_persons.email AS 'Почта',
       view_order_sale_date.ID, "Дата заказа", "Дата продажи"
FROM table_persons
JOIN table_customers ON table_persons.person_id = table_customers.person_id
JOIN view_order_sale_date ON table_customers.person_id=view_order_sale_date.ID




