create table Hamsell.User(
AccountID integer references Account,
CityID int references City,
primary key (AccountID),
UserStatusId integer references UserStatus
);
desc Hamsell.User;