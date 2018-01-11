USE [FERPI_Datalytics]
GO

/****** Object:  Table [dbo].[Dokument]    Script Date: 15.12.2017. 15:30:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dokument](
	[DokumentID] [int] NOT NULL,
	[TipDokumenta] [nchar](50) NOT NULL,
	[Lokacija] [nvarchar](500) NOT NULL,
	[OsobaID] [int] NOT NULL,
 CONSTRAINT [PK_Dokument] PRIMARY KEY CLUSTERED 
(
	[DokumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dokument]  WITH CHECK ADD  CONSTRAINT [FK_Dokument_Osoba] FOREIGN KEY([OsobaID])
REFERENCES [dbo].[Osoba] ([OsobaID])
GO

ALTER TABLE [dbo].[Dokument] CHECK CONSTRAINT [FK_Dokument_Osoba]
GO


