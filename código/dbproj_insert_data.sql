-- TRUNCATE admins, buyers, campaigns, computers, coupons, notifications, orders, product_quantities, products, questions, ratings, sellers, sellers_orders, smartphones, televisions, users;

INSERT INTO users VALUES (0, 'admin', crypt('dbproj', gen_salt('bf')), 'admin@admail.com');
INSERT INTO admins VALUES (0);

INSERT INTO users VALUES (1, 'Worten', crypt('wortensempre', gen_salt('bf')), 'worten@sempre.pt');
INSERT INTO sellers VALUES (1, 503630330, 'Avenida D.João 1 Nº 270');

INSERT INTO users VALUES (2, 'gui', crypt('tcsw', gen_salt('bf')), 'mbranco@student.dei.uc.pt');
INSERT INTO buyers VALUES (2, 123456789, 'Praceta da Rua');

INSERT INTO products (product_id, version, name, price, stock, description, sellers_users_user_id) VALUES (1, '2022-04-23 23:33:00', 'Portatil Gaming Lenovo Legion 5', 1199.0, 10, 'portatil espetacular', 1);
INSERT INTO computers VALUES (15.6, 'AMD Ryzen 5 5600H', 'NVIDIA GeForce RTX 3060', '512 GB SSD', 120, 1, '2022-04-23 23:33:00');

INSERT INTO products (product_id, version, name, price, stock, description, sellers_users_user_id) VALUES (2, '2022-04-24 19:40:00', 'SAMSUNG Galaxy A22 5G', 209.99, 23, 'smarphone espetacular', 1);
INSERT INTO smartphones VALUES (6.6, 'Android', '128 GB', 'Preto', 2, '2022-04-24 19:40:00');

INSERT INTO products (product_id, version, name, price, stock, description, sellers_users_user_id) VALUES (3, '2022-04-24 19:40:00', 'Smart TV Sony 4K', 849.99, 5, 'televisao espetacular', 1);
INSERT INTO televisions VALUES (55, 'LCD-LED', '4K Ultra HD', true, 'G', 3, '2022-04-24 19:40:00');

INSERT INTO products (product_id, version, name, price, stock, description, sellers_users_user_id) VALUES (3, '2022-04-27 14:46:57', 'Smart TV Sony 4K', 1000.99, 5, 'televisao agora é fixe', 1);
INSERT INTO televisions VALUES (55, 'LCD-LED', '4K Ultra HD', true, 'F', 3, '2022-04-27 14:46:57');


insert into orders values (1, '2022-10-11', 0, null, null, 2);
insert into product_quantities values (1, 1, 3, '2022-04-27 14:46:57');
update orders set price_total = 55 where id = 1;
insert into ratings values ('espetaculo antigo', 5, 1, 3, '2022-04-27 14:46:57', 2);


insert into orders values (2, '2022-11-10', 0, null, null, 2);
insert into product_quantities values (1, 2, 3, '2022-04-24 19:40:00');
update orders set price_total = 55 where id = 2;
insert into ratings values ('espetaculo', 5, 2, 3, '2022-04-24 19:40:00', 2);


insert into orders values (3, '2022-12-10', 0, null, null, 2);
insert into product_quantities values (1, 3, 3, '2022-04-24 19:40:00');
update orders set price_total = 55 where id = 3;
insert into ratings values ('espetaculo novo', 1, 3, 3, '2022-04-24 19:40:00', 2);

insert into campaigns values(1, 'campanha', '2022-05-10', '2022-5-17', 10, 75, 0);
insert into coupons values(1, false, 0, '2022-06-09', 1, 2, null);

insert into coupons values(2, false, 0, '2022-06-09', 1, 2, null);
insert into orders (id, order_date, buyers_users_user_id, coupons_coupon_id, coupons_campaigns_campaign_id)
values (69, '2022-05-12', 2, 2, 1)