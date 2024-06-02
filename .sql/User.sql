create table Hamsell.User(AccountID integer references Account,CityID int references City,primary key (AccountID));
alter table Hamsell.User add (UserStatusId integer references UserStatus);
desc Hamsell.User;