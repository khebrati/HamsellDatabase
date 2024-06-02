create table Hamsell.Post(
	PostID integer primary key,
    BusinessID integer references Business,
    UserId integer references User,
    CityID integer not null references City,
    PostCategoryId integer not null references PostCategory,
    title varchar(30),
    PostStatusId integer not null references PostStatus,
    Address varchar(400),
    Price integer,
    PostDescription varchar(500),
    CreationDate datetime not null
);
desc Hamsell.Post;