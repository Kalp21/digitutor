USE [project_digi_tutor]
GO
/****** Object:  StoredProcedure [dbo].[login_sp1]    Script Date: 02/11/2016 21:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[login_sp1]
	-- Add the parameters for the stored procedure here
	(@login_email_id varchar(100),
	@login_password varchar(100),
	@login_usertype  varchar(10),
	@action varchar(100),
	@last_login datetime
	)
AS
begin
	if(@action='insert')
insert into login 
values
(@login_email_id,@login_password,@login_usertype,@last_login)
end
begin
	if(@action='select')
SELECT * from login
where (@login_email_id=login_email_id and @login_password=login_password)
end
begin
if(@action='update')
update login
set
@last_login=getdate()
where (@login_email_id=login_email_id)
end
begin
if(@action='check_password')
select @login_email_id from login
where (@login_email_id=login_email_id)
end
begin
if(@action ='update_password')
update login
set
login_password=login_password
where (@login_email_id=login_email_id)
END
