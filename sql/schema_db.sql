create table usr (
 id bigserial not null,
 email varchar(64) not null,
 first_name varchar(64) not null,
 last_name varchar(64) not null,
 middle_name varchar(64) not null
 );
 
 select first_name, middle_name, last_name from usr where role_name in (select
role_name from role_permissions where permission_id in (select id from
permission where name='view'));
select first_name, middle_name, last_name from usr where role_name in (select
role_name from role_permissions where permission_id in (select id from
permission where name='edit'));


select first_name, middle_name, last_name from usr where role_name in (select
role_name from role_permissions where permission_id in (select id from
permission where name='view' or name='edit'));

create table department (
id INTEGER,
name VARCHAR(30) not null,
primary key (id)
);
create table university_member(
id integer,
user_id integer,
department_id integer,
position_id integer,
primary key (id)
);


create table group_member (
id integer,
university_member_id integer,
group_id integer,
group_leader char(1),
primary key (id)
);
create table groups(
id integer,
name varchar (30),
course integer,
primary key (id)
);


create table position (
id integer,
name varchar (30),
primary key (id)
);


alter table university_member add constraint FK_DEPARTMENT_ID foreign key (department_id) references
department;
alter table university_member add constraint FK_POSITION_ID foreign key (position_id) references
position;
alter table university_member add constraint FK_USER_ID foreign key (user_id) references
usr;
alter table group_member add constraint FK_UNIVERSITY_MEMBER_ID foreign key (university_member_id) references
university_member;
alter table group_member add constraint FK_GROUP_ID foreign key (group_id) references
groups;


insert into department (id, name) values
('1', 'Бизнес-информатика') ,
('2','Управление персоналом') ,
('3', 'Архитектура') ,
('4', 'Журналистика') ,
('5','Политология');


insert into position (id, name) values
('1', 'Ректор') ,
('2','Студент') ,
('3', 'Преподаватель');


insert into groups (id, name, course) values
('1', 'Би-б-о 201','4') ,
('2','Уп-б-о 202','1') ,
('3', 'А-б-о 201','3') ,
('4', 'Ж-б-о 202','1') ,
('5','П-б-о 201','2');


update university_member set position_id=1 where id<2;
update university_member set position_id=2 where id>2;
update university_member set position_id=3 where id>9;


update group_member set group_id=1 where id>9;
update group_member set group_id=2 where id>15;
update group_member set group_id=3 where id>21;
update group_member set group_id=4 where id>27;
update group_member set group_id=5 where id>34;


