-- Role
INSERT INTO table_role(name) VALUES ('ROLE_OPERATOR');
INSERT INTO table_role(name) VALUES ('ROLE_ADMIN');

-- User
INSERT INTO table_user(first_name, last_name, email, password) VALUES("Elaine", "Onuki","elaine@hotmail.com", "123456789");
INSERT INTO table_user(first_name, last_name, email, password) VALUES("Jailson", "Junior", "jailson@hotmail.com", "123456789");
INSERT INTO table_user(first_name, last_name, email, password) VALUES("Vinicius", "Hayden", "vinicius@hotmail.com", "123456789");
INSERT INTO table_user(first_name, last_name, email, password) VALUES("Willian", "Silva", "willian@hotmail.com", "123456789");
INSERT INTO table_user(first_name, last_name, email, password) VALUES("Test", "User", "TestUser@hotmail.com", "123456789");

-- Users
INSERT INTO table_user_role(user_id, role_id) VALUES(1,1);
INSERT INTO table_user_role(user_id, role_id) VALUES(2,2);
INSERT INTO table_user_role(user_id, role_id) VALUES(3,1);
INSERT INTO table_user_role(user_id, role_id) VALUES(4,2);

-- User test
INSERT INTO table_user_role(user_id, role_id) VALUES(5,2);

-- Reservation
INSERT INTO reservation(start_time, start_date, final_date, product_feature_id, table_user_id) VALUES ("13:00", "22.11.2022", "28.11.2022", 1, 2);
INSERT INTO reservation(start_time, start_date, final_date, product_feature_id, table_user_id) VALUES ("22:00", "22.10.2022", "28.12.2022", 8, 4);
INSERT INTO reservation(start_time, start_date, final_date, product_feature_id, table_user_id) VALUES ("08:00", "17.12.2022", "01.01.2023", 4, 1);
INSERT INTO reservation(start_time, start_date, final_date, product_feature_id, table_user_id) VALUES ("11:00", "20.12.2022", "20.01.2022", 3, 3);
INSERT INTO reservation(start_time, start_date, final_date, product_feature_id, table_user_id) VALUES ("20:00", "14.12.2022", "24.12.2022", 9, 5);

-- Category table
INSERT INTO categories(name, rating, description, url) VALUES ('Primeira Categoria', 1, 'Simples', 'https://images.unsplash.com/photo-1490985830292-06e0fe60d725?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1132&q=80');
INSERT INTO categories(name, rating, description, url) VALUES ('Segunda Categoria', 2, 'Off-road', 'https://images.unsplash.com/photo-1467489904517-075c242c2b4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1018&q=80');
INSERT INTO categories(name, rating, description, url) VALUES ('Terceira Categoria', 3, 'Luxo', 'https://images.unsplash.com/photo-1488667732045-ad6830a850cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO categories(name, rating, description, url) VALUES ('Quarta Categoria', 4, 'Economica', 'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80');
INSERT INTO categories(name, rating, description, url) VALUES ('Quinta Categoria', 5, 'SUV', 'https://images.unsplash.com/photo-1615063029891-497bebd4f03c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1100&q=80');

-- Features table
INSERT INTO features(name, icon) VALUES ('Ar-Condicionado', 'snowflake');
INSERT INTO features(name, icon) VALUES ('Direção Hidráulica', 'gear');
INSERT INTO features(name, icon) VALUES ('Vidro Elétrico', 'car');
INSERT INTO features(name, icon) VALUES ('Trava Elétrica', 'lock');
INSERT INTO features(name, icon) VALUES ('AirBag', 'car-on');
INSERT INTO features(name, icon) VALUES ('Alarme', 'bell');
INSERT INTO features(name, icon) VALUES ('Som', 'music');
INSERT INTO features(name, icon) VALUES ('Sensor de Ré', 'exclamation');
INSERT INTO features(name, icon) VALUES ('Câmera de Ré', 'camera');
INSERT INTO features(name, icon) VALUES ('Blindado', 'shield-halved');

-- Cities table
INSERT INTO cities(name, country) VALUES ('Lauro de Freitas', 'Brasil');
INSERT INTO cities(name, country) VALUES ('São Paulo', 'Brasil');
INSERT INTO cities(name, country) VALUES ('Rio de Janeiro', 'Brasil');
INSERT INTO cities(name, country) VALUES ('Curitiba', 'Brasil');
INSERT INTO cities(name, country) VALUES ('Vitoria', 'Brasil');
INSERT INTO cities(name, country) VALUES ('Brasilia', 'Brasil');
INSERT INTO cities(name, country) VALUES ('Aracaju', 'Brasil');
INSERT INTO cities(name, country) VALUES ('Palmas', 'Brasil');
INSERT INTO cities(name, country) VALUES ('Maceió', 'Brasil');
INSERT INTO cities(name, country) VALUES ('Juiz de Fora', 'Brasil');
INSERT INTO cities(name, country) VALUES ('Buenos Aires', 'Argentina');
INSERT INTO cities(name, country) VALUES ('Montevideu', 'Uruguai');

-- Products Table
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 9,3 - 14,5 segundos/ Volume de carga: 300 - 475 l/ Tração: Tração dianteira/ Portas: 4, 5', 'Hyundai HB20', 1, 1);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 10,1 segundos/ Volume de carga: 303 l/ Tração: Tração dianteira/ Portas: 5', 'Chevrolet Onix', 1, 2);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 13,4 segundos/ Volume de carga: 285 l/ Tração: Tração dianteira/ Portas: 5', 'Volkswagen Gol', 1, 3);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 9,7 segundos/ Volume de carga: 500 l/ Tração: Tração dianteira/ Portas: 4', 'Chevrolet Onix Plus', 1, 5);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 14 - 14,9 segundos/ Volume de carga: Básica: 200 l/ Tração: Tração dianteira/ Portas: 5', 'Fiat Mobi', 1, 6);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 10,8 - 13,4 segundos/ Volume de carga: 300 l/ Tração: Tração dianteira/ Portas: 5', 'Fiat Argo', 1, 7);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 13,2 - 14,7 segundos/ Volume de carga: Básica: 290 l/ Tração: Tração dianteira/ Portas: 5', 'Renault Kwid', 1, 8);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 11,5 segundos/ Volume de carga: 509 l/ Tração: Tração dianteira/ Portas: 4', 'Fiat Cronos', 1, 10);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 12 segundos/ Volume de carga: 311 l/ Tração: Tração dianteira/ Portas: 5', 'Peugeot 208', 1, 11);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 14,1 segundos/ Volume de carga: 113 l/ Tração: Tração nas quatro rodas/ Portas: 3', 'Suzuki Jimny', 2, 4);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 10,1 segundos/ Volume de carga: 1122 l/ Tração: Tração nas quatro rodas/ Portas: 2', 'Chevrolet S10', 2, 5);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 11,6 segundos/ Volume de carga: 1420 l/ Tração: Tração nas quatro rodas/ Portas: 4', 'Ford Ranger Storm', 2, 6);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 7,4 segundos/ Volume de carga: 1280 l/ Tração: Tração nas quatro rodas/ Portas: 4', 'VW Amarok V6 Extreme', 2, 7);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 8,1 segundos/ Volume de carga: Básica: 365 - 548 l/ Tração: Tração nas quatro rodas/ Portas: 3, 5', 'Jeep Wrangler', 2, 8);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 7,4 - 8,8 segundos/ Volume de carga: 380 - 425 l/ Tração: Tração dianteira/ Portas: 4, 5', 'Audi A3', 3, 12);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 7,1 segundos/ Volume de carga: 480 l/ Tração: Tração traseira/ Portas: 4, 5', 'BMW 320IA', 3, 10);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 6,3 - 7,3 segundos/ Volume de carga: 455 l/ Tração: Tração traseira/ Portas: 4', 'Mercedes-Benz C-180', 3, 2);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 6,3 - 7,3 segundos/ Volume de carga: 455 l/ Tração: Tração traseira/ Portas: 4', 'Mercedes-Benz C-180', 3, 2);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 6,3 - 7,3 segundos/ Volume de carga: 455 l/ Tração: Tração traseira/ Portas: 4', 'Mercedes-Benz C-180', 3, 2);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 6,3 - 7,3 segundos/ Volume de carga: 455 l/ Tração: Tração traseira/ Portas: 4', 'Land Rover Range Evoque', 3, 3);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 7,7 segundos/ Volume de carga: 505 l/ Tração: Tração dianteira/ Portas: 4, 5', 'BMW X1', 3, 4);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 10,5 segundos/ Volume de carga: 300 l/ Tração: Tração dianteira/ Portas: 4, 5', 'Volkswagen Polo 170 TSI', 4, 1);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 10,5 segundos/ Volume de carga: 300 l/ Tração: Tração dianteira/ Portas: 4, 5', 'Volkswagen Virtus', 4, 2);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 12 segundos/ Volume de carga: 311 l/ Tração: Tração dianteira/ Portas: 5', 'Peugeot 208', 4, 3);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 13,2 - 14,7 segundos/ Volume de carga: Básica: 290 l/ Tração: Tração dianteira/ Portas: 5', 'Renault Kwid', 4, 4);
INSERT INTO products (description, name, category_id, city_id) VALUES ('Aceleração de 0 a 100 km/h: 10,1 segundos/ Volume de carga: 303 l/ Tração: Tração dianteira/ Portas: 5', 'Chevrolet Onix', 4, 5);

-- Product Features
INSERT INTO product_feature (product_id, feature_id) VALUES (1, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (1, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (1, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (1, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (1, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (1, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (2, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (2, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (2, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (2, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (2, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (2, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (3, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (3, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (3, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (3, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (3, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (3, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (4, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (4, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (4, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (5, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (5, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (5, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (5, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (5, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (5, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (6, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (6, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (6, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (6, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (7, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (7, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (7, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (7, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (7, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (7, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (8, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (8, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (8, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (9, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (9, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (9, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (10, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (10, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (10, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (10, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (10, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (10, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (11, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (11, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (11, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (11, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (11, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (11, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (12, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (12, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (12, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (12, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (12, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (12, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (13, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (13, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (13, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (13, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (13, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (13, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (14, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (14, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (14, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (14, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (14, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (14, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (14, 8);
INSERT INTO product_feature (product_id, feature_id) VALUES (14, 9);
INSERT INTO product_feature (product_id, feature_id) VALUES (15, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (15, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (15, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (15, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (15, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (15, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (15, 8);
INSERT INTO product_feature (product_id, feature_id) VALUES (15, 9);
INSERT INTO product_feature (product_id, feature_id) VALUES (15, 10);
INSERT INTO product_feature (product_id, feature_id) VALUES (16, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (16, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (16, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (16, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (16, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (16, 6);
INSERT INTO product_feature (product_id, feature_id) VALUES (16, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (16, 8);
INSERT INTO product_feature (product_id, feature_id) VALUES (16, 9);
INSERT INTO product_feature (product_id, feature_id) VALUES (16, 10);
INSERT INTO product_feature (product_id, feature_id) VALUES (17, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (17, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (17, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (17, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (17, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (17, 6);
INSERT INTO product_feature (product_id, feature_id) VALUES (17, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (17, 8);
INSERT INTO product_feature (product_id, feature_id) VALUES (17, 9);
INSERT INTO product_feature (product_id, feature_id) VALUES (17, 10);
INSERT INTO product_feature (product_id, feature_id) VALUES (18, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (18, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (18, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (18, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (18, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (18, 6);
INSERT INTO product_feature (product_id, feature_id) VALUES (18, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (18, 8);
INSERT INTO product_feature (product_id, feature_id) VALUES (18, 9);
INSERT INTO product_feature (product_id, feature_id) VALUES (18, 10);
INSERT INTO product_feature (product_id, feature_id) VALUES (19, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (19, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (19, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (19, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (19, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (19, 6);
INSERT INTO product_feature (product_id, feature_id) VALUES (19, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (19, 8);
INSERT INTO product_feature (product_id, feature_id) VALUES (19, 9);
INSERT INTO product_feature (product_id, feature_id) VALUES (19, 10);
INSERT INTO product_feature (product_id, feature_id) VALUES (20, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (20, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (20, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (20, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (20, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (20, 6);
INSERT INTO product_feature (product_id, feature_id) VALUES (20, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (20, 8);
INSERT INTO product_feature (product_id, feature_id) VALUES (20, 9);
INSERT INTO product_feature (product_id, feature_id) VALUES (20, 10);
INSERT INTO product_feature (product_id, feature_id) VALUES (21, 1);
INSERT INTO product_feature (product_id, feature_id) VALUES (21, 2);
INSERT INTO product_feature (product_id, feature_id) VALUES (21, 3);
INSERT INTO product_feature (product_id, feature_id) VALUES (21, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (21, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (21, 6);
INSERT INTO product_feature (product_id, feature_id) VALUES (21, 7);
INSERT INTO product_feature (product_id, feature_id) VALUES (21, 8);
INSERT INTO product_feature (product_id, feature_id) VALUES (21, 9);
INSERT INTO product_feature (product_id, feature_id) VALUES (21, 10);
INSERT INTO product_feature (product_id, feature_id) VALUES (22, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (22, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (23, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (23, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (24, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (24, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (25, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (25, 5);
INSERT INTO product_feature (product_id, feature_id) VALUES (26, 4);
INSERT INTO product_feature (product_id, feature_id) VALUES (26, 5);