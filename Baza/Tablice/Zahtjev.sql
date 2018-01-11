USE [FERPI_Datalytics]
GO

/****** Object:  Table [dbo].[Zahtjev]    Script Date: 15.12.2017. 15:30:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Zahtjev](
	[ZahtjevID] [int] NOT NULL,
	[OsobaID] [int] NOT NULL,
	[VrijemeNastanka] [datetime] NOT NULL,
 CONSTRAINT [PK_Zahtjev] PRIMARY KEY CLUSTERED 
(
	[ZahtjevID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Zahtjev]  WITH CHECK ADD  CONSTRAINT [FK_Zahtjev_Osoba] FOREIGN KEY([OsobaID])
REFERENCES [dbo].[Osoba] ([OsobaID])
GO

ALTER TABLE [dbo].[Zahtjev] CHECK CONSTRAINT [FK_Zahtjev_Osoba]
GO


