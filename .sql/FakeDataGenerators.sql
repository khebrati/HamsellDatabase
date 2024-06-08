use hamsell;
-- fake data inserters
INSERT INTO Hamsell.Account (AcountId, FirstName, LastName, CreationDate, PhoneNumber, EmailAddress)
VALUES (1, 'John', 'Doe', '2022-01-01', '1234567890', 'john.doe@example.com'),
       (2, 'Jane', 'Doe', '2022-01-02', '0987654321', 'jane.doe@example.com'),
       (3, 'Jim', 'Doe', '2022-01-03', '1122334455', 'jim.doe@example.com'),
       (4, 'Jake', 'Doe', '2022-01-04', '5566778899', 'jake.doe@example.com'),
       (5, 'Jill', 'Doe', '2022-01-05', '9988776655', 'jill.doe@example.com'),
       (6, 'Admin', 'One', '2022-01-06', '1112223333', 'admin.one@example.com'),
       (7, 'Admin', 'Two', '2022-01-07', '2223334444', 'admin.two@example.com'),
       (8, 'Admin', 'Three', '2022-01-08', '3334445555', 'admin.three@example.com'),
       (9, 'Admin', 'Four', '2022-01-09', '4445556666', 'admin.four@example.com'),
       (10, 'Admin', 'Five', '2022-01-10', '5556667777', 'admin.five@example.com');

INSERT INTO Hamsell.UserStatus(UserStatusId,UserStatusValue) VALUES
(1,'Enabled'),
(2,'Disabled');

INSERT INTO Hamsell.User (AcountID, CityID, UserStatusId)
VALUES (1, 1, 1),
       (2, 2, 1),
       (3, 3, 1),
       (4, 4, 1),
       (5, 5, 1);

INSERT INTO Hamsell.Admin (AccountID)
VALUES (1),
       (2),
       (3),
       (4),
       (5);

INSERT INTO Hamsell.OsModel (OsModelId, OsModelName)
VALUES (1, 'Android'),
       (2, 'iOS'),
       (3, 'Windows Phone');

INSERT INTO Hamsell.PhoneBrand (PhoneBrandId, PhoneBrandName)
VALUES (1, 'Samsung'),
       (2, 'Apple'),
       (3, 'Nokia');

INSERT INTO Hamsell.CarBrand (CarBrandId, CarBrandName)
VALUES (1, 'Toyota'),
    (2, 'Honda'),
    (3, 'Ford');

INSERT INTO Hamsell.PostCategory (PostCategoryId, PostCategoryName)
VALUES (1, 'Phone'),
       (2, 'Car'),
       (3, 'House'),
       (4,'Digital'),
       (5,'Housing');


INSERT INTO hamsell.PostStatus (PostStatusId, StatusValue)
VALUES (1, 'InQueue'),
       (2, 'Active'),
       (3, 'Disabled');

INSERT INTO Hamsell.Post (PostID, UserID, PostCategoryID, CityId, Title, PostDescription, Price, CreationDate, PostStatusID)
VALUES 
(1, 1, 1, 1, 'Post Title 1', 'Post Description 1', 100, '2022-01-01', 1),
(2, 2, 2, 2, 'Post Title 2', 'Post Description 2', 200, '2022-01-02', 1),
(3, 3, 3, 3, 'Post Title 3', 'Post Description 3', 300, '2022-01-03', 1),
(4, 1, 1, 1, 'Post Title 4', 'Post Description 4', 400, '2022-01-04', 1),
(5, 2, 2, 2, 'Post Title 5', 'Post Description 5', 500, '2022-01-05', 1),
(6, 3, 3, 3, 'Post Title 6', 'Post Description 6', 600, '2022-01-06', 1),
(7, 1, 1, 1, 'Post Title 7', 'Post Description 7', 700, '2022-01-07', 1),
(8, 2, 2, 2, 'Post Title 8', 'Post Description 8', 800, '2022-01-08', 1),
(9, 3, 3, 3, 'Post Title 9', 'Post Description 9', 900, '2022-01-09', 1),
(10, 1, 1, 1, 'Post Title 10', 'Post Description 10', 1000, '2022-01-10', 1),
(11, 2, 2, 2, 'Post Title 11', 'Post Description 11', 1100, '2022-01-11', 1),
(12, 3, 3, 3, 'Post Title 12', 'Post Description 12', 1200, '2022-01-12', 1),
(13, 1, 1, 1, 'Post Title 13', 'Post Description 13', 1300, '2022-01-13', 1),
(14, 2, 2, 2, 'Post Title 14', 'Post Description 14', 1400, '2022-01-14', 1),
(15, 3, 3, 3, 'Post Title 15', 'Post Description 15', 1500, '2022-01-15', 1),
(16, 1, 1, 1, 'Post Title 16', 'Post Description 16', 1600, '2022-01-16', 1),
(17, 2, 2, 2, 'Post Title 17', 'Post Description 17', 1700, '2022-01-17', 1),
(18, 3, 3, 3, 'Post Title 18', 'Post Description 18', 1800, '2022-01-18', 1),
(19, 1, 1, 1, 'Post Title 19', 'Post Description 19', 1900, '2022-01-19', 1),
(20, 2, 2, 2, 'Post Title 20', 'Post Description 20', 2000, '2022-01-20', 1),
(21, 4, 1, 1, 'Post Title 21', 'Post Description 21', 100, '2022-01-21', 2),
(22, 4, 2, 1, 'Post Title 22', 'Post Description 22', 200, '2022-01-22', 2),
(23, 4, 3, 2, 'Post Title 23', 'Post Description 23', 300, '2022-01-23', 2),
(24, 5, 1, 3, 'Post Title 24', 'Post Description 24', 400, '2022-01-24', 2),
(25, 5, 2, 4, 'Post Title 25', 'Post Description 25', 500, '2022-01-25', 2),
(26, 5, 3, 5, 'Post Title 26', 'Post Description 26', 600, '2022-01-26', 2);


-- Insert fake data into Province
INSERT INTO Hamsell.Province (ProvinceId, ProvinceName)
VALUES (1, 'Province1'),
    (2, 'Province2'),
    (3, 'Province3'),
    (4, 'Province4'),
    (5, 'Province5');

-- Insert fake data into City
INSERT INTO Hamsell.City (CityId, CityName, ProvinceId)
VALUES (1, 'City1', 1),
    (2, 'City2', 2),
    (3, 'City3', 3),
    (4, 'City4', 4),
    (5, 'City5', 5);

-- Insert fake data into BusinessCategory
INSERT INTO Hamsell.BusinessCategory (BusinessCategoryId, BusinessCategoryName)
VALUES (1, 'BusinessCategory1'),
    (2, 'BusinessCategory2'),
    (3, 'BusinessCategory3'),
    (4, 'BusinessCategory4'),
    (5, 'BusinessCategory5');

-- Insert data into ReportModerationResult
INSERT INTO Hamsell.ReportModerationResult (ReportModerationResultId, ReportModerationResultValue)
VALUES (1, 'DisableReport'),
       (2, 'DisablePost'),
       (3, 'DisableUser');

-- Insert data into PostModerationResult
INSERT INTO Hamsell.PostModerationResult (PostModerationResultId, PostModerationValue)
VALUES (1, 'Approve'),
       (2, 'Reject');

INSERT INTO Hamsell.ReportType (ReportTypeId, ReportName)
VALUES (1, 'AdultContent'),
    (2, 'Fraud'),
    (3, 'MisleadingListing');

INSERT INTO Hamsell.Report (ReportId, ReportTypeId, PostId, UserId, ReportDate)
VALUES 
(1, 1, 1, 1,'2022-01-01'),
(2, 2, 2, 2, '2022-01-02'),
(3, 3, 3, 3, '2022-01-03'),
(4, 1, 4, 4, '2022-01-04'),
(5, 2, 5, 5, '2022-01-05'),
(6, 3, 6, 6, '2022-01-06'),
(7, 1, 7, 7,  '2022-01-07'),
(8, 2, 8, 8,  '2022-01-08'),
(9, 3, 9, 9,  '2022-01-09'),
(10, 1, 10, 10, '2022-01-10'),
(11, 2, 1, 11,  '2022-01-11'),
(12, 3, 2, 12,  '2022-01-12'),
(13, 1, 3, 13, '2022-01-13'),
(14, 2, 4, 14,  '2022-01-14'),
(15, 3, 5, 15,  '2022-01-15'),
(16, 1, 6, 16, '2022-01-16'),
(17, 2, 7, 17,  '2022-01-17'),
(18, 3, 8, 18,  '2022-01-18'),
(19, 1, 9, 19,  '2022-01-19'),
(20, 2, 10, 20, '2022-01-20');

INSERT INTO Hamsell.Moderation (ModerationID, Note, CreationDate)
VALUES 
(1, 'Note 1', '2022-01-01'),
(2, 'Note 2', '2022-01-02'),
(3, 'Note 3', '2022-01-03'),
(4, 'Note 4', '2022-01-04'),
(5, 'Note 5', '2022-01-05'),
(6, 'Note 6', '2022-01-06'),
(7, 'Note 7', '2022-01-07'),
(8, 'Note 8', '2022-01-08'),
(9, 'Note 9', '2022-01-09'),
(10, 'Note 10', '2022-01-10'),
(11, 'Note 11', '2022-01-11'),
(12, 'Note 12', '2022-01-12'),
(13, 'Note 13', '2022-01-13'),
(14, 'Note 14', '2022-01-14'),
(15, 'Note 15', '2022-01-15'),
(16, 'Note 16', '2022-01-16'),
(17, 'Note 17', '2022-01-17'),
(18, 'Note 18', '2022-01-18'),
(19, 'Note 19', '2022-01-19'),
(20, 'Note 20', '2022-01-20');

INSERT INTO Hamsell.ReportModeration (ModerationId, AdminId, ReportId, ReportModerationResultId)
VALUES 
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 1, 4, 1),
(5, 2, 5, 2),
(6, 3, 6, 3),
(7, 1, 7, 1),
(8, 2, 8, 2),
(9, 3, 9, 3),
(10, 1, 10, 1);

INSERT INTO Hamsell.PostModeration (ModerationId, AdminId, PostID, PostModerationResultId)
VALUES 
(11, 1, 1, 1),
(12, 2, 2, 2),
(13, 3, 3, 1),
(14, 1, 4, 2),
(15, 2, 5, 1),
(16, 3, 6, 2),
(17, 1, 7, 1),
(18, 2, 8, 2),
(19, 3, 9, 1),
(20, 1, 10, 2);

-- updating posts that have not been accepted by an admin
UPDATE Hamsell.Post
SET PostStatusId = 3
WHERE PostID = 1 OR PostId = 3 OR PostId = 5 OR PostId = 7 OR PostId = 9;

-- updating posts that have been accepted
UPDATE Hamsell.Post
set PostStatusId = 2
where PostId != 1 AND PostId != 3 AND PostId != 5 AND PostId != 7 AND PostId != 9;

-- disabling the user who has a Report on their posts that says they have to be disabled
-- select *
-- from User join Post on User.AcountId = Post.UserId
-- join Report on Report.PostId = Post.PostId
-- join ReportModeration on ReportModeration.ReportId = Report.ReportId
-- join ReportModerationResult on ReportModeration.ReportModerationResultId = ReportModerationResult.ReportModerationResultId
-- where ReportModerationResult.ReportModerationResultValue = "DisableUser";
update User set
UserStatusId = 2 where User.AcountId = 3;


-- updating posts that their report says post must be disabled
-- select *
-- from Post
-- join Report on Report.PostId = Post.PostId
-- join ReportModeration on ReportModeration.ReportId = Report.ReportId
-- join ReportModerationResult on ReportModeration.ReportModerationResultId = ReportModerationResult.ReportModerationResultId
-- where ReportModerationResult.ReportModerationResultValue = "DisablePost";
update Post set PostStatusId = 3 
where PostId = 2 or PostId = 5 or PostId = 8;

-- disabling the post whose user is disabled
-- select *
-- from User join Post on User.AcountId = Post.UserId
-- where User.UserStatusId = 2;
update Post set PostStatusId = 3 
where PostId = 3 or PostId = 6 or PostId = 9 or PostId = 12 or PostId = 15 or PostId = 18;

