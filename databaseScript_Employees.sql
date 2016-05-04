

USE [Employees]
GO
/****** Object:  Table [dbo].[Emp]    Script Date: 4/8/2016 6:44:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
drop table emp
go

CREATE TABLE [dbo].[Emp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [nvarchar](100) NULL,
	[EmpAddress] [nvarchar](100) NULL,
	[EmpPhoneNumber]  [nvarchar](100) NULL,
 CONSTRAINT [PK_Emp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Employees] SET  READ_WRITE 
GO


  
  Insert into emp values('Atul','123, XXX','24234234');
  Insert into emp values('Vinod','123, XXX','24234234');
  Insert into emp values('Rahul','123, XXX','24234234',2);
  Insert into emp values('Ram','123, XXX','24234234',5);
  Insert into emp values('Vijay','123, XXX','24234234');
  
  Insert into Department values('HR');
  Insert into Department values('Accounts');
  Insert into Department values('Operations');
  Insert into Department values('IT');
  Insert into Department values('MIS');
  Insert into Department values('Admin');
  
   update Emp set deptid = Case(ID) When 2 Then 4 ELSE 5 End
                          
                          
DECLARE @intInput INT
SET @intInput = 2
SELECT CASE(@intInput) WHEN 1 THEN 'One' WHEN 2 THEN 'Two' WHEN 3 THEN 'Three' ELSE 'Your message.' END


ALTER TABLE Emp
ADD CONSTRAINT fk_Dept
FOREIGN KEY (DeptID)
REFERENCES Department(Id)