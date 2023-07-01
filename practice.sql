create table weniv_product
(
    id   serial primary key,
    name varchar(30) null,
    cost int         null
);

INSERT INTO weniv_product (id, name, cost) VALUES (1, 'desk', 200000);
INSERT INTO weniv_product (id, name, cost) VALUES (2, 'monitor', 500000);
INSERT INTO weniv_product (id, name, cost) VALUES
(3, 'calender', 30000),
(4, 'pen', 1000),
(5, 'chair', 50000),
(6, 'bookshelf', 70000),
(7, 'wristband', 300),
(8, 'laptop case', 30000),
(9, 'sticker', 2500),
(10, 'key ring', 3500);


INSERT INTO weniv_product (id, name, cost) VALUES 
(13, 'headphones', 80000),
(14, 'clock', 100000),
(15, 'backpack', 45000),
(16, 'water bottle', 5000),
(17, 'note cards', 3000),
(18, 'pencil case', 12000),
(19, 'USB drive', 20000),
(20, 'ruler', 5000);

update weniv_product 
set cost = cost + 100

select 
    u.country,
    count(o.order_id) as total_order_count
from orders o 
join users u on o.user_id = u.id
group by u.country
order by total_order_count desc

select 
	country ,
	count(o.order_id)
from users u 
join orders o on u.id = o.order_id 
group by country 
order by count(o.order_id) desc




select 
    id,
    user_id,
    city,
    state ,
    postal_code ,
    browser, 
    traffic_source,
    event_type
from events
where user_id in (
    select 
        user_id
    from events
    where event_type = 'purchase'
    group by user_id
    having count(id) >= 10
)
order by user_id




CREATE DATABASE sample_db;


