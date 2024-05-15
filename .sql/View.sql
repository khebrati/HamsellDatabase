create table View(PostID integer references Post, AccountID integer references Account);
alter table Hamsell.View add(primary key(PostID,AccountId));
desc Hamsell.View;