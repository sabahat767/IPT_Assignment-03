USE [Employee_Management]
GO
/****** Object:  Table [dbo].[DEPARTMENTS]    Script Date: 22-Dec-20 5:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEPARTMENTS](
	[department_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Employee]    Script Date: 22-Dec-20 5:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Employee](
	[employee_id] [int] IDENTITY(200,1) NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](50) NOT NULL,
	[phone_number] [varchar](22) NOT NULL,
	[department_id] [int] NOT NULL,
	[salary] [varchar](50) NOT NULL,
	[Job_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Job]    Script Date: 22-Dec-20 5:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Job](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[job_title] [varchar](30) NULL,
	[min_salary] [varchar](50) NULL,
	[max_salary] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Tbl_Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Deprt] FOREIGN KEY([department_id])
REFERENCES [dbo].[DEPARTMENTS] ([department_id])
GO
ALTER TABLE [dbo].[Tbl_Employee] CHECK CONSTRAINT [FK_Employee_Deprt]
GO
ALTER TABLE [dbo].[Tbl_Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Job] FOREIGN KEY([Job_id])
REFERENCES [dbo].[Tbl_Job] ([job_id])
GO
ALTER TABLE [dbo].[Tbl_Employee] CHECK CONSTRAINT [FK_Employee_Job]
GO
