create table Hamsell.PhonePost(
PostId integer primary key references Post,
PhoneModel varchar(100),
ProductionDate datetime,
OsModelId integer references OsModel,
PhoneBrandId integer references PhoneBrand
);