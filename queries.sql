insert into dealership (name, location, date_established)
values
('abe lexus', '111 santa ave', '2010-1-1'),
("john's lexus", '211 santa ave', '2012-1-1'),
("tom toyota", '411 santa ave', '2014-1-1');

insert into for_sale_cars (dealership_id , make, model, year)
values
('4', 'toyota', 'camry', '2015'),
('4', 'toyota', 'echo', '2016'),
('4', 'toyota', 'gr86', '2019'),
('5', 'toyota', 'corolla', '2015'),
('5', 'toyota', 'corolla', '2016'),
('5', 'toyota', 'corolla', '2017'),
('6', 'toyota', 'corolla', '2018'),
('6', 'toyota', 'camry', '2016'),
('6', 'toyota', 'echo', '2018'),
('6', 'toyota', 'echo', '2019');

select fsc.make, fsc.model, fsc.`year` 
from for_sale_cars fsc inner join dealership d on fsc.dealership_id=d.id 
order by `year` desc;

select d.name, d.location
from dealership d
order by d.date_established asc 
limit 1;

select fsc.make, fsc.model, fsc.`year`, d.name, d.location
from for_sale_cars fsc inner join dealership d on fsc.dealership_id =d.id 
where fsc.`year` > '2020'
order by fsc.`year` asc;

select year, count(year)
from for_sale_cars fsc
where `year`=2019;

select fsc.make, count(fsc.make)
from for_sale_cars fsc
where fsc.dealership_id ='6';

select count(fsc.id)
from for_sale_cars fsc inner join dealership d on fsc.id = d.id 
group by dealership_id;

select count(fsc.id)
from for_sale_cars fsc inner join dealership d on fsc.dealership_id =d.id
group by d.id
having (count(fsc.id) > 3);

select count(fsc.id)
from for_sale_cars fsc inner join dealership d on fsc .dealership_id =d.id
where `year` >'2017'
group by d.id
having count(fsc.id) > 2;