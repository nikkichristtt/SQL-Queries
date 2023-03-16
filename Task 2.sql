select characters.fname, characters.lname, library.book_name from characters join library on characters.char_id = library.char_id ;
select characters.fname, characters.lname, library.book_name from characters left join library on characters.char_id = library.char_id ;
select library.book_name, characters.patronus from characters right join library on characters.char_id = library.char_id ;
select characters.fname, characters.lname, characters.age, library.book_name from characters right join library on characters.char_id = library.char_id where age>15;
select characters.fname, library.book_name, library.start_date, library.end_date from characters join library on characters.char_id = library.char_id where age<15 and patronus='Unknown';
select count(end_date) from library where end_date > (select library.end_date from library join characters on characters.char_id = library.char_id where fname='Hermione');
select patronus from characters where age > (select age from characters where patronus='Unknown');
