
create table Hamsell.Report(
	ReportID integer primary key,
    PostID integer references Post,
    UserId integer references User,
    ReportTypeId integer references ReportType,
    ReportDate datetime
);
desc Hamsell.Report;
