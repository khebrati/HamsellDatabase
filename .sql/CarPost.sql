create table Hamsell.CarPost(
PostId integer primary key references Post,
CarModel varchar(30),
MileAge integer,
ProductionDate datetime,
CarBrandId integer references CarBrand
);
