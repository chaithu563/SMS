USE [SMS]
GO
/****** Object:  Table [dbo].[tblBranch]    Script Date: 7/13/2014 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBranch](
	[Id] [int] NOT NULL,
	[BranchName] [varchar](50) NULL,
	[BranchCode] [nvarchar](10) NULL,
	[BranchHeadID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblClass]    Script Date: 7/13/2014 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClass](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DepartmentId] [int] NULL,
	[BranchId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDepartment]    Script Date: 7/13/2014 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDepartment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[DepHeadId] [int] NULL,
	[BranchId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSchedule]    Script Date: 7/13/2014 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSchedule](
	[Id] [int] NOT NULL,
	[ClassId] [int] NULL,
	[BranchId] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[OnWeek] [smallint] NULL,
	[SubjectId] [int] NULL,
	[DepartmentId] [int] NULL,
	[StaffId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblScheduleaDay]    Script Date: 7/13/2014 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblScheduleaDay](
	[Id] [int] NOT NULL,
	[BranchId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStaff]    Script Date: 7/13/2014 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStaff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[StartCareer] [datetime] NULL,
	[LastCompany1] [varchar](50) NULL,
	[LastCompany2] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[DepartmentId] [int] NULL,
	[BranchId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStaffSubject]    Script Date: 7/13/2014 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStaffSubject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StaffId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[OtherInfo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudent]    Script Date: 7/13/2014 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudent](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PrimaryPhone] [numeric](18, 0) NULL,
	[SecondaryPhone] [numeric](18, 0) NULL,
	[Address] [nvarchar](200) NULL,
	[BranchId] [int] NULL,
	[DepartmentId] [int] NULL,
	[ClassId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSubject]    Script Date: 7/13/2014 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](50) NULL,
	[SubjectDescription] [varchar](50) NULL,
	[UnderDepartmentId] [int] NULL,
	[BranchId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 7/13/2014 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[Id] [int] NOT NULL,
	[UserId] [int] NULL,
	[UserPassword] [nvarchar](12) NULL,
	[UserTypeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUserType]    Script Date: 7/13/2014 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUserType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tblBranch]  WITH CHECK ADD FOREIGN KEY([BranchHeadID])
REFERENCES [dbo].[tblUsers] ([Id])
GO
ALTER TABLE [dbo].[tblClass]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[tblBranch] ([Id])
GO
ALTER TABLE [dbo].[tblClass]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[tblDepartment] ([Id])
GO
ALTER TABLE [dbo].[tblDepartment]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[tblBranch] ([Id])
GO
ALTER TABLE [dbo].[tblDepartment]  WITH CHECK ADD FOREIGN KEY([DepHeadId])
REFERENCES [dbo].[tblUsers] ([Id])
GO
ALTER TABLE [dbo].[tblSchedule]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[tblBranch] ([Id])
GO
ALTER TABLE [dbo].[tblSchedule]  WITH CHECK ADD FOREIGN KEY([ClassId])
REFERENCES [dbo].[tblClass] ([Id])
GO
ALTER TABLE [dbo].[tblSchedule]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[tblDepartment] ([Id])
GO
ALTER TABLE [dbo].[tblSchedule]  WITH CHECK ADD FOREIGN KEY([StaffId])
REFERENCES [dbo].[tblStaff] ([Id])
GO
ALTER TABLE [dbo].[tblSchedule]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[tblSubject] ([Id])
GO
ALTER TABLE [dbo].[tblScheduleaDay]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[tblBranch] ([Id])
GO
ALTER TABLE [dbo].[tblStaff]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[tblBranch] ([Id])
GO
ALTER TABLE [dbo].[tblStaff]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[tblDepartment] ([Id])
GO
ALTER TABLE [dbo].[tblStaffSubject]  WITH CHECK ADD FOREIGN KEY([StaffId])
REFERENCES [dbo].[tblStaff] ([Id])
GO
ALTER TABLE [dbo].[tblStaffSubject]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[tblSubject] ([Id])
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[tblBranch] ([Id])
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD FOREIGN KEY([ClassId])
REFERENCES [dbo].[tblClass] ([Id])
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[tblDepartment] ([Id])
GO
ALTER TABLE [dbo].[tblSubject]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[tblBranch] ([Id])
GO
ALTER TABLE [dbo].[tblSubject]  WITH CHECK ADD FOREIGN KEY([UnderDepartmentId])
REFERENCES [dbo].[tblDepartment] ([Id])
GO
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[tblUserType] ([Id])
GO
