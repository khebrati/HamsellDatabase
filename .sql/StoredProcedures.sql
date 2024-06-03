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
-- DROP PROCEDURE GetPostTitleByEmail;
