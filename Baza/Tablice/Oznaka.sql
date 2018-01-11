USE [FERPI_Datalytics]
GO

/****** Object:  Table [dbo].[Oznaka]    Script Date: 15.12.2017. 15:30:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Oznaka](
	[OznakaID] [int] NOT NULL,
	[DokumentID] [int] NOT NULL,
	[TipOznake] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Oznaka] PRIMARY KEY CLUSTERED 
(
	[OznakaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Oznaka]  WITH CHECK ADD  CONSTRAINT [FK_Oznaka_Dokument] FOREIGN KEY([DokumentID])
REFERENCES [dbo].[Dokument] ([DokumentID])
GO

ALTER TABLE [dbo].[Oznaka] CHECK CONSTRAINT [FK_Oznaka_Dokument]
GO


