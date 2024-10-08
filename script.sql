
CREATE TABLE [dbo].[Feedbacks](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[ComplaintID] [int] NULL,
	[UserId] [int] NULL,
	[Image2] [varchar](50) NULL
) 
CREATE TABLE [dbo].[PublicUser](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[Password] [varchar](100) NULL,
	[PhoneNo] [numeric](18, 0) NULL,
	[Address] [varchar](50) NULL
) 


CREATE TABLE [dbo].[TblAuthorize](
	[AuthorizeId] [int] IDENTITY(1,1) NOT NULL,
	[DeptId] [int] NULL,
	[FullName] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Phone] [numeric](18, 0) NULL,
	[Address] [varchar](max) NULL
)
CREATE TABLE [dbo].[TblComplaints](
	[ComplaintId] [int] IDENTITY(1,1) NOT NULL,
	[DeptId] [int] NULL,
	[WarId] [int] NULL,
	[Picture1] [varchar](500) NULL,
	[CDescription] [varchar](500) NULL,
	[ComplaintDate] [varchar](50) NULL,
	[UserId] [int] NULL,
	[Status] [varchar](50) NULL
)
CREATE TABLE [dbo].[TblDepartment](
	[DeptId] [int] IDENTITY(1,1) NOT NULL,
	[DeptName] [varchar](500) NULL
) 
CREATE TABLE [dbo].[TblWard](
	[WardID] [int] IDENTITY(1,1) NOT NULL,
	[WardNo] [int] NULL
)
