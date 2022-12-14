insert into guest (name, created_at, phone_number)
values ('guest_one', '2020-01-01', '403-111-1111'),
('guest_two', '2020-01-02', '403-111-1112'),
('guest_three', '2020-01-03', '403-111-1113'),
('guest_four', '2020-01-04', '403-111-1114'),
('guest_five', '2020-01-05', '403-111-1115'),
('guest_six', '2020-01-06', '403-111-1116'),
('guest_seven', '2020-01-07', '403-111-1117'),
('guest_eight', '2020-01-08', '403-111-1118'),
('guest_nine', '2020-01-09', '403-111-1119'),
('guest_ten', '2020-01-10', '403-111-1110');

insert into room (room_number, square_feet)
values (1, 450),
(2, 450),(3, 450),(4, 450),(5, 450),
(6, 600),(7, 600),(8, 600),(9, 600),(10, 600),
(11, 750),(12, 750),(13, 750),(14, 750),(15, 750),
(16, 900),(17, 900),(18, 900),(19, 900),(20, 900);

insert into current_guest_room (guest_id, room_id, check_in_date, check_out_date)
values (1, 1, '2021-01-01', '2021-02-01'),
(2, 2, '2021-02-01', '2021-03-01'),
(3, 3, '2021-03-01', '2021-04-01'),
(4, 4, '2021-04-01', '2021-05-01'),
(5, 5, '2021-05-01', '2021-06-01');


insert into historical_guest_room (guest_id, room_id, check_in_date, check_out_date)
values 
(30, 30, '2022-01-01', '2022-02-01'),(1, 1, '2022-01-01', '2022-01-02'),(2, 2, '2022-01-01', '2022-01-03'),(3, 3, '2022-01-01', '2022-01-04'),(4, 4, '2022-01-01', '2022-01-05'),
(5, 5, '2022-01-01', '2022-01-06'),(6, 6, '2022-01-01', '2022-01-07'),(7, 7, '2022-01-01', '2022-01-08'),(8, 8, '2022-01-01', '2022-01-09'),(9, 9, '2022-01-01', '2022-01-10'),
(10, 10,'2022-01-01', '2022-01-11'),(11, 11, '2022-01-01', '2022-01-12'),(12, 12, '2022-01-01', '2022-01-13'),(13, 13, '2022-01-01', '2022-01-14'),(14, 14, '2022-01-01', '2022-01-15'),
(15, 15, '2022-01-01', '2022-01-16'),(16, 16, '2022-01-01', '2022-01-17'),(17, 17, '2022-01-01', '2022-01-18'),(18, 18, '2022-01-01', '2022-01-19'),(19, 19, '2022-01-01', '2022-01-20'),
(20, 20, '2022-01-01', '2022-01-21'),(21, 21, '2022-01-01', '2022-01-22'),(22, 22, '2022-01-01', '2022-01-23'),(23, 23, '2022-01-01', '2022-01-24'),(24, 24, '2022-01-01', '2022-01-25'),
(25, 25, '2022-01-01', '2022-01-26'),(26, 26, '2022-01-01', '2022-01-27'),(27, 27, '2022-01-01', '2022-01-28'),(28, 28, '2022-01-01', '2022-01-29'),(29, 29, '2022-01-01', '2022-01-30');


select g.name, g.phone_number, r.room_number 
from current_guest_room cgr inner join guest g on cgr.guest_id = g.id 
inner join room r on cgr.room_id = g.id;

select g.name, g.phone_number, r.room_number 
from historical_guest_room hgr inner join guest g ON hgr.guest_id = g.id 
inner join room r on hgr.room_id = r.id 
where hgr.check_out_date < '2022-01-01';

from current_guest_room cgr inner join room r on cgr.room_id and hgr.room = r.id
