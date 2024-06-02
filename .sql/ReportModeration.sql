create table Hamsell.ReportModeration(ModerationID integer references Moderation,AccountID int references Account,primary key (ModerationID));
alter table Hamsell.ReportModeration add(ReportID integer references Report);
alter table Hamsell.ReportModeration add(
	ReportModerationResultId integer references ReportModerationResult);