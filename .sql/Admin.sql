create table Hamsell.Admin(
AccountID integer references Account,
primary key (AccountID)
);
select * from Hamsell.Admin;