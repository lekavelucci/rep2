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
