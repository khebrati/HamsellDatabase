create table Hamsell.Account(AccountID integer primary key);
alter table Hamsell.Account add (
	firstname char(25),
    lastname char(25),
    creationDate date,
    PhoneNumber VARCHAR(10) CHECK (PhoneNumber REGEXP '^[0-9]+$'),
    EmailAddress VARCHAR(254) UNIQUE
);
desc Hamsell.Account;