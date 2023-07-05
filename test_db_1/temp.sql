SELECT table_persons.person_id       AS 'ID',
       table_employees.position      AS 'Должность',
       table_customers.order_history AS 'Дата заказа'
FROM table_persons
         JOIN table_employees
              ON table_persons.person_id = table_employees.person_id
         JOIN table_customers
              ON table_persons.person_id = table_customers.person_id;

SELECT table_persons.person_id AS 'ID',
       table_persons.name AS 'Имя',
       table_persons.gender AS 'Пол',
       table_persons.email AS 'Почта',
       view_order_sale_date.ID, "Дата заказа", "Дата продажи"
FROM table_persons
JOIN table_customers ON table_persons.person_id = table_customers.person_id
JOIN view_order_sale_date ON table_customers.person_id=view_order_sale_date.ID;

SELECT *
FROM table_persons
         JOIN table_customers
              ON table_persons.person_id = table_customers.person_id
         JOIN view_potition_history_date ON table_customers.person_id = view_potition_history_date.ID

