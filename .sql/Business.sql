create table Hamsell.Business(
	BusinessID integer primary key,
	CityId integer references City,
    AccountID integer references Account,
    BCID integer references BusinessCategory
);
desc Hamsell.Business;