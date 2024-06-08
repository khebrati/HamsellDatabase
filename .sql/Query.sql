-- 1. 
SELECT Account.FirstName, Account.LastName
FROM Hamsell.User
LEFT JOIN Hamsell.Account ON Hamsell.User.AcountID = Hamsell.Account.AcountID
LEFT JOIN Hamsell.Post ON Hamsell.User.AcountID = Hamsell.Post.UserId
WHERE Hamsell.Post.PostID IS NULL;
-- 2
SELECT Account.FirstName, Account.LastName
FROM Hamsell.User
INNER JOIN Hamsell.Account ON Hamsell.User.AcountID = Hamsell.Account.AcountID
INNER JOIN Hamsell.Business ON Hamsell.User.AcountID = Hamsell.Business.UserId
GROUP BY Hamsell.User.AcountID;
-- 3
SELECT Hamsell.User.AcountID, MONTH(Hamsell.Post.CreationDate) AS Month, SUM(Hamsell.Post.Price) AS TotalPrice
FROM Hamsell.User
INNER JOIN Hamsell.Post ON Hamsell.User.AcountID = Hamsell.Post.UserId
GROUP BY Hamsell.User.AcountID, MONTH(Hamsell.Post.CreationDate);
-- 5
SELECT Hamsell.Post.UserId
FROM Hamsell.Post
GROUP BY Hamsell.Post.UserId, Hamsell.Post.CityID
HAVING COUNT(Hamsell.Post.PostID) <= 1;
-- 6
SELECT Hamsell.User.*, Hamsell.Account.*
FROM Hamsell.User
INNER JOIN Hamsell.Account ON Hamsell.User.AcountID = Hamsell.Account.AcountID
INNER JOIN Hamsell.Post ON Hamsell.User.AcountID = Hamsell.Post.UserId
WHERE Hamsell.Post.CreationDate = (SELECT MAX(CreationDate) FROM Hamsell.Post);
-- 7
SELECT Hamsell.Account.PhoneNumber, Hamsell.Account.EmailAddress
FROM Hamsell.Account
INNER JOIN Hamsell.User ON Hamsell.Account.AcountID = Hamsell.User.AcountID
WHERE Hamsell.User.AcountID IN (
    SELECT Hamsell.Post.UserId
    FROM Hamsell.Post
    GROUP BY Hamsell.Post.UserId
    HAVING AVG(Hamsell.Post.Price) > (
        SELECT AVG(Price) FROM Hamsell.Post
    )
);
-- 8
SELECT Hamsell.PostCategory.PostCategoryName, COUNT(Hamsell.Post.PostID) as PostCount
FROM Hamsell.Post
INNER JOIN Hamsell.PostCategory ON Hamsell.Post.PostCategoryId = Hamsell.PostCategory.PostCategoryId
GROUP BY Hamsell.PostCategory.PostCategoryName;
-- 9
SELECT Hamsell.Account.FirstName
FROM Hamsell.Post
INNER JOIN Hamsell.User ON Hamsell.Post.UserId = Hamsell.User.AcountID
INNER JOIN Hamsell.Account ON Hamsell.User.AcountID = Hamsell.Account.AcountID
WHERE Hamsell.Post.CreationDate >= DATE_SUB(CURDATE(), INTERVAL 1 WEEK)
GROUP BY Hamsell.Account.AcountID
ORDER BY COUNT(Hamsell.Post.PostID) DESC
LIMIT 3;
-- 10
SELECT Hamsell.City.CityName, COUNT(Hamsell.Post.PostID) as PostCount
FROM Hamsell.City
INNER JOIN Hamsell.Province ON Hamsell.City.ProvinceID = Hamsell.Province.ProvinceID
INNER JOIN Hamsell.Post ON Hamsell.City.CityID = Hamsell.Post.CityID
WHERE Hamsell.Province.ProvinceName = 'Tehran'
GROUP BY Hamsell.City.CityName;
-- 11
SELECT distinct Hamsell.City.CityName
FROM Hamsell.City
INNER JOIN Hamsell.Post ON Hamsell.City.CityID = Hamsell.Post.CityID
INNER JOIN Hamsell.User ON Hamsell.Post.UserId = Hamsell.User.AcountID
INNER JOIN Hamsell.Account ON Hamsell.User.AcountID = Hamsell.Account.AcountID
WHERE Hamsell.Account.CreationDate = (SELECT MIN(CreationDate) FROM Hamsell.Account);

-- 12
SELECT Hamsell.Account.FirstName, Hamsell.Account.LastName
FROM Hamsell.Admin
INNER JOIN Hamsell.Account ON Hamsell.Admin.AccountID = Hamsell.Account.AcountId;
-- 13
SELECT Hamsell.Account.FirstName, Hamsell.Account.LastName
FROM Hamsell.Post
INNER JOIN Hamsell.User ON Hamsell.Post.UserId = Hamsell.User.AcountID
INNER JOIN Hamsell.Account ON Hamsell.User.AcountID = Hamsell.Account.AcountId
GROUP BY Hamsell.User.AcountID
HAVING COUNT(Hamsell.Post.PostID) >= 2;

-- 14
SELECT Hamsell.Account.FirstName, Hamsell.Account.LastName
FROM Hamsell.Post
INNER JOIN Hamsell.User ON Hamsell.Post.UserId = Hamsell.User.AcountID
INNER JOIN Hamsell.Account ON Hamsell.User.AcountID = Hamsell.Account.AcountID
INNER JOIN Hamsell.PostCategory ON Hamsell.Post.PostCategoryId = Hamsell.PostCategory.PostCategoryId
WHERE Hamsell.PostCategory.PostCategoryName = 'Digital'
GROUP BY Hamsell.User.AcountID
HAVING COUNT(Hamsell.Post.PostID) >= 2;

-- 15
SELECT Account.EmailAddress, Account.PhoneNumber
FROM Hamsell.Account
WHERE Account.AcountID IN (
    SELECT Post.UserId
    FROM Hamsell.Post
    INNER JOIN Hamsell.PostCategory ON Post.PostCategoryId = PostCategory.PostCategoryId
    GROUP BY Post.UserId
    HAVING COUNT(DISTINCT Post.PostCategoryId) = (SELECT COUNT(*) FROM Hamsell.PostCategory)
);

-- 16
SET @total_categories = (SELECT COUNT(*) FROM Hamsell.PostCategory);

SELECT Account.EmailAddress, Account.PhoneNumber
FROM Hamsell.Account
WHERE Account.AcountID IN (
    SELECT Post.UserId
    FROM Hamsell.Post
    INNER JOIN Hamsell.PostCategory ON Post.PostCategoryId = PostCategory.PostCategoryId
    GROUP BY Post.UserId
    HAVING COUNT(DISTINCT Post.PostCategoryId) = @total_categories
);

-- 17
SELECT PostID, COUNT(*) as Views
FROM Hamsell.View
GROUP BY PostID
ORDER BY Views DESC
LIMIT 1 OFFSET 1;

select * from Hamsell.PostModeration;
select * from Hamsell.PostModerationResult;
select * from Hamsell.PostModeration;
select * from Hamsell.Account;
select * from Hamsell.Admin;
select * from Hamsell.User;
select * from Hamsell.Post;
-- 18
SELECT Hamsell.Account.FirstName, Hamsell.Account.LastName,
(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Hamsell.PostModeration WHERE AdminId = Hamsell.Account.AcountId)) as RejectionPercentage
FROM Hamsell.PostModeration
INNER JOIN Hamsell.PostModerationResult ON Hamsell.PostModeration.PostModerationResultId = Hamsell.PostModerationResult.PostModerationResultId
INNER JOIN Hamsell.Admin ON Hamsell.PostModeration.AdminId = Hamsell.Admin.AccountID
INNER JOIN Hamsell.Account ON Hamsell.Admin.AccountID = Hamsell.Account.AcountId
WHERE Hamsell.PostModerationResult.PostModerationValue = 'Reject'
GROUP BY Hamsell.Account.AcountId
ORDER BY RejectionPercentage DESC
LIMIT 1;

-- 19
UPDATE Hamsell.Account
SET FirstName = 'Mohammadi'
WHERE AcountId = (
    SELECT Hamsell.User.AcountId
    FROM Hamsell.User
    INNER JOIN Hamsell.Post ON Hamsell.User.AcountId = Hamsell.Post.UserId
    INNER JOIN Hamsell.PostModeration ON Hamsell.Post.PostId = Hamsell.PostModeration.PostId
    INNER JOIN Hamsell.PostModerationResult ON Hamsell.PostModeration.PostModerationResultId = Hamsell.PostModerationResult.PostModerationResultId
    WHERE Hamsell.PostModerationResult.PostModerationValue = 'Reject'
    GROUP BY Hamsell.User.AcountId
    ORDER BY COUNT(*) DESC
    LIMIT 1
);
 -- 20
DELETE FROM Hamsell.Post
WHERE UserId = (
    SELECT AcountId 
    FROM Hamsell.Account 
    WHERE FirstName = 'Mohammadi'
) AND PostCategoryId = (
    SELECT PostCategoryId 
    FROM Hamsell.PostCategory 
    WHERE PostCategoryName = 'Housing'
) AND PostStatusId = (
    SELECT PostStatusId 
    FROM Hamsell.PostStatus 
    WHERE StatusValue = 'Disabled'
);
-- 21
DELETE FROM Hamsell.Post
WHERE PostId IN (
    SELECT PostId 
    FROM Hamsell.PostModeration
    INNER JOIN Hamsell.PostModerationResult ON Hamsell.PostModeration.PostModerationResultId = Hamsell.PostModerationResult.PostModerationResultId
    WHERE Hamsell.PostModerationResult.PostModerationValue = 'Reject'
);
-- 22
-- run this 100 times
INSERT INTO Hamsell.View (PostID)
SELECT Hamsell.Post.PostID
FROM Hamsell.Post
INNER JOIN Hamsell.User ON Hamsell.Post.UserId = Hamsell.User.AcountID
INNER JOIN Hamsell.Account ON Hamsell.User.AcountID = Hamsell.Account.AcountID
INNER JOIN Hamsell.City ON Hamsell.User.CityID = Hamsell.City.CityID
WHERE Hamsell.City.CityName = 'Fars' AND Hamsell.Post.CreationDate = DATE_SUB(CURDATE(), INTERVAL 1 DAY);

-- 23
SELECT Hamsell.ReportType.ReportName AS ReportCategory, COUNT(Hamsell.Report.ReportId) AS ReportCount
FROM Hamsell.Report
INNER JOIN Hamsell.ReportType ON Hamsell.Report.ReportTypeId = Hamsell.ReportType.ReportTypeId
WHERE Hamsell.Report.PostId = (
    SELECT Hamsell.Report.PostId
    FROM Hamsell.Report
    GROUP BY Hamsell.Report.PostId
    ORDER BY COUNT(Hamsell.Report.ReportId) DESC
    LIMIT 1
)
GROUP BY Hamsell.ReportType.ReportName;



