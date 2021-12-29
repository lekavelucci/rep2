select id, email, last_name from usr where id.6;
select *, LENGTH(first_name) as length from usr where length(first_name)>7;

select id, birth_date from usr where birth_date > '2005-01-01';
select id, first_name, last_name, birth_date from usr order by birth_date desc;
select id, first_name, last_name, birth_date from usr where birth_date > '2003-01-01' and birth_date < '2008-01-01';