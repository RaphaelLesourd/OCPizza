CREATE SCHEMA `ocpizza` ;
USE `ocpizza`;


CREATE TABLE ingredient (
                ingredientID INT AUTO_INCREMENT NOT NULL,
                name VARCHAR(150) NOT NULL,
                PRIMARY KEY (ingredientID)
);


CREATE TABLE pizza (
                pizzaID INT AUTO_INCREMENT NOT NULL,
                name VARCHAR(150) NOT NULL,
                unit_price DECIMAL(5,2) NOT NULL,
                size VARCHAR(50) NOT NULL,
                PRIMARY KEY (pizzaID)
);


CREATE TABLE recipe (
                pizzaID INT NOT NULL,
                ingredientID INT NOT NULL,
                quantity DOUBLE PRECISION NOT NULL,
                PRIMARY KEY (pizzaID, ingredientID)
);


CREATE TABLE address (
                addressID INT AUTO_INCREMENT NOT NULL,
                street_number INT NOT NULL,
                street VARCHAR(250) NOT NULL,
                postal_code VARCHAR(10) NOT NULL,
                city VARCHAR(100) NOT NULL,
                phone VARCHAR(20) NOT NULL,
                PRIMARY KEY (addressID)
);


CREATE TABLE pizzeria (
                pizzeriaID INT AUTO_INCREMENT NOT NULL,
                name VARCHAR(100) NOT NULL,
                addressID INT NOT NULL,
                PRIMARY KEY (pizzeriaID)
);


CREATE TABLE stock (
                pizzeriaID INT NOT NULL,
                ingredientID INT NOT NULL,
                quantity DOUBLE PRECISION NOT NULL,
                PRIMARY KEY (pizzeriaID, ingredientID)
);


CREATE TABLE customer (
                customerID INT AUTO_INCREMENT NOT NULL,
                last_name VARCHAR(100) NOT NULL,
                first_name VARCHAR(100) NOT NULL,
                email VARCHAR(150) NOT NULL,
                password VARCHAR(50) NOT NULL,
                addressID INT NOT NULL,
                PRIMARY KEY (customerID)
);


CREATE TABLE customer_order (
                orderID INT AUTO_INCREMENT NOT NULL,
                customerID INT NOT NULL,
                pizzeriaID INT NOT NULL,
                total_price DECIMAL(5,2) NOT NULL,
                to_deliver BOOLEAN NOT NULL,
                isPaid BOOLEAN NOT NULL,
                status VARCHAR(100) NOT NULL,
                payment_type VARCHAR(50) NOT NULL,
                PRIMARY KEY (orderID)
);


CREATE TABLE basket (
                orderID INT NOT NULL,
                pizzaID INT NOT NULL,
                quantity INT NOT NULL,
                PRIMARY KEY (orderID, pizzaID)
);


CREATE TABLE staff (
                staffID INT AUTO_INCREMENT NOT NULL,
                addressID INT NOT NULL,
                pizzeriaID INT NOT NULL,
                last_name VARCHAR(100) NOT NULL,
                first_name VARCHAR(100) NOT NULL,
                email VARCHAR(150) NOT NULL,
                password VARCHAR(50) NOT NULL,
                job_type VARCHAR(50) NOT NULL,
                PRIMARY KEY (staffID)
);


ALTER TABLE recipe ADD CONSTRAINT ingredient_recipe_fk
FOREIGN KEY (ingredientID)
REFERENCES ingredient (ingredientID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE stock ADD CONSTRAINT ingredient_stock_fk
FOREIGN KEY (ingredientID)
REFERENCES ingredient (ingredientID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE basket ADD CONSTRAINT pizza_basket_fk
FOREIGN KEY (pizzaID)
REFERENCES pizza (pizzaID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE recipe ADD CONSTRAINT pizza_recipe_fk
FOREIGN KEY (pizzaID)
REFERENCES pizza (pizzaID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE staff ADD CONSTRAINT address_staff_fk
FOREIGN KEY (addressID)
REFERENCES address (addressID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE customer ADD CONSTRAINT address_customer_fk
FOREIGN KEY (addressID)
REFERENCES address (addressID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE pizzeria ADD CONSTRAINT address_pizzeria_fk
FOREIGN KEY (addressID)
REFERENCES address (addressID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE staff ADD CONSTRAINT pizzeria_staff_fk
FOREIGN KEY (pizzeriaID)
REFERENCES pizzeria (pizzeriaID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE customer_order ADD CONSTRAINT pizzeria_customer_order_fk
FOREIGN KEY (pizzeriaID)
REFERENCES pizzeria (pizzeriaID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE stock ADD CONSTRAINT pizzeria_stock_fk
FOREIGN KEY (pizzeriaID)
REFERENCES pizzeria (pizzeriaID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE customer_order ADD CONSTRAINT customer_customer_order_fk
FOREIGN KEY (customerID)
REFERENCES customer (customerID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE basket ADD CONSTRAINT customer_order_basket_fk
FOREIGN KEY (orderID)
REFERENCES customer_order (orderID)
ON DELETE NO ACTION
ON UPDATE NO ACTION;