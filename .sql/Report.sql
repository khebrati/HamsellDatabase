create table Hamsell.Report(
	ReportID integer not null,
    PostID integer references Post,
    AccountId integer references Account,
    RTID integer references ReportType
);