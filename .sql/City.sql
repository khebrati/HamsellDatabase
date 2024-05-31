create table Hamsell.City(CityID integer primary key,ProvinceID int references province);
alter table hamsell.City add name char(20);
desc Hamsell.City;