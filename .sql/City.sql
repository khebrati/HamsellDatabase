create table Hamsell.City(
CityID integer primary key,
ProvinceID integer not null references Province,
CityName varchar(100)
);
desc Hamsell.City;
select * from Hamsell.City;