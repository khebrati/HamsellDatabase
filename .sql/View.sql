create table Hamsell.View(PostID integer references Post, AccountID integer references Hamsell.Account);
alter table Hamsell.View add(primary key(PostID,AccountId));
desc Hamsell.View;