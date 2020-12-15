create procedure tutor_sp
(
@tut_id bigint,
@tut_name varchar(100),
@tut_email varchar(100),
@tut_phone numeric(10,0),
@tut_status varchar(10),
@tut_posted_on datetime,
@tut_pic varchar(max),
@tut_qualification varchar(max),
@action varchar(100),
@filter [varchar] (10),
@top varchar(50)
)
as
begin
if(@action='select')
SELECT * from tutor_details
end

begin
if(@action='update')
update tutor_details
set
tut_name=@tut_name,
tut_email=@tut_email,
tut_phone=@tut_phone,
tut_status=@tut_status,
tut_posted_on=@tut_posted_on,
tut_pic=@tut_pic,
tut_qualification=@tut_qualification
where (tut_id=@tut_id)
end

begin
if(@action='delete')
delete from [tutor_details]
where 
(tut_id=@tut_id)
end

begin
if(@action='filter')
select * 
from tutor_details
where tut_name like @filter+'%'
end

begin
 if(@top='select_top_5')
 select top 5 
 tut_id,
tut_name,
tut_email,
tut_phone,
tut_status,
tut_posted_on,
tut_pic,
tut_qualification
from tutor_details
 if(@top='select_top_10')
 select top 10 
 tut_id,
tut_name,
tut_email,
tut_phone,
tut_status,
tut_posted_on,
tut_pic,
tut_qualification
from tutor_details
 if(@top='select_top_50')
 select top 50 
 tut_id,
tut_name,
tut_email,
tut_phone,
tut_status,
tut_posted_on,
tut_pic,
tut_qualification
from tutor_details
 if(@top='select_top_100')
 select top 100 
 tut_id,
tut_name,
tut_email,
tut_phone,
tut_status,
tut_posted_on,
tut_pic,
tut_qualification
from tutor_details
end
