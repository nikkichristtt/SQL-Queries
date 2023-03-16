select fname, lname, patronus from characters where patronus!='Unknown' or patronus!=null;
select lname from characters where lname LIKE "%e";
select sum(age) from characters;
select fname, lname, age from characters order by age DESC;
select fname, age from characters where age between 50 and 100;
select distinct age from characters;
select * from characters where faculty='Gryffindor' and age>30;
select distinct faculty from characters limit 3;
select fname from characters where fname like 'H____' or fname like 'L%';
select avg(age) from characters;
delete from characters where char_id=11;
select lname from characters where lname like '%a%';
select fname as 'Half-Blood Prince' from characters where fname='Severus';
select char_id, patronus from characters where patronus!='Unknown' and patronus is not null order by patronus;  
select fname, lname from characters where lname in ('Crabbe', 'Granger', 'Diggory');
select min(age) from characters;
select fname from characters union select book_name from library;
select count(char_id), faculty  from characters group by faculty having count(char_id)>1;
select fname, lname,
case when faculty='Gryffindor' then 'Godric'
when faculty='Slytherin' then 'Salazar'
when faculty='Ravenclaw' then 'Rowena'
when faculty='Hufflepuff' then 'Helga'
else 'Muggle'
end as Founders
from characters;
select lname from characters where lname regexp '^[^H|L|S]' order by lname;
select * from characters;
select * from library;