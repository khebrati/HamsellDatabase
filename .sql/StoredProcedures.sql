use Hamsell;
-- no.1
DELIMITER //
CREATE PROCEDURE GetPostTitleByEmail(in EmailAddress VARCHAR(254))
BEGIN
	declare var int;
    select AccountId into var from Account where Account.EmailAddress = EmailAddress;
    select title, CreationDate from Post where UserId = var order by CreationDate desc;
END //
DELIMITER ;
-- call GetPostTitleByEmail('john.doe@example.com');


-- no.2
DELIMITER //
CREATE PROCEDURE GetUsersByAdminDeletion(in EmailAddress VARCHAR(254))
BEGIN
    DECLARE var INT;
    SELECT AccountId INTO var FROM Hamsell.Account WHERE Hamsell.Account.EmailAddress = EmailAddress;
    SELECT Hamsell.User.*, Hamsell.Account.*
    FROM Hamsell.User
    INNER JOIN Hamsell.Account ON Hamsell.User.AcountID = Hamsell.Account.AcountID
    INNER JOIN Hamsell.Post ON Hamsell.User.AcountID = Hamsell.Post.UserId
    INNER JOIN Hamsell.PostModeration ON Hamsell.Post.PostID = Hamsell.PostModeration.PostID
    WHERE Hamsell.PostModeration.AdminId = var AND Hamsell.Post.PostStatusId = 3
    GROUP BY Hamsell.User.AcountID;
END //
DELIMITER ;

-- no.3
-- wtf

-- no.4
DELIMITER //
CREATE PROCEDURE SearchPostsByString(IN search_string VARCHAR(255))
BEGIN
    SELECT P.PostID, P.title, P.PostDescription, A.FirstName, A.LastName
    FROM Hamsell.Post AS P
    INNER JOIN Hamsell.User AS U ON P.UserId = U.AcountId
    INNER JOIN Hamsell.Account AS A ON U.AcountId = A.AcountId
    WHERE P.title LIKE CONCAT('%', search_string, '%')
    OR P.PostDescription LIKE CONCAT('%', search_string, '%')
    OR A.FirstName LIKE CONCAT('%', search_string, '%')
    OR A.LastName LIKE CONCAT('%', search_string, '%');
END //
DELIMITER ;
-- 5
DELIMITER //
CREATE PROCEDURE GetUsersInSameCity(in EmailOrPhone VARCHAR(255))
BEGIN
    DECLARE var INT;
    DECLARE cityID INT;
    IF EmailOrPhone LIKE '%@%' THEN
        SELECT AcountID INTO var FROM Hamsell.Account WHERE EmailAddress = EmailOrPhone;
    ELSE
        SELECT AcountID INTO var FROM Hamsell.Account WHERE PhoneNumber = EmailOrPhone;
    END IF;
    SELECT CityID INTO cityID FROM Hamsell.User WHERE AcountID = var;
    SELECT Hamsell.User.*, Hamsell.Account.* 
    FROM Hamsell.User
    INNER JOIN Hamsell.Account ON Hamsell.User.AcountID = Hamsell.Account.AcountID
    WHERE Hamsell.User.CityID = cityID;
END //
DELIMITER ;
-- 6
DELIMITER //
CREATE PROCEDURE GetTopNUsersByPostCount(IN dateParam DATETIME, IN N INT)
BEGIN
    SELECT Hamsell.Account.FirstName, Hamsell.Account.LastName, COUNT(Hamsell.Post.PostID) AS PostCount
    FROM Hamsell.Post
    INNER JOIN Hamsell.User ON Hamsell.Post.UserId = Hamsell.User.AcountID
    INNER JOIN Hamsell.Account ON Hamsell.User.AcountID = Hamsell.Account.AcountID
    WHERE Hamsell.Post.CreationDate >= dateParam
    GROUP BY Hamsell.Account.FirstName, Hamsell.Account.LastName
    ORDER BY PostCount DESC
    LIMIT N;
END //
DELIMITER ;

-- 7
DELIMITER //
CREATE PROCEDURE GetDisabledPostsByCategory(IN categoryName VARCHAR(100))
BEGIN
    SELECT P.*
    FROM Hamsell.Post AS P
    INNER JOIN Hamsell.PostCategory AS PC ON P.PostCategoryId = PC.PostCategoryId
    INNER JOIN Hamsell.PostStatus AS PS ON P.PostStatusId = PS.PostStatusId
    WHERE PC.PostCategoryName = categoryName AND PS.StatusValue = 'Disabled'
    ORDER BY P.CreationDate;
END //
DELIMITER ;

-- 8
DELIMITER //
CREATE PROCEDURE GetMostReportedPostByCategory(IN ReportCategoryName VARCHAR(100))
BEGIN
    SELECT Hamsell.Post.PostID
    FROM Hamsell.Report
    INNER JOIN Hamsell.ReportType ON Hamsell.Report.ReportTypeId = Hamsell.ReportType.ReportTypeId
    INNER JOIN Hamsell.Post ON Hamsell.Report.PostId = Hamsell.Post.PostId
    WHERE Hamsell.ReportType.ReportName = ReportCategoryName
    GROUP BY Hamsell.Post.PostID
    ORDER BY COUNT(Hamsell.Report.ReportId) DESC
    LIMIT 1;
END //
DELIMITER ;




