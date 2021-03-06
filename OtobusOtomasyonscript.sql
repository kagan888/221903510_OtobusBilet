USE [OtobusOtomasyon]
GO
/****** Object:  Table [dbo].[Markalar]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Markalar](
	[MarkaID] [int] IDENTITY(1,1) NOT NULL,
	[MarkaAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Markalar] PRIMARY KEY CLUSTERED 
(
	[MarkaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasrafTipleri]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasrafTipleri](
	[MasrafTipID] [int] IDENTITY(1,1) NOT NULL,
	[MasrafTipAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MasrafTipleri] PRIMARY KEY CLUSTERED 
(
	[MasrafTipID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalisanTipleri]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalisanTipleri](
	[CalisanTipID] [int] IDENTITY(1,1) NOT NULL,
	[CalisanTipAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CalisanTipleri] PRIMARY KEY CLUSTERED 
(
	[CalisanTipID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ayarlar]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ayarlar](
	[AyarID] [int] IDENTITY(1,1) NOT NULL,
	[Anahtar] [nvarchar](50) NOT NULL,
	[Deger] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ayarlar] PRIMARY KEY CLUSTERED 
(
	[AyarID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hatalar]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hatalar](
	[HataID] [int] IDENTITY(1,1) NOT NULL,
	[Numara] [nvarchar](6) NOT NULL,
	[Mesaj] [nvarchar](1000) NOT NULL,
	[Zamani] [datetime] NOT NULL,
	[Procedure] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Hatalar] PRIMARY KEY CLUSTERED 
(
	[HataID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sehirler]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sehirler](
	[SehirID] [int] IDENTITY(1,1) NOT NULL,
	[SehirAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sehirler] PRIMARY KEY CLUSTERED 
(
	[SehirID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SehirGuncelle]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SehirGuncelle]
(@SehirAdi nvarchar(50),@SehirID int)
as
Update Sehirler set SehirAdi=@SehirAdi where SehirID=@SehirID
GO
/****** Object:  StoredProcedure [dbo].[SehirEkle]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SehirEkle]
(@SehirAdi nvarchar(50))
as
Insert Into Sehirler (SehirAdi)values(@SehirAdi)
GO
/****** Object:  StoredProcedure [dbo].[SehirDetay]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SehirDetay]
(@SehirID int)
as
Select * from Sehirler where SehirID=@SehirID
GO
/****** Object:  Table [dbo].[Subeler]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subeler](
	[SubeID] [int] IDENTITY(1,1) NOT NULL,
	[SehirID] [int] NOT NULL,
	[SubeAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subeler] PRIMARY KEY CLUSTERED 
(
	[SubeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](60) NOT NULL,
	[Telefon] [nvarchar](10) NOT NULL,
	[Cinsiyet] [bit] NOT NULL,
	[DogumTarihi] [datetime] NOT NULL,
	[SehirID] [int] NOT NULL,
	[Adres] [nvarchar](200) NOT NULL,
	[KartNumarasi] [nvarchar](16) NOT NULL,
	[KartTeslimDurumu] [bit] NOT NULL,
	[MevcutPara] [money] NOT NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[HataEkle]    Script Date: 06/05/2021 11:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[HataEkle]
(
@Numara nvarchar(6),
@Mesaj nvarchar(1000),
@Zamani datetime ,
@Procedure nvarchar(100) 
)
as
begin 
Insert Into Hatalar (Numara,Mesaj,Zamani,[Procedure]) values(@Numara,@Mesaj,@Zamani,@Procedure)
end
GO
/****** Object:  StoredProcedure [dbo].[CalisanTipSil]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CalisanTipSil]
(
@CalisanTipID int
)
as
begin
Delete From CalisanTipleri where 
CalisanTipID=@CalisanTipID
end
GO
/****** Object:  StoredProcedure [dbo].[CalisanTipListesi]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CalisanTipListesi]

as
begin
Select * From CalisanTipleri 
end
GO
/****** Object:  StoredProcedure [dbo].[MasrafTipSil]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MasrafTipSil]
(@MasrafTipID int
)
as
begin
Delete From MasrafTipleri where MasrafTipID=@MasrafTipID
end
GO
/****** Object:  StoredProcedure [dbo].[MasrafTipListesi]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MasrafTipListesi]
as
begin
Select * From MasrafTipleri end
GO
/****** Object:  StoredProcedure [dbo].[CalisanTipGuncelle]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CalisanTipGuncelle]
(
@CalisanTipID int ,
@CalisanTipAdi nvarchar(50)
)
as
begin
Update CalisanTipleri set CalisanTipAdi=@CalisanTipAdi where 
CalisanTipID=@CalisanTipID
end
GO
/****** Object:  StoredProcedure [dbo].[CalisanTipEkle]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CalisanTipEkle]
(
@CalisanTipAdi nvarchar(50)
)
as
begin
Insert Into CalisanTipleri (CalisanTipAdi)values (@CalisanTipAdi)
end
GO
/****** Object:  StoredProcedure [dbo].[CalisanTipDetay]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CalisanTipDetay]
(
@CalisanTipID int
)
as
begin
Select * From CalisanTipleri where 
CalisanTipID=@CalisanTipID
end
GO
/****** Object:  StoredProcedure [dbo].[MasrafTipGuncelle]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MasrafTipGuncelle]
(@MasrafTipID int,
@MasrafTipAdi nvarchar(50))
as
begin
Update MasrafTipleri set MasrafTipAdi=@MasrafTipAdi where MasrafTipID=@MasrafTipID
end
GO
/****** Object:  StoredProcedure [dbo].[MasrafTipEkle]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MasrafTipEkle]
(@MasrafTipAdi nvarchar(50))
as
begin
Insert Into MasrafTipleri (MasrafTipAdi)values (@MasrafTipAdi)
 end
GO
/****** Object:  StoredProcedure [dbo].[MasrafTipDetay]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MasrafTipDetay]
(@MasrafTipID int
)
as
begin
Select * From MasrafTipleri where MasrafTipID=@MasrafTipID
end
GO
/****** Object:  StoredProcedure [dbo].[MarkaSil]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MarkaSil]
(@MarkaID int
)
as
begin 
Delete from Markalar where MarkaID=@MarkaID
end
GO
/****** Object:  StoredProcedure [dbo].[MarkaListesi]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MarkaListesi]
as
begin 
Select  * from Markalar 
end
GO
/****** Object:  StoredProcedure [dbo].[MarkaGuncelle]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MarkaGuncelle]
(@MarkaID int,
@MarkaAdi nvarchar(50))
as
begin 
Update Markalar set MarkaAdi=@MarkaAdi where MarkaID=@MarkaID
end
GO
/****** Object:  StoredProcedure [dbo].[MarkaEkle]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MarkaEkle]
(@MarkaAdi nvarchar(50))
as
begin 
Insert Into  Markalar (MarkaAdi)values(@MarkaAdi)
end
GO
/****** Object:  StoredProcedure [dbo].[MarkaDetay]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MarkaDetay]
(@MarkaID int
)
as
begin 
Select  * from Markalar where MarkaID=@MarkaID
end
GO
/****** Object:  Table [dbo].[Otobusler]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otobusler](
	[OtobusID] [int] IDENTITY(1,1) NOT NULL,
	[Plaka] [nvarchar](10) NOT NULL,
	[KoltukSayisi] [tinyint] NOT NULL,
	[MarkaID] [int] NOT NULL,
	[AktifMi] [bit] NULL,
 CONSTRAINT [PK_Otobusler] PRIMARY KEY CLUSTERED 
(
	[OtobusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SehirSil]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SehirSil]
(@SehirID int)
as
Delete from Sehirler where SehirID=@SehirID
GO
/****** Object:  StoredProcedure [dbo].[SehirListesi]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SehirListesi]
as
Select * from Sehirler
GO
/****** Object:  StoredProcedure [dbo].[SubeSil]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SubeSil]
(@SubeID int)
as
Delete from Subeler where SubeID =@SubeID
GO
/****** Object:  StoredProcedure [dbo].[SubeListesi]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SubeListesi]
as
Select * from Subeler
GO
/****** Object:  StoredProcedure [dbo].[OtobusSil]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[OtobusSil]
(@OtobusID int
)
as
begin
Delete from Otobusler where OtobusID=@OtobusID
end
GO
/****** Object:  StoredProcedure [dbo].[OtobusGuncelle]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[OtobusGuncelle]
(@OtobusID int,
@Plaka nvarchar(10),
@KoltukSayisi tinyint,
@MarkaID int ,
@AktifMi bit
)
as
begin
Update Otobusler set Plaka=@Plaka,KoltukSayisi=@KoltukSayisi,
MarkaID=@MarkaID,AktifMi=@AktifMi where OtobusID=@OtobusID
end
GO
/****** Object:  StoredProcedure [dbo].[OtobusEkle]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[OtobusEkle]
(@Plaka nvarchar(10),
@KoltukSayisi tinyint,
@MarkaID int ,
@AktifMi bit
)
as
begin
Insert Into Otobusler (Plaka,KoltukSayisi,MarkaID,AktifMi) values(@Plaka,@KoltukSayisi,@MarkaID,@AktifMi)
end
GO
/****** Object:  StoredProcedure [dbo].[OtobusDetay]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[OtobusDetay]
(@OtobusID int
)
as
begin
Select * from Otobusler where OtobusID=@OtobusID
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriSil]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MusteriSil]
(
@MusteriID int)
as
begin 
Delete From Musteriler where 
MusteriID=@MusteriID
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriListesi]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MusteriListesi]
as
begin 
Select * From Musteriler 
end
GO
/****** Object:  StoredProcedure [dbo].[KartNoyaGoreMusteriBilgi]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KartNoyaGoreMusteriBilgi]
(
@KartNumarasi nvarchar(16)
)
as
begin 
Select MusteriID,Ad,SoyAd,Cinsiyet,MevcutPara from Musteriler where KartNumarasi=@KartNumarasi
end
GO
/****** Object:  Table [dbo].[Calisanlar]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calisanlar](
	[PersonelID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](60) NOT NULL,
	[Telefon] [nvarchar](10) NOT NULL,
	[SubeID] [int] NOT NULL,
	[EvAdresi] [nvarchar](200) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
	[CalisanTipID] [int] NOT NULL,
	[Yoneticimi] [bit] NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Calisanlar] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[OtobusListesi]    Script Date: 06/05/2021 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[OtobusListesi]
as
begin
Select * from Otobusler 
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriGuncelle]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MusteriGuncelle]
(
@MusteriID int,
@Ad nvarchar(50),
@Soyad nvarchar(50),
@Email nvarchar(60),
@Telefon nvarchar(10),
@Cinsiyet bit,
@DogumTarihi datetime ,
@SehirID int,
@Adres nvarchar(200),
@KartNumarasi nvarchar(16),
@KartTeslimDurumu bit,
@MevcutPara money  
)
as
begin 
Update Musteriler set Ad =@Ad,Soyad=@Soyad,Email=@Email,
Telefon =@Telefon,Cinsiyet=@Cinsiyet,DogumTarihi=@DogumTarihi,
SehirID=@SehirID,Adres=@Adres,KartNumarasi=@KartNumarasi,KartTeslimDurumu=@KartTeslimDurumu,MevcutPara=@MevcutPara where 
MusteriID=@MusteriID
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriEkle]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MusteriEkle]
(
@Ad nvarchar(50),
@Soyad nvarchar(50),
@Email nvarchar(60),
@Telefon nvarchar(10),
@Cinsiyet bit,
@DogumTarihi datetime ,
@SehirID int,
@Adres nvarchar(200),
@KartNumarasi nvarchar(16),
@KartTeslimDurumu bit,
@MevcutPara money  
)
as
begin 
Insert Into  Musteriler (Ad,Soyad,Email,Telefon,Cinsiyet,DogumTarihi,SehirID,Adres,KartNumarasi,KartTeslimDurumu,MevcutPara) values(@Ad,@Soyad,@Email,@Telefon,@Cinsiyet,@DogumTarihi,@SehirID,@Adres,@KartNumarasi,@KartTeslimDurumu,@MevcutPara)
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriDetay]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MusteriDetay]
(
@MusteriID int)
as
begin 
Select * From Musteriler where 
MusteriID=@MusteriID
end
GO
/****** Object:  StoredProcedure [dbo].[SubeGuncelle]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SubeGuncelle]
(@SubeID int,@SehirID int,@SubeAdi nvarchar(50))
as
Update Subeler set SubeAdi=@SubeAdi,SehirID=@SehirID where SubeID =@SubeID
GO
/****** Object:  StoredProcedure [dbo].[SubeEkle]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SubeEkle]
(
@SubeAdi nvarchar(50),
@SehirID int
)
as 
begin

Insert Into Subeler(SubeAdi,SehirID ) values (@SubeAdi,@SehirID )
end
GO
/****** Object:  StoredProcedure [dbo].[SubeDetay]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SubeDetay]
(@SubeID int)
as
Select * from Subeler where SubeID=@SubeID
GO
/****** Object:  StoredProcedure [dbo].[SubeAra]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SubeAra]
(
@SubeAdi nvarchar(50)
)
as
begin
Select Subeler.SubeID,Subeler.SehirID,Subeler.SubeAdi,Sehirler.SehirAdi from Subeler inner join Sehirler on Subeler.SehirID=Sehirler.SehirID Where Subeler.SubeAdi like @SubeAdi+'%'
end
GO
/****** Object:  Table [dbo].[Seferler]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seferler](
	[SeferID] [int] IDENTITY(1,1) NOT NULL,
	[KalkisSehirID] [int] NOT NULL,
	[VarisSehirID] [int] NOT NULL,
	[OtobusID] [int] NOT NULL,
	[SoforID] [int] NOT NULL,
	[MuavinID] [int] NOT NULL,
	[KalkisZamani] [datetime] NOT NULL,
	[VarisZamani] [datetime] NULL,
	[TahminiSure] [tinyint] NOT NULL,
	[BiletTutari] [money] NOT NULL,
 CONSTRAINT [PK_Seferler] PRIMARY KEY CLUSTERED 
(
	[SeferID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonelGirisCikis]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonelGirisCikis](
	[PersonelIslemID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelID] [int] NOT NULL,
	[IslemZamani] [datetime] NULL,
	[IslemTipi] [bit] NOT NULL,
 CONSTRAINT [PK_PersonelGirisCikis] PRIMARY KEY CLUSTERED 
(
	[PersonelIslemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[CalisanGuncelle]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CalisanGuncelle]
(
@PersonelID int,
@Ad nvarchar(50),
@Soyad nvarchar(50),
@Email nvarchar(60),
@Telefon nvarchar(10),
@SubeID int,
@EvAdresi nvarchar(200),
@KullaniciAdi nvarchar(50),
@CalisanTipID int ,
@Yoneticimi bit,
@Sifre nvarchar(50)
)
as
Update Calisanlar set Ad=@Ad,Soyad=@Soyad,Email=@Email,Telefon=@Telefon,SubeID=@SubeID,EvAdresi=@EvAdresi,KullaniciAdi=@KullaniciAdi,CalisanTipID=@CalisanTipID,Yoneticimi=@Yoneticimi,
Sifre=@Sifre Where PersonelID =@PersonelID
GO
/****** Object:  StoredProcedure [dbo].[CalisanGiris]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CalisanGiris]
(
@KullaniciAdi nvarchar(15),
@Sifre nvarchar(20)
)
as
Select  PersonelID,Yoneticimi,SubeID,CalisanTipID from  Calisanlar
where KullaniciAdi=@KullaniciAdi and Sifre=@Sifre
GO
/****** Object:  StoredProcedure [dbo].[CalisanEkle]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CalisanEkle]
(
@Ad nvarchar(50),
@Soyad nvarchar(50),
@Email nvarchar(60),
@Telefon nvarchar(10),
@SubeID int,
@EvAdresi nvarchar(200),
@KullaniciAdi nvarchar(50),
@CalisanTipID int ,
@Yoneticimi bit,
@Sifre nvarchar(50)
)
as
Insert Into  Calisanlar (Ad,Soyad,Email,Telefon,SubeID,
EvAdresi,KullaniciAdi,CalisanTipID,Yoneticimi,Sifre) values(@Ad,@Soyad,@Email,@Telefon,@SubeID,
@EvAdresi,@KullaniciAdi,@CalisanTipID,@Yoneticimi,@Sifre)
GO
/****** Object:  StoredProcedure [dbo].[CalisanDetay]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CalisanDetay]
(
@PersonelID int
)
as
Select * From Calisanlar where PersonelID=@PersonelID
GO
/****** Object:  StoredProcedure [dbo].[CalisanSil]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CalisanSil]
(
@PersonelID int
)
as
Delete From Calisanlar where PersonelID=@PersonelID
GO
/****** Object:  StoredProcedure [dbo].[CalisanListesi]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CalisanListesi]

as
Select * From Calisanlar
GO
/****** Object:  Table [dbo].[Biletler]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Biletler](
	[IslemYapanPersonelID] [int] NOT NULL,
	[YolcuID] [int] NULL,
	[SeferID] [int] NOT NULL,
	[IslemZamani] [datetime] NULL,
	[SatismiRezervasyonMu] [bit] NOT NULL,
	[KoltukNo] [tinyint] NOT NULL,
	[YolcuCinsiyet] [bit] NOT NULL,
	[Yolcuad] [nvarchar](50) NOT NULL,
	[YolcuSoyad] [nvarchar](50) NOT NULL,
	[SatisTip] [bit] NOT NULL,
	[Ucret] [money] NOT NULL,
 CONSTRAINT [PK_Biletler] PRIMARY KEY CLUSTERED 
(
	[SeferID] ASC,
	[KoltukNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[MevcutSeferler]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MevcutSeferler]
(
@KalkisSehirID int,
@VarisSehirID int,
@Tarih datetime
)
as
begin 
Select CONVERT(nvarchar,DATEPART(hh,Seferler.KalkisZamani))+':'+CONVERT(nvarchar,DATEPART(mi,Seferler.KalkisZamani)) as Saat ,Otobusler.Plaka,Seferler.BiletTutari,Seferler.SeferID,Otobusler.KoltukSayisi , Markalar.MarkaAdi from Seferler inner join Otobusler on Seferler.OtobusID=Otobusler.OtobusID inner Join Markalar on Otobusler.MarkaID=Markalar.MarkaID  where Seferler.KalkisSehirID=@KalkisSehirID and Seferler.VarisSehirID=@VarisSehirID and (DATEPART(D,Seferler.KalkisZamani)=DATEPART(d,@Tarih) and DATEPART(M,Seferler.KalkisZamani)=DATEPART(M,@Tarih)) order by 
Seferler.KalkisZamani
end
GO
/****** Object:  StoredProcedure [dbo].[PersonelGirisCikisSil]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[PersonelGirisCikisSil]
(
@PersonelIslemID int)
as
begin
Delete from PersonelGirisCikis where PersonelIslemID=@PersonelIslemID 
end
GO
/****** Object:  StoredProcedure [dbo].[PersonelGirisCikisListesi]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PersonelGirisCikisListesi]
as begin
Select * from PersonelGirisCikis
 end
GO
/****** Object:  StoredProcedure [dbo].[PersonelGirisCikisGuncelle]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PersonelGirisCikisGuncelle]
(
@PersonelIslemID int,
@PersonelID int,
@IslemZamani datetime,
@IslemTipi bit
)
as
begin 
Update PersonelGirisCikis set PersonelID =@PersonelID,
IslemZamani=@IslemZamani,IslemTipi=@IslemTipi where PersonelIslemID=@PersonelIslemID
end
GO
/****** Object:  StoredProcedure [dbo].[PersonelGirisCikisEkle]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PersonelGirisCikisEkle]
(@PersonelID int,
@IslemTipi bit
)
as
Insert Into PersonelGirisCikis (PersonelID,IslemTipi) values(@PersonelID,@IslemTipi)
GO
/****** Object:  StoredProcedure [dbo].[PersonelAra]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PersonelAra]
(@PersonelID int)
as begin
Select * from PersonelGirisCikis where PersonelID=@PersonelID
 end
GO
/****** Object:  Table [dbo].[OtobusMasraflar]    Script Date: 06/05/2021 11:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtobusMasraflar](
	[OtobusMasrafID] [int] IDENTITY(1,1) NOT NULL,
	[OtobusID] [int] NOT NULL,
	[MasrafTipID] [int] NOT NULL,
	[Tutar] [money] NOT NULL,
	[MasrafYapanPersonelID] [int] NOT NULL,
	[SeferID] [int] NOT NULL,
 CONSTRAINT [PK_OtobusMasraflar] PRIMARY KEY CLUSTERED 
(
	[OtobusMasrafID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SeferSil]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SeferSil]
(
@SeferID int
)
as
Delete from Seferler Where SeferID=@SeferID
GO
/****** Object:  StoredProcedure [dbo].[SeferListesi]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SeferListesi]

as
Select * from Seferler
GO
/****** Object:  StoredProcedure [dbo].[SeferListeBirlestirDetay]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SeferListeBirlestirDetay]
as
begin
Select s.SeferID, s.KalkisSehirID,e.SehirAdi as KalkisSehri,s.VarisSehirID,h.SehirAdi as VarisSehri,o.OtobusID,o.Plaka,c.Ad+''+c.Soyad as SoforAdi,a.Ad+''+a.Soyad as MuavinAdi,
case 
when s.VarisZamani is NULL
then 'Belirtilmedi'
else 
CONVERT(nvarchar(20),s.VarisZamani,104) 
end as VarisZamani,Convert(nvarchar(20),s.KalkisZamani,104) as KalkisZamani,s.BiletTutari,s.TahminiSure
--COUNT(b.SeferID) as SatisiYapilanBiletSayisi
 from Seferler s 
 Inner Join Calisanlar c on c.PersonelID=s.SoforID 
 Inner Join Calisanlar a on a.PersonelID=s.MuavinID 
 Inner join Sehirler e on s.KalkisSehirID=e.SehirID
 Inner join Sehirler h on s.VarisSehirID=h.SehirID
 --Inner Join Biletler b on b.SeferID=s.SeferID
 Inner Join Otobusler o on s.OtobusID=o.OtobusID
  Group By  s.SeferID,s.KalkisSehirID,s.VarisSehirID,c.Ad+''+c.Soyad,a.Ad+''+a.Soyad,h.SehirAdi,e.SehirAdi,s.VarisZamani,s.BiletTutari,s.KalkisZamani,o.OtobusID,o.Plaka,s.TahminiSure
 end
GO
/****** Object:  StoredProcedure [dbo].[SeferListeAraGetir]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SeferListeAraGetir]
(@KalkisSehirID int,@VarisSehirID int)
as
begin
Select s.SeferID, s.KalkisSehirID,e.SehirAdi as KalkisSehri,s.VarisSehirID,h.SehirAdi as VarisSehri,o.OtobusID,o.Plaka,c.Ad+''+c.Soyad as SoforAdi,a.Ad+''+a.Soyad as MuavinAdi,
case 
when s.VarisZamani is NULL
then 'Belirtilmedi'
else 
CONVERT(nvarchar(20),s.VarisZamani,104) 
end as VarisZamani,Convert(nvarchar(20),s.KalkisZamani,104) as KalkisZamani,s.BiletTutari,s.TahminiSure
--COUNT(b.SeferID) as SatisiYapilanBiletSayisi
 from Seferler s 
 Inner Join Calisanlar c on c.PersonelID=s.SoforID 
 Inner Join Calisanlar a on a.PersonelID=s.MuavinID 
 Inner join Sehirler e on s.KalkisSehirID=e.SehirID
 Inner join Sehirler h on s.VarisSehirID=h.SehirID
 --Inner Join Biletler b on b.SeferID=s.SeferID
 Inner Join Otobusler o on s.OtobusID=o.OtobusID
  Group By  s.SeferID,s.KalkisSehirID,s.VarisSehirID,c.Ad+''+c.Soyad,a.Ad+''+a.Soyad,h.SehirAdi,e.SehirAdi,s.VarisZamani,s.BiletTutari,s.KalkisZamani,o.OtobusID,o.Plaka,s.TahminiSure 
  having s.KalkisSehirID=@KalkisSehirID  and s.VarisSehirID=@VarisSehirID
  end
GO
/****** Object:  StoredProcedure [dbo].[SeferGuncelle]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SeferGuncelle]
(
@SeferID int,
@KalkisSehirID int,
@VarisSehirID int,
@OtobusID int,
@SoforID int,
@MuavinID int,
@KalkisZamani datetime ,
@VarisZamani datetime,
@TahminiSure tinyint,
@BiletTutari money
)
as
Update Seferler set KalkisSehirID=@KalkisSehirID,VarisSehirID=@VarisSehirID,OtobusID=@OtobusID,SoforID=@SoforID,MuavinID=@MuavinID ,KalkisZamani=@KalkisZamani,VarisZamani=@VarisZamani,
TahminiSure=@TahminiSure,BiletTutari=@BiletTutari where SeferID=@SeferID
GO
/****** Object:  StoredProcedure [dbo].[SeferEkle]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SeferEkle]
(
@KalkisSehirID int,
@VarisSehirID int,
@OtobusID int,
@MuavinID int,
@SoforID int,
@KalkisZamani datetime,
@VarisZamani datetime,
@TahminiSure tinyint,
@BiletTutari money 
)
as
 Insert Into Seferler(KalkisSehirID,VarisSehirID,OtobusID,MuavinID,SoforID,KalkisZamani,VarisZamani,TahminiSure,BiletTutari) values(@KalkisSehirID,@VarisSehirID,@OtobusID,@MuavinID,@SoforID,@KalkisZamani,@VarisZamani,@TahminiSure,@BiletTutari)
GO
/****** Object:  StoredProcedure [dbo].[SeferDetay]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SeferDetay]
(
@SeferID int
)
as
Select * from Seferler Where SeferID=@SeferID
GO
/****** Object:  StoredProcedure [dbo].[SatisIptal]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SatisIptal]
(
@SeferID int,
@KoltukNo tinyint 
)
as
Delete from Biletler where SeferID=@SeferID and KoltukNo=@KoltukNo
GO
/****** Object:  StoredProcedure [dbo].[RezervasyonSatisaCevir]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[RezervasyonSatisaCevir]
(
@SeferID int,
@KoltukNo tinyint
)
as
Update Biletler set SatisMiRezervasyonMu=0 
where SeferID=@SeferID and KoltukNo=@KoltukNo
GO
/****** Object:  StoredProcedure [dbo].[OtobusMasrafSil]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[OtobusMasrafSil]
(
@OtobusMasrafID int
)
as
Delete from OtobusMasraflar Where OtobusMasrafID=@OtobusMasrafID
GO
/****** Object:  StoredProcedure [dbo].[OtobusMasrafListesi]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[OtobusMasrafListesi]
as
select * from OtobusMasraflar
GO
/****** Object:  StoredProcedure [dbo].[SefereGoreKoltukNumaralari]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SefereGoreKoltukNumaralari]
(
@SeferID int 
)
as
begin 
Select SeferID,KoltukNo,YolcuCinsiyet,SatisMiRezervasyonMu from Biletler where SeferID=@SeferID
end
GO
/****** Object:  StoredProcedure [dbo].[OtobusMasrafGuncelle]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[OtobusMasrafGuncelle]
(
@OtobusMasrafID int,
@OtobusID int,
@MasrafTipID int,
@Tutar money ,
@MasrafYapanPersonelID int,
@SeferID int
)
as
Update OtobusMasraflar set OtobusID=@OtobusID,MasrafTipID=@MasrafTipID,Tutar=@Tutar,MasrafYapanPersonelID=@MasrafYapanPersonelID, SeferID=@SeferID where OtobusMasrafID =@OtobusMasrafID
GO
/****** Object:  StoredProcedure [dbo].[OtobusMasrafEkle]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[OtobusMasrafEkle]
(
@OtobusID int,
@MasrafTipID int,
@Tutar money ,
@MasrafYapanPersonelID int,
@SeferID int
)
as
Insert Into OtobusMasraflar (OtobusID,MasrafTipID,Tutar,MasrafYapanPersonelID,SeferID) values(@OtobusID,@MasrafTipID,@Tutar,@MasrafYapanPersonelID,@SeferID)
GO
/****** Object:  StoredProcedure [dbo].[OtobusMasrafDetay]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[OtobusMasrafDetay]
(
@OtobusMasrafID int
)
as
Select * from OtobusMasraflar Where OtobusMasrafID=@OtobusMasrafID
GO
/****** Object:  StoredProcedure [dbo].[BiletGuncelle]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[BiletGuncelle]
(
@IslemYapanPersonelID int,
@YolcuID int,
@SeferID int ,
@IslemZamani datetime,
@SatismiRezervasyonMu bit,
@KoltukNo tinyint,
@YolcuCinsiyet bit,
@YolcuAd nvarchar(50),
@YolcuSoyad nvarchar(50),
@SatisTip bit,
@Ucret money 
)
as
begin 
Update Biletler set IslemYapanPersonelID=@IslemYapanPersonelID,
IslemZamani=@IslemZamani,SatismiRezervasyonMu=@SatismiRezervasyonMu,YolcuCinsiyet=@YolcuCinsiyet,Yolcuad=@YolcuAd,YolcuSoyad=@YolcuSoyad,SatisTip=@SatisTip,Ucret=@Ucret
where YolcuID=@YolcuID and SeferID=@SeferID and KoltukNo=@KoltukNo
end
GO
/****** Object:  StoredProcedure [dbo].[BiletEkle]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[BiletEkle]
(
@IslemYapanPersonelID int,
@YolcuID int,
@SeferID int ,
@IslemZamani datetime,
@SatismiRezervasyonMu bit,
@KoltukNo tinyint,
@YolcuCinsiyet bit,
@YolcuAd nvarchar(50),
@YolcuSoyad nvarchar(50),
@SatisTip bit,
@Ucret money 
)
as
begin 
Insert Into Biletler  (IslemYapanPersonelID,YolcuID,SeferID,IslemZamani,SatismiRezervasyonMu,KoltukNo,YolcuCinsiyet,Yolcuad,YolcuSoyad,SatisTip,Ucret) values (@IslemYapanPersonelID,@YolcuID,@SeferID,@IslemZamani,@SatismiRezervasyonMu,@KoltukNo,@YolcuCinsiyet,@Yolcuad,@YolcuSoyad,@SatisTip,@Ucret) 
end
GO
/****** Object:  StoredProcedure [dbo].[BiletDetay]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[BiletDetay]
(
@SeferID int ,
@KoltukNo tinyint
)
as
begin 
Select *from Biletler where SeferID=@SeferID and KoltukNo=@KoltukNo
end
GO
/****** Object:  StoredProcedure [dbo].[BiletCikis]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[BiletCikis]
(@Yolcuad nvarchar(50))
as
begin 
Select b.Yolcuad,e.SehirAdi as KalkisSehri ,h.SehirAdi as VarisSehri,c.Yolcuad+''+c.YolcuSoyad as YolcuAdiSoyAdi, 
case 
when 
s.VarisZamani is null
then 'Belirtilmedi'
else
Convert(nvarchar(20),s.VarisZamani,104) end as
VarisZamani,Convert(nvarchar(20),s.KalkisZamani,104) as KalkisZamani,s.BiletTutari,Count(b.SeferID) as SatisiYapilanBiletSayisi 
from Seferler s inner join Biletler c on c.SeferID=s.SeferID inner join Sehirler e on s.KalkisSehirID=e.SehirID
inner join Sehirler h on s.VarisSehirID=h.SehirID
inner join Biletler b on b.SeferID=s.SeferID
 Group by b.YolcuAd,s.SeferID,c.Yolcuad+''+c.YolcuSoyad,h.SehirAdi,e.SehirAdi,s.VarisZamani,s.BiletTutari,s.KalkisZamani
 having b.YolcuAd=@Yolcuad
end
GO
/****** Object:  StoredProcedure [dbo].[BiletSil]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BiletSil]
(
@SeferID int ,
@KoltukNo tinyint
)
as
begin 
Delete from Biletler where  SeferID=@SeferID and KoltukNo=@KoltukNo
end
GO
/****** Object:  StoredProcedure [dbo].[BiletListesi]    Script Date: 06/05/2021 11:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[BiletListesi]
as
begin 
Select *from Biletler
end
GO
/****** Object:  Default [DF_Hatalar_Zamani]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Hatalar] ADD  CONSTRAINT [DF_Hatalar_Zamani]  DEFAULT (getdate()) FOR [Zamani]
GO
/****** Object:  Default [DF_PersonelGirisCikis_IslemZamani]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[PersonelGirisCikis] ADD  CONSTRAINT [DF_PersonelGirisCikis_IslemZamani]  DEFAULT (getdate()) FOR [IslemZamani]
GO
/****** Object:  ForeignKey [FK_Biletler_Calisanlar1]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Biletler]  WITH CHECK ADD  CONSTRAINT [FK_Biletler_Calisanlar1] FOREIGN KEY([IslemYapanPersonelID])
REFERENCES [dbo].[Calisanlar] ([PersonelID])
GO
ALTER TABLE [dbo].[Biletler] CHECK CONSTRAINT [FK_Biletler_Calisanlar1]
GO
/****** Object:  ForeignKey [FK_Biletler_Musteriler]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Biletler]  WITH NOCHECK ADD  CONSTRAINT [FK_Biletler_Musteriler] FOREIGN KEY([YolcuID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[Biletler] NOCHECK CONSTRAINT [FK_Biletler_Musteriler]
GO
/****** Object:  ForeignKey [FK_Biletler_Seferler]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Biletler]  WITH CHECK ADD  CONSTRAINT [FK_Biletler_Seferler] FOREIGN KEY([SeferID])
REFERENCES [dbo].[Seferler] ([SeferID])
GO
ALTER TABLE [dbo].[Biletler] CHECK CONSTRAINT [FK_Biletler_Seferler]
GO
/****** Object:  ForeignKey [FK_Calisanlar_CalisanTipleri]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Calisanlar]  WITH CHECK ADD  CONSTRAINT [FK_Calisanlar_CalisanTipleri] FOREIGN KEY([CalisanTipID])
REFERENCES [dbo].[CalisanTipleri] ([CalisanTipID])
GO
ALTER TABLE [dbo].[Calisanlar] CHECK CONSTRAINT [FK_Calisanlar_CalisanTipleri]
GO
/****** Object:  ForeignKey [FK_Calisanlar_Subeler]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Calisanlar]  WITH CHECK ADD  CONSTRAINT [FK_Calisanlar_Subeler] FOREIGN KEY([SubeID])
REFERENCES [dbo].[Subeler] ([SubeID])
GO
ALTER TABLE [dbo].[Calisanlar] CHECK CONSTRAINT [FK_Calisanlar_Subeler]
GO
/****** Object:  ForeignKey [FK_Musteriler_Sehirler]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_Musteriler_Sehirler] FOREIGN KEY([SehirID])
REFERENCES [dbo].[Sehirler] ([SehirID])
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [FK_Musteriler_Sehirler]
GO
/****** Object:  ForeignKey [FK_Otobusler_Markalar]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Otobusler]  WITH CHECK ADD  CONSTRAINT [FK_Otobusler_Markalar] FOREIGN KEY([MarkaID])
REFERENCES [dbo].[Markalar] ([MarkaID])
GO
ALTER TABLE [dbo].[Otobusler] CHECK CONSTRAINT [FK_Otobusler_Markalar]
GO
/****** Object:  ForeignKey [FK_OtobusMasraflar_MasrafTipleri]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[OtobusMasraflar]  WITH CHECK ADD  CONSTRAINT [FK_OtobusMasraflar_MasrafTipleri] FOREIGN KEY([MasrafTipID])
REFERENCES [dbo].[MasrafTipleri] ([MasrafTipID])
GO
ALTER TABLE [dbo].[OtobusMasraflar] CHECK CONSTRAINT [FK_OtobusMasraflar_MasrafTipleri]
GO
/****** Object:  ForeignKey [FK_OtobusMasraflar_Otobusler]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[OtobusMasraflar]  WITH CHECK ADD  CONSTRAINT [FK_OtobusMasraflar_Otobusler] FOREIGN KEY([OtobusID])
REFERENCES [dbo].[Otobusler] ([OtobusID])
GO
ALTER TABLE [dbo].[OtobusMasraflar] CHECK CONSTRAINT [FK_OtobusMasraflar_Otobusler]
GO
/****** Object:  ForeignKey [FK_OtobusMasraflar_Seferler]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[OtobusMasraflar]  WITH CHECK ADD  CONSTRAINT [FK_OtobusMasraflar_Seferler] FOREIGN KEY([SeferID])
REFERENCES [dbo].[Seferler] ([SeferID])
GO
ALTER TABLE [dbo].[OtobusMasraflar] CHECK CONSTRAINT [FK_OtobusMasraflar_Seferler]
GO
/****** Object:  ForeignKey [FK_PersonelGirisCikis_Calisanlar]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[PersonelGirisCikis]  WITH CHECK ADD  CONSTRAINT [FK_PersonelGirisCikis_Calisanlar] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Calisanlar] ([PersonelID])
GO
ALTER TABLE [dbo].[PersonelGirisCikis] CHECK CONSTRAINT [FK_PersonelGirisCikis_Calisanlar]
GO
/****** Object:  ForeignKey [FK_Seferler_Calisanlar]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Seferler]  WITH CHECK ADD  CONSTRAINT [FK_Seferler_Calisanlar] FOREIGN KEY([SoforID])
REFERENCES [dbo].[Calisanlar] ([PersonelID])
GO
ALTER TABLE [dbo].[Seferler] CHECK CONSTRAINT [FK_Seferler_Calisanlar]
GO
/****** Object:  ForeignKey [FK_Seferler_Calisanlar1]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Seferler]  WITH CHECK ADD  CONSTRAINT [FK_Seferler_Calisanlar1] FOREIGN KEY([MuavinID])
REFERENCES [dbo].[Calisanlar] ([PersonelID])
GO
ALTER TABLE [dbo].[Seferler] CHECK CONSTRAINT [FK_Seferler_Calisanlar1]
GO
/****** Object:  ForeignKey [FK_Seferler_Otobusler]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Seferler]  WITH CHECK ADD  CONSTRAINT [FK_Seferler_Otobusler] FOREIGN KEY([OtobusID])
REFERENCES [dbo].[Otobusler] ([OtobusID])
GO
ALTER TABLE [dbo].[Seferler] CHECK CONSTRAINT [FK_Seferler_Otobusler]
GO
/****** Object:  ForeignKey [FK_Seferler_Sehirler]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Seferler]  WITH CHECK ADD  CONSTRAINT [FK_Seferler_Sehirler] FOREIGN KEY([KalkisSehirID])
REFERENCES [dbo].[Sehirler] ([SehirID])
GO
ALTER TABLE [dbo].[Seferler] CHECK CONSTRAINT [FK_Seferler_Sehirler]
GO
/****** Object:  ForeignKey [FK_Seferler_Sehirler1]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Seferler]  WITH CHECK ADD  CONSTRAINT [FK_Seferler_Sehirler1] FOREIGN KEY([VarisSehirID])
REFERENCES [dbo].[Sehirler] ([SehirID])
GO
ALTER TABLE [dbo].[Seferler] CHECK CONSTRAINT [FK_Seferler_Sehirler1]
GO
/****** Object:  ForeignKey [FK_Subeler_Sehirler]    Script Date: 06/05/2021 11:27:09 ******/
ALTER TABLE [dbo].[Subeler]  WITH CHECK ADD  CONSTRAINT [FK_Subeler_Sehirler] FOREIGN KEY([SehirID])
REFERENCES [dbo].[Sehirler] ([SehirID])
GO
ALTER TABLE [dbo].[Subeler] CHECK CONSTRAINT [FK_Subeler_Sehirler]
GO
