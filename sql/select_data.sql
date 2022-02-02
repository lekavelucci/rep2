select id, email, last_name from usr where id.6;
select *, LENGTH(first_name) as length from usr where length(first_name)>7;

select id, birth_date from usr where birth_date > '2005-01-01';
select id, first_name, last_name, birth_date from usr order by birth_date desc;
select id, first_name, last_name, birth_date from usr where birth_date > '2003-01-01' and birth_date < '2008-01-01';


select m.first_name, m.middle_name, m.last_name, m.e_mail, p.name from university_member um join usr m on um.user_id=m.id join position p on um.position_id=p.id;

select m.first_name, m.middle_name, m.last_name, m.e_mail, g.name from group_member gm join university_member um on gm.university_member_id=um.user_id join group g on gm.group_id=g.id join usr m on um.user_id=m.id;



select m.first_name, m.middle_name, m.last_name, m.e_mail, d.name 
from university_member um join usr m on um.user_id=m.id join department d on um.departament_id=d. id;


create view pos_usr AS
select m.first_name, m.middle_name, m.last_name, m.e_mail, p.name
from university_member um left join usr m on um.user_id=m.id join position p on um.position_id=p.id;



create view grop AS
select m.first_name, m.middle_name, m.last_name, m.e_mail, g.name
from group_member gm join university_member um on gm.university_member_id=um.user_id
join groups g on gm.group_id=g.id join usr m on um.user_id=m.id;


create view dep AS
select m.first_name, m.middle_name, m.last_name, m.e_mail, d.name
from university_member um join usr m on um.user_id=m.id join department d on um.departament_id=d.id;
