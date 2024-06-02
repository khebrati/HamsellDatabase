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
       
INSERT INTO Hamsell.User (AccountID, CityID, UserStatusId)
VALUES (1, 1, 1),
       (2, 2, 1),
       (3, 3, 1),
       (4, 4, 1),
       (5, 5, 1);

INSERT INTO Hamsell.Admin (AccountID)
VALUES (6),
       (7),
       (8),
       (9),
       (10);

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
       (3, 'House');

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
(20, 2, 2, 2, 'Post Title 20', 'Post Description 20', 2000, '2022-01-20', 1);

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
