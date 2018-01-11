USE [FERPI_Datalytics]
GO

/****** Object:  Table [dbo].[Mjesto]    Script Date: 15.12.2017. 15:30:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Mjesto](
	[MjestoID] [int] NOT NULL,
	[NazivMjesto] [nvarchar](50) NOT NULL,
	[PostanskiBroj] [nchar](5) NOT NULL,
	[DrzavaID] [int] NOT NULL,
 CONSTRAINT [PK_Mjesto] PRIMARY KEY CLUSTERED 
(
	[MjestoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Mjesto]  WITH CHECK ADD  CONSTRAINT [FK_Mjesto_Drzava] FOREIGN KEY([DrzavaID])
REFERENCES [dbo].[Drzava] ([DrzavaID])
GO

ALTER TABLE [dbo].[Mjesto] CHECK CONSTRAINT [FK_Mjesto_Drzava]
GO


