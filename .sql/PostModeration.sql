create table Hamsell.PostModeration(ModerationID integer references Moderation,AccountID int references Account,primary key (ModerationID));
alter table Hamsell.PostModeration add(PostID integer references Post);
-- approve or reject 
alter table Hamsell.PostModeration add(PostModerationResultId integer references PostModerationResult)   