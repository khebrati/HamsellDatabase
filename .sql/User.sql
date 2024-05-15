create table Hamsell.User(AccountID integer references Account,CityID int references City,primary key (AccountID));
desc Hamsell.User;