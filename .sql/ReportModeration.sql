create table Hamsell.ReportModeration(
ModerationId integer references Moderation,
AdminId int not null references Account,
primary key (ModerationId),
ReportID integer not null references Report,
ReportModerationResultId integer not null references ReportModerationResult
);