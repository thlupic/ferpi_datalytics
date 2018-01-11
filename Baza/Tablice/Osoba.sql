USE [FERPI_Datalytics]
GO

/****** Object:  Table [dbo].[Osoba]    Script Date: 15.12.2017. 15:30:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Osoba](
	[OsobaID] [int] NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
	[DatumRodenja] [date] NOT NULL,
	[Adresa] [nvarchar](200) NOT NULL,
	[MjestoID] [int] NOT NULL,
 CONSTRAINT [PK_Osoba_1] PRIMARY KEY CLUSTERED 
(
	[OsobaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Osoba]  WITH CHECK ADD  CONSTRAINT [FK_Osoba_Mjesto] FOREIGN KEY([MjestoID])
REFERENCES [dbo].[Mjesto] ([MjestoID])
GO

ALTER TABLE [dbo].[Osoba] CHECK CONSTRAINT [FK_Osoba_Mjesto]
GO


