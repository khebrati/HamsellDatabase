create table Hamsell.PostModeration(
ModerationId integer not null references Moderation,
AdminId integer not null references Account,
primary key (ModerationId),
PostID integer not null references Post,
PostModerationResultId integer not null references postmoderationResult
);
select * from Hamsell.PostModeration;