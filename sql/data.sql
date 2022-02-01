insert into usr (first_name, middle_name, last_name, email) values
('Иван', 'Иванович', 'Иванов', 'ivanov@my.example.com'),
('Петр', 'Петрович', 'Петров', 'petrov@my.example.com'),
('Иван', 'Петрович', 'Сидоров', 'sidorov@my.example.com'),
('Анастасия', 'Эдуардовна', 'Кравчук', 'kravchuk@mail.ru'),
('Артем', 'Дмитриевич', 'Мандрик','mandrik@mail.ru'),
('Сергей', 'Сергеевич', 'Шульгин','shulgin@mail.ru '),
('Максим', 'Валериевич','Баркин','barkin@mail.ru'),
('Анастасия', 'Викторовна', 'Мухортова', 'muhortova@mail.ru'),
('Алена', 'Андреевна', 'Бакшеева', 'baksheeva@mail.ru'),
('Никита', 'Дмитриевич', 'Власов', 'vlasov@mail.ru'),
('Наталья', 'Николаевна', 'Абрамова', 'abramova@mail.ru'),
('Мария', 'Алексанровна', 'Минарди', 'meinaride@mail.ru'),
('Илья', 'Владимирович', 'Раев', 'raev@mail.ru'),
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

Alter table usr add column role_name varchar(20);
Update usr set role_name=' administrator' where id=1;
Update usr set role_name=' administrator' where id=2;
Update usr set role_name='editor' where id=3;
Update usr set role_name='editor' where id=4;
Update usr set role_name='editor' where id=5;
Update usr set role_name='editor' where id=6;
Update usr set role_name='editor' where id=7;
Update usr set role_name='editor' where id=8;
Update usr set role_name='editor' where id=9;
Update usr set role_name='user' where id=10;
Update usr set role_name='user' where id=11;
Update usr set role_name='user' where id=12;
Update usr set role_name='user' where id=13;
Update usr set role_name='user' where id=14;
Update usr set role_name='user' where id=15;
Update usr set role_name='user' where id=16;
Update usr set role_name='user' where id=17;
Update usr set role_name='user' where id=18;
Update usr set role_name='user' where id=19;
Update usr set role_name='user' where id=20;
Update usr set role_name='user' where id=21;
Update usr set role_name='user' where id=22;
Update usr set role_name='user' where id=23;



Alter table usr add column login varchar(64);
Alter table usr add column password varchar(64);



insert into usr (first_name, middle_name, last_name, e_mail, birth_date, role_name) values
('Анастасия','Эдуардовна','Краснова','anas@mail.ru','2000-01-20','user'),
('Григорий','Анатольевич','Маслов','maslo@mail.ru','2001-09-20','user'),
('Василий','Сергеевич','Василенко','vasil@mail.ru','2003-02-21','user'),
('Дмитрий','Юрьевич','Красненко','krasne@mail.ru','2010-01-30','user'),
('Юрий','Артемович','Потапов','potap@mail.ru','2005-01-12','user'),
('Марьяна','Станиславович','Блин','blin@mail.ru','2006-12-20','user'),
('Татьяна','Дмитриевич','Стоцкая','stockata@mail.ru','2007-01-20','user'),
('Олег','Валерьевич','Стол','table@mail.ru','2009-01-20','user'),
('Надежда','Константинович','Кант','kant@mail.ru','2010-11-20','user'),
('Станислав','Викторович','Раут','raut@mail.ru','2001-01-20','user');

alter table usr
add constraint key
primary key(id);




create table role (
name varchar(20) not null,
primary key (name)
);
Insert into role (name) values
('administrator'),
('editor'),
('user');
Alter table role add column role_name varchar(20);

create table role_permissions (
role_name varchar(20) not null,
permission_id smallserial not null
);
alter table role_permissions add constraint FK_USR_ROLE foreign key (permission_id) references permission;
insert into role_permissions (role_name, permission_id) values
('administrator','1'),
('administrator','2'),
('administrator','3'),
('administrator','4'),
('editor','2'),
('editor','3'),
('user','3');

insert into usr (first_name, middle_name, last_name, e_mail, birth_date, role_name) values
('Валерия','Эдуардовна','Красновал','krasno@mail.ru','2003-01-20','user'),
('Григорий','Дмитриевич','Масленко','maslenko@mail.ru','2002-09-20','user'),
('Василий','Сергеевич','Кондратенко','kondratenko@mail.ru','2004-02-21','user'),
('Леонид','Юрьевич','Камбербетч','kamber@mail.ru','2000-01-30','user'),
('Андрей','Артемович','Громов','gromov@mail.ru','2009-01-12','user'),
('Леонтий','Станиславович','Черный','black@mail.ru','2007-12-20','user'),
('Татьяна','Дмитриевна','Белая','white@mail.ru','2008-01-20','user'),
('Иван','Валерьевич','Фиолетовый','purple@mail.ru','2012-01-20','user'),
('Юлия','Константинович','Лойд','loyd@mail.ru','2015-11-20','user'),
('Владислав','Викторович','Комут','komut@mail.ru','2016-01-20','user');

