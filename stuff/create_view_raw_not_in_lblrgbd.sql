drop view if exists raw_not_in_lblrgbd;
create view raw_not_in_lblrgbd as 
select   time_stamp, home_session_id, home_subsession_id, home_id, room_id, sensor_id from raw where sensor_id <> 0
except
select   time_stamp, home_session_id, home_subsession_id, home_id, room_id, sensor_id from lblrgbd;

