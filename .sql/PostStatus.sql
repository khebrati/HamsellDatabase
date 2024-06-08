-- InQueue: There is yet no post moderation for it ( initial value)
-- Active : Post can be seen in public. ( there is a successfull post moderation)
-- Disabled: Post can only be seen by the Its user. It has either been deleted by an admin due to a report, post moderation or disabling of it's user
create table hamsell.PostStatus(
PostStatusId integer primary key,
StatusValue varchar(100) not null
);