-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
DROP DATABASE employee_employee; 

CREATE DATABASE employee_employee;

USE employee_employee; 

CREATE TABLE employee ( ide int primary key, 
                        first_name varchar(15), 
                        last_name varchar(15),
                      iddm varchar(20)); 

CREATE TABLE employee_department ( idd int, 
                       name varchar(25), 
                       description varchar(40));
                                           
ALTER TABLE employee_department ADD FOREIGN KEY (idd) REFERENCES employee (iddm);   

CREATE TABLE employee_hobby ( idh int, 
                       name varchar(25), 
                       description varchar(40));                       
                       
INSERT INTO employee VALUES ( 1, 'Willy', 'Gonzalez' );
INSERT INTO employee VALUES ( 2, 'Rodri', 'Perez' );
INSERT INTO employee VALUES ( 3, 'Pepe', 'Gutierrez' );
INSERT INTO employee VALUES ( 4, 'Jose', 'Mejia' );
INSERT INTO employee_department VALUES ( 1, 'Robotica', 'Manejo de robotica' );
INSERT INTO employee_department VALUES ( 2, 'Eletrico', 'Manejo de electricidad' );
INSERT INTO employee_department VALUES ( 3, 'Comida', 'Manejo de comida' );
INSERT INTO employee_department VALUES ( 4, 'Linea', 'Manejo de lineas' );
INSERT INTO employee_department VALUES ( 5, 'Machetero', 'Manejo de mercancia' );
INSERT INTO employee_department VALUES ( 6, 'Insumos', 'Manejo de inventarios' );
INSERT INTO employee_hobby VALUES ( 1, 'Pesas', 'Cargar' );
INSERT INTO employee_hobby VALUES ( 2, 'Correr', 'En pista' );
INSERT INTO employee_hobby VALUES ( 3, 'Nadar', 'En alberca' );



-- ...
