create table Hamsell.Business(
	BusinessID integer primary key,
	CityId integer references City,
    UserId integer references User,
    BCID integer references BusinessCategory
);
desc Hamsell.Business;