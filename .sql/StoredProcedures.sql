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
CREATE PROCEDURE GetUserByAdminEmail(in EmailAddress VARCHAR(254))
BEGIN
	declare var int;
    declare PostID int;
    declare UserID int;
    select AccountId into var from Account where Account.EmailAddress = EmailAddress;
    select PostID into PostID from PostModeration where PostModeration.AdminId = var;
    select UserId into UserID from Post where Post.PostID = PostID; 
    select FirstName, LastName from Account where Account.AccountID = UserID; 
END //
DELIMITER ;




