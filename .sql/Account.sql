create table Hamsell.Account(
	AccountId integer primary key,
	FirstName char(100) not null,
    LastName char(100),
    CreationDate datetime not null,
    PhoneNumber VARCHAR(15) CHECK (PhoneNumber REGEXP '^[0-9]+$'),
    EmailAddress VARCHAR(254) UNIQUE
);
desc Hamsell.Account;