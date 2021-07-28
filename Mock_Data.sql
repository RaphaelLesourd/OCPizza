INSERT INTO ocpizza.address (
street_number, street, postal_code, city, phone
) VALUE (
5, 'rue des champs', 75002, 'Paris', '012345678'
);
INSERT INTO ocpizza.address (
street_number, street, postal_code, city, phone
) VALUE (
23, 'avenue montigne', '75008', 'Paris', '012345678'
);
INSERT INTO ocpizza.address (
street_number, street, postal_code, city, phone
) VALUE (
12, 'rue de la toile', '75013', 'Paris', '012345678'
);
INSERT INTO ocpizza.address (
street_number, street, postal_code, city, phone
) VALUE (
45, 'impasse des clous', '75019', 'Paris', '012345678'
);
INSERT INTO ocpizza.address (
street_number, street, postal_code, city, phone
) VALUE (
145, 'rue des roses', '75001', 'Paris', '012345678'
);
INSERT INTO ocpizza.address (
street_number, street, postal_code, city, phone
) VALUE (
1, 'rue primer', '75011', 'Paris', '012345678'
);
INSERT INTO ocpizza.address (
street_number, street, postal_code, city, phone
) VALUE (
1, 'rue de champs', '93000', 'Boulogne', '012345678'
);

INSERT INTO ocpizza.pizzeria (
name, addressID
) VALUE (
'OC Pizza Paris 2', 1
);
INSERT INTO ocpizza.pizzeria (
name, addressID
) VALUE (
'OC Pizza Paris 1', 2
);
INSERT INTO ocpizza.pizzeria (
name, addressID
) VALUE (
'OC Pizza Paris 11', 3
);


INSERT INTO ocpizza.customer (
last_name, first_name, email, password, addressID
) VALUE (
'Labelle', 'Mia', 'mia@email.com', 'password', 4
);
INSERT INTO ocpizza.customer (
last_name, first_name, email, password, addressID
) VALUE (
'Vasaletti', 'Colin', 'lovepizza@email.com', 'password', 5
);
INSERT INTO ocpizza.customer (
last_name, first_name, email, password, addressID
) VALUE (
'Dédé', 'Marcel', 'marel@email.com', 'password', 2
);

INSERT INTO ocpizza.staff (
last_name, first_name, email, password, job_type, addressID, pizzeriaID
) VALUE (
'Dupont', 'Jean', 'jeandupont@email.com', 'password', 'Pizzaiolo', 2, 1
);
INSERT INTO ocpizza.staff (
last_name, first_name, email, password, job_type, addressID, pizzeriaID
) VALUE (
'Durant', 'Ben', 'bendurant@email.com', 'password', 'Delivery man', 1, 1
);



INSERT INTO ocpizza.ingredient (
name
) VALUE (
'Tomato'
);
INSERT INTO ocpizza.ingredient (
name
) VALUE (
'Pepperoni'
);
INSERT INTO ocpizza.ingredient (
name
) VALUE (
'Olives'
);
INSERT INTO ocpizza.ingredient (
name
) VALUE (
'Cheese'
);
INSERT INTO ocpizza.ingredient (
name
) VALUE (
'Oil'
);
INSERT INTO ocpizza.ingredient (
name
) VALUE (
'Flour'
);

INSERT INTO ocpizza.pizza (
name, unit_price, size
) VALUE (
'Pepproni', '12.99', 'Small'
);
INSERT INTO ocpizza.pizza (
name, unit_price, size
) VALUE (
'Pepproni', '15.99', 'Medium'
);
INSERT INTO ocpizza.pizza (
name, unit_price, size
) VALUE (
'Pepproni', '17.99', 'Large'
);

INSERT INTO ocpizza.recipe (
ingredientID, pizzaID, quantity
) VALUE (
1, 1, 2
);
INSERT INTO ocpizza.recipe (
ingredientID, pizzaID, quantity
) VALUE (
2, 1, 20
);
INSERT INTO ocpizza.recipe (
ingredientID, pizzaID, quantity
) VALUE (
3, 1, 3
);
INSERT INTO ocpizza.recipe (
ingredientID, pizzaID, quantity
) VALUE (
4, 1, 1
);

INSERT INTO ocpizza.stock (
pizzeriaID, ingredientID, quantity
) VALUE (
1, 1, 200
);
INSERT INTO ocpizza.stock (
pizzeriaID, ingredientID, quantity
) VALUE (
1, 2, 20
);
INSERT INTO ocpizza.stock (
pizzeriaID, ingredientID, quantity
) VALUE (
1, 3, 500
);
INSERT INTO ocpizza.stock (
pizzeriaID, ingredientID, quantity
) VALUE (
1, 4, 200
);
INSERT INTO ocpizza.stock (
pizzeriaID, ingredientID, quantity
) VALUE (
1, 5, 500
);
INSERT INTO ocpizza.stock (
pizzeriaID, ingredientID, quantity
) VALUE (
1, 6, 100
);

INSERT INTO ocpizza.customer_order (
total_price, status, isPaid, to_deliver, customerID, pizzeriaID, payment_type
) VALUE (
12.99, 'In preparation', 1, 1, 1, 1, 'Card'
);
INSERT INTO ocpizza.customer_order (
total_price, status, isPaid, to_deliver, customerID, pizzeriaID, payment_type
) VALUE (
'12.99', 'Awaiting preparation', '0', '0', '2', '1', 'Cash'
);
INSERT INTO ocpizza.customer_order (
total_price, status, isPaid, to_deliver, customerID, pizzeriaID, payment_type
) VALUE (
'12.99', 'Awaiting preparation', '0', '0', '3', '1', 'Cash'
);

INSERT INTO ocpizza.basket (
pizzaID, orderID, quantity
) VALUE (
'1', '2', 1
);
INSERT INTO ocpizza.basket (
pizzaID, orderID, quantity
) VALUE (
'2', '2', 1
);
INSERT INTO ocpizza.basket (
pizzaID, orderID, quantity
) VALUE (
'3', '2', 2
);

