create table Hamsell.Post(
	PostID integer primary key,
    BusinessID integer references Business,
    CityID integer references City,
    AccountID integer references Account,
    PCID integer references PostCategory
);
alter table Hamsell.Post add (
	title char(30),
    viewCount integer,
    PSID integer references PostStatus,
    Address char(100),
    Price integer,
    Description text(500),
    CreationDate date
);
desc Hamsell.Post;