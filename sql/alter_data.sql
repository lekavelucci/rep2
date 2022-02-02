insert into usr (first_name, middle_name, last_name, email) values
('Мария', 'Александровна', 'Бакуменко', 'bakumenko@mail.ru'),
('Андрей', 'Максимович', 'Попадюк','popaduk@mail.ru'),
('Артем', 'Артемович', 'Иваненко','ivanenko@mail.ru '),
('Анна', 'Васильевна','Данилова','danilova@mail.ru'),
('Григорий', 'Алексеевич', 'Снитко', 'snitko@mail.ru'),
('Валерия', 'Андреевна', 'Заграй', 'zagray@mail.ru'),
('Александр', 'Дмитриевич', 'Ладыгин', 'ladygin@mail.ru'),
('Максим', 'Николаевич', 'Мошкин', 'moshkin@mail.ru'),
('Алина', 'Андреевна', 'Карлина', 'karlina@mail.ru'),
('Егор', 'Владимирович', 'Шульга', 'shulga@mail.ru');




alter table usr rename column email to e_mail;
alter table usr add constraint e_mail_unique unique(e_mail);
alter table usr add column birth_date timestamp;



update usr set birth_date = '2003-08-12' where id = 1;
update usr set birth_date = '2005-04-23' where id = 2;
update usr set birth_date = '2010-02-15' where id = 3;
update usr set birth_date = '2002-10-07' where id = 4;
update usr set birth_date = '2003-03-27' where id = 5;
update usr set birth_date = '2006-03-16' where id = 6;
update usr set birth_date = '2007-08-01' where id = 7;
update usr set birth_date = '2009-07-13' where id = 8;
update usr set birth_date = '2008-09-19' where id = 9;
update usr set birth_date = '2000-12-06' where id = 10;
update usr set birth_date = '1999-11-04' where id = 11;
update usr set birth_date = '2005-01-12' where id = 12;
update usr set birth_date = '2004-03-24' where id = 13;
update usr set birth_date = '2004-02-22' where id = 14;
update usr set birth_date = '2006-05-31' where id = 15;
update usr set birth_date = '2007-09-07' where id = 16;
update usr set birth_date = '2003-08-18' where id = 17;
update usr set birth_date = '2001-09-10' where id = 18;
update usr set birth_date = '2000-04-13' where id = 19;
update usr set birth_date = '2001-03-11' where id = 20;
update usr set birth_date = '2002-01-12' where id = 21;
update usr set birth_date = '2004-11-25' where id = 22;
update usr set birth_date = '2005-12-22' where id = 23;



create table address (

id bigserial not null,
user_id integer not null,
zip_code varchar(10),
city varchar(30),
street varchar (50),
building varchar(19),
flat varchar(16),
primary key (id));



insert into address (user_id, zip_code, city, street, building, flat) values
('1', '29600', 'Симферополь', '3', '10', '12'),
('2', '29600', 'Симферополь', '4', '7', '5'),
('3', '29600', 'Симферополь', '3', '7', '6'),
('4', '29600', 'Симферополь', '5', '1', '100'),
('5', '29600', 'Симферополь', '2', '65', '999'),
('6', '29600', 'Симферополь', '6', '28', '15'),
('7', '29600', 'Симферополь', '7', '1', '11'),
('8', '29600', 'Симферополь', '1', '76', '15'),
('9', '29600', 'Симферополь', '15', '10', '101'),
('10', '29600', 'Симферополь', '21', '15', '19'),
('11', '29600', 'Симферополь', '76', '113', '91'),
('12', '29600', 'Симферополь', '3', '45', '88'),
('13', '29600', 'Симферополь', '31', '10', '67'),
('14', '29600', 'Симферополь', '13', '2', '7'),
('15', '29600', 'Симферополь', '41', '12', '3'),
('16', '29600', 'Симферополь', '11', '29', '8'),
('17', '29600', 'Симферополь', '1', '15', '121'),
('18', '29600', 'Симферополь', '12', '5', '24'),
('19', '29600', 'Симферополь', '34', '5', '6'),
('20', '29600', 'Симферополь', '3', '10', '142'),
('21', '29600', 'Симферополь', '44', '7', '5'),
('22', '29600', 'Симферополь', '34', '7', '64'),
('23', '29600', 'Симферополь', '66', '6', '190'),
('24', '29600', 'Симферополь', '2', '75', '59'),
('25', '29600', 'Симферополь', '61', '68', '65'),
('26', '29600', 'Симферополь', '9', '19', '191'),
('27', '29600', 'Симферополь', '2', '6', '5'),
('28', '29600', 'Симферополь', '5', '12', '14'),
('29', '29600', 'Симферополь', '81', '35', '29'),
('30', '29600', 'Симферополь', '75', '83', '1'),
('31', '29600', 'Симферополь', '31', '5', '8'),
('32', '29600', 'Симферополь', '51', '20', '87'),
('33', '29600', 'Симферополь', '73', '42', '97'),
('34', '29600', 'Симферополь', '51', '102', '13'),
('35', '29600', 'Симферополь', '113', '9', '18'),
('36', '29600', 'Симферополь', '13', '5', '12'),
('37', '29600', 'Симферополь', '102', '25', '4'),
('38', '29600', 'Симферополь', '33', '2', '63');
