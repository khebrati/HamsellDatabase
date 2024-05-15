create table Post(
	PostID integer not null,
    BusinessID integer references Business,
    CityID integer references City,
    AccountID integer references Account,
    PCID integer references PostCategory,
    primary key(PostID,CityId,AccountID,PCID)
);