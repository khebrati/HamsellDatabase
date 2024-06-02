create table Hamsell.Business(
	BusinessID integer primary key,
	CityId integer not null references City,
    UserId integer not null references User,
    BusinessCategoryId integer not null references BusinessCategory
);
desc Hamsell.Business;