CREATE TABLE [dbo].[Images](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [varchar](50) NOT NULL,
	[Format] [char](2) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[FolderName] [varchar](50) NOT NULL,
	[UserEmail] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
	[Id] INT NOT NULL PRIMARY KEY
)
