
--Drop Table emp_tbl; Drop Table deletes

CREATE TABLE IF NOT EXISTS emp_tbl(
	id INTEGER Primary Key Autoincrement,
	lname VARCHAR(100),
	fname VARCHAR(100),
	DOB DATE,
	Title VARCHAR(100)
)

Insert Into emp_tbl(lname,fname,DOB,title)
Values ('Duck','Daffy','12/15/1970', 'Comedian'),
	   ('Bunny', 'Bugs', '08/25/1971', 'Lothario'),
	   ('Fudd', 'Elmer', '05/15/1947', 'Hunter');

Select *
From emp_tbl;


Insert Into emp_tbl(lname,fname,DOB,title)
Values ('Leghorn','Foghorn','01/01/1950', 'Man of Leisure'),
		('Bird', 'Tweety', '02/14/1965', 'Singer');


Insert Into emp_tbl(lname,fname,DOB,title)
Values ('Martian','Marvin','06/9/1955', 'Astronaut');

Create Table If Not Exists movies_shows(
	movieshow_id Integer Primary Key Autoincrement,
	name VARCHAR(250),
	release_year Integer,
	emp_id Integer References emp_tbl(id)  -- creating foreign key
	);


Insert Into movies_shows(name, release_year, emp_id)
Values ('Space Jam', 1996, 2),
	   ('Looney Tunes: Back in Action', 2003, 2),
	   ('Looney Tunes: Back in Action', 2003, 1),
	   ('1001 Rabbit Tales', 1982, 2),
	   ('1001 Rabbit Tales', 1982, 1),
	   ('1001 Rabbit Tales', 1982, 3),
	   ('1001 Rabbit Tales', 1982, 4),
	   ('1001 Rabbit Tales', 1982, 5),
	   ('Marvin the Martian in the Third Dimension', 1996, 6);

select * from movies_shows

----Find the number of movies in the table
Select count(movies_shows.name) from movies_shows;
Select distinct count(*) from movies_shows;


Select count(distinct name) as total_movies
from movies_shows;

---Find the number of employees per movie
Select name, count(distinct emp_id) as totalemployees
From movies_shows
group by name;


