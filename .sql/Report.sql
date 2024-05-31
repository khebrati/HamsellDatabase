create table Hamsell.Report(
	ReportID integer primary key,
    PostID integer references Post,
    AccountId integer references Account,
    RTID integer references ReportType
);
desc Hamsell.Report;
