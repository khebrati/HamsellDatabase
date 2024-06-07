
create table Hamsell.ReportModeration(
ModerationId integer primary key references Moderation,
AdminId int not null references Account,
ReportID integer unique not null references Report,
ReportModerationResultId integer not null references ReportModerationResult
);