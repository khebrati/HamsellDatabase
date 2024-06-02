create table Hamsell.View(
PostID integer references Post,
UserID integer references User,
primary key(PostID,UserId)
);
desc Hamsell.View;