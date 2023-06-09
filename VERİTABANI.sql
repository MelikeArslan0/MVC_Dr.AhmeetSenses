USE [AhmetSensesSite]
GO
/****** Object:  Table [dbo].[Alan]    Script Date: 24.01.2023 17:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Alanadi] [nvarchar](50) NULL,
	[Alanyolu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Alan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoktorBilgileri]    Script Date: 24.01.2023 17:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoktorBilgileri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Meslegi] [nvarchar](50) NULL,
	[Konum] [nvarchar](50) NULL,
	[Resimyolu] [nvarchar](50) NULL,
	[Bilgi] [nvarchar](max) NULL,
	[sosyal1] [nvarchar](max) NULL,
	[sosyal2] [nvarchar](max) NULL,
 CONSTRAINT [PK_DoktorBilgileri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Egitim]    Script Date: 24.01.2023 17:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egitim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Okul] [nvarchar](50) NULL,
	[Alan] [nvarchar](50) NULL,
	[Baslangic] [int] NULL,
	[Bitis] [int] NULL,
 CONSTRAINT [PK_Egitim] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Galeri]    Script Date: 24.01.2023 17:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galeri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[resimyolu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Galeri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hastaliklar]    Script Date: 24.01.2023 17:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hastaliklar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Hastalik] [nvarchar](100) NULL,
 CONSTRAINT [PK_Hastaliklar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hizmetler]    Script Date: 24.01.2023 17:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hizmetler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Hizmet] [nvarchar](max) NULL,
 CONSTRAINT [PK_Hizmetler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Iletisim]    Script Date: 24.01.2023 17:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iletisim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[Acikadres] [nvarchar](max) NULL,
	[Randevuno] [nvarchar](50) NULL,
	[telno] [nvarchar](50) NULL,
	[Adresyolu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Iletisim] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 24.01.2023 17:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kullanici] [nvarchar](50) NULL,
	[sifre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Makaleler]    Script Date: 24.01.2023 17:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Makaleler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Makaleadi] [nvarchar](max) NULL,
	[Makaleyolu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Makaleler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Alan] ON 

INSERT [dbo].[Alan] ([id], [Alanadi], [Alanyolu]) VALUES (1, N'Anasayfa', N'#home')
INSERT [dbo].[Alan] ([id], [Alanadi], [Alanyolu]) VALUES (2, N'İletişim', N'#contact')
INSERT [dbo].[Alan] ([id], [Alanadi], [Alanyolu]) VALUES (3, N'Hizmetler', N'#prices')
INSERT [dbo].[Alan] ([id], [Alanadi], [Alanyolu]) VALUES (4, N'Galeri', N'#gallery')
SET IDENTITY_INSERT [dbo].[Alan] OFF
SET IDENTITY_INSERT [dbo].[DoktorBilgileri] ON 

INSERT [dbo].[DoktorBilgileri] ([id], [Ad], [Meslegi], [Konum], [Resimyolu], [Bilgi], [sosyal1], [sosyal2]) VALUES (1, N'Uzm. Dr. Ahmet Şenses', N'Çocuk ve Ergen PİSİKİYATRİSİ', N'Aydın', N'/img/resimler/resim1.jpg', N'<p><span style="font-family: arial, helvetica, sans-serif; font-size: large;">Ege &Uuml;niversitesi Tıp Fak&uuml;ltesinde okudu. Uzmanlık eğitimini Samsun Ondokuz Mayıs &Uuml;niversitesi''n de tamamladı. 2012-2013 yıllarında Isparta, 2014-2015 yıllarında Aydın Devlet Hastenesi''de g&ouml;rev yaptıktan sonra 2016 yılında itibaren AYDIN''da kendine ait kliniğinde hizmet vermeye devam etmektedir.</span></p>', N'https://www.facebook.com/uzm.dr.ahmetsenses/', N'https://www.instagram.com/ahmetsenses.dr/L')
SET IDENTITY_INSERT [dbo].[DoktorBilgileri] OFF
SET IDENTITY_INSERT [dbo].[Egitim] ON 

INSERT [dbo].[Egitim] ([id], [Okul], [Alan], [Baslangic], [Bitis]) VALUES (1, N'İzmir Ege Üniversitesi Tıp Fakültesi ', N'Tıp Eğitimi', 2001, 2007)
INSERT [dbo].[Egitim] ([id], [Okul], [Alan], [Baslangic], [Bitis]) VALUES (2, N'Samsun Ondokuz Mayıs Üniversitesi Tıp Fakültesi ', N'Uzmanlık Eğitimi', 2007, 2012)
SET IDENTITY_INSERT [dbo].[Egitim] OFF
SET IDENTITY_INSERT [dbo].[Galeri] ON 

INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (1, N'/img/galeri/923ea38b02f89b90ed53ef3a53cfc868_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (2, N'/img/galeri/2d7ecf4eb448b8dcef48f7827d919c97_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (3, N'/img/galeri/1e822a83b10f8d51fb5087f7fa3340a6_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (4, N'/img/galeri/2841f4e78de6fb6a1ee4dae301addabb_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (5, N'/img/galeri/a2946f1b674857204df640b9d045687e_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (6, N'/img/galeri/6c966e64b264be5690c30aac398b3681_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (7, N'/img/galeri/554d96531334c9c39eb5cfd604c109d6_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (8, N'/img/galeri/db3e49d16f4b73aef29b376731a6d2df_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (9, N'/img/galeri/d20858a21b70792dbf2bc2aae350368b_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (10, N'/img/galeri/fee4ef13e0cbff8229bd8c20bc4d401b_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (11, N'/img/galeri/e7eb5de6d0fe65503f08a09219602318_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (12, N'/img/galeri/ae41f4ef93e1a44cd0a7e49e540a59ee_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (13, N'/img/galeri/e770f5af8099a906586ad2acee65b746_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (14, N'/img/galeri/ed2e746972254feb316bd748ab65e471_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (15, N'/img/galeri/718af37cae5c5ca05bb8008faf2dd66c_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (16, N'/img/galeri/4e7a6e684ba25f31321edf348627903c_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (17, N'/img/galeri/cb2a579e9b599b00f4b23c4230700578_large.jpg')
INSERT [dbo].[Galeri] ([id], [resimyolu]) VALUES (19, N'/UploadedFiles/logo1.jpg')
SET IDENTITY_INSERT [dbo].[Galeri] OFF
SET IDENTITY_INSERT [dbo].[Hastaliklar] ON 

INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (1, N'Erken Ergenlik Problemi')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (2, N'Gelişim Bozuklukları')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (3, N'Disleksi')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (4, N'Dikkat Eksikliği ve Hiperaktivite Bozukluğu (DEHB)
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (5, N'Yas (Matem)
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (6, N'Konsantrasyon Bozukluğu
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (7, N'Çocuklarda Tuvalet Eğitimi
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (8, N'Depresyon')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (9, N'Majör Depresif Bozukluk
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (10, N'Sağlam Bebek Takibi (Bebek Psikolojisi)
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (11, N'Hiperaktivite')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (12, N'Uykusuzluk')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (13, N'Kaka Kaçırma
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (14, N'Obsesif-Kompulsif Bozukluk
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (15, N'Tikler')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (16, N'Anne - Baba Ayrılığı
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (17, N'Uyum Bozuklukları
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (18, N'Gelişim Bozuklukları
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (19, N'Öğrenme Güçlükleri
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (20, N'Psikolojik Bozukluk
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (21, N'Stres')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (22, N'Psikiyatrik Bozukluk
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (23, N'Şizofreni')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (24, N'Otizm')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (25, N'Panik Bozukluğu
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (26, N'Bipolar Bozukluk
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (27, N'Atipik Psikoz
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (28, N'Asperger Sendromu
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (29, N'Bipolar Bozukluk
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (30, N'Aile İçi İletişim Sorunları
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (31, N'Sınav Kaygısı
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (32, N'okul zorlukları
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (33, N'Sağlam Bebek Takibi (Bebek Psikolojisi)
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (34, N'Çiş kaçırma (Enürezis)
')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (35, N'Emdr')
INSERT [dbo].[Hastaliklar] ([id], [Hastalik]) VALUES (36, N'Yetişkin Psikoterapisi (Ekibindeki Uzman Psikolog desteği ile)
')
SET IDENTITY_INSERT [dbo].[Hastaliklar] OFF
SET IDENTITY_INSERT [dbo].[Hizmetler] ON 

INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (1, N'Çocuk ve Ergen Psikolojisi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (2, N'EMDR Terapi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (3, N'Moxo Dikkat Ölçme Testi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (4, N'Bebek & Çocuk ve Genç Psikiyatrik (psikolojik) Muayenesi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (5, N'Dikkat Testleri
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (6, N'Dikkat Eksikliği Hiperaktivite Bozukluğu tanı değerlendimesi ve testleri
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (7, N'Bireysel Terapi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (8, N'Cümle Tamamlama Testi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (9, N'Çocuk Depresyon Ölçekleri
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (10, N'Çocuklarda korku, kaygı ve panik atak tedavisi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (11, N'Gençlik (ergenlik) sorunları ve ebeveyn çatışması
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (12, N'Okul alanında uyum ve akademik sorunlar
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (13, N'Otizm tanı ve tedavi danışmanlığı
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (14, N'Çocuk Kaygı Ölçekleri
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (15, N'Otizm Değerlendirme Ölçeği
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (16, N'Denver Gelişim Tarama Testi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (17, N'Bilişsel Davranışçı Terapi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (18, N'Çocuk Gelişim Testi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (19, N'Aile Terapisi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (20, N'Öğrenme Bozukluğu Belirti Tarama Testi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (21, N'Randevu')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (22, N'Konuşma gecikmesi
')
INSERT [dbo].[Hizmetler] ([id], [Hizmet]) VALUES (23, N'Normal randevu
')
SET IDENTITY_INSERT [dbo].[Hizmetler] OFF
SET IDENTITY_INSERT [dbo].[Iletisim] ON 

INSERT [dbo].[Iletisim] ([id], [ad], [Acikadres], [Randevuno], [telno], [Adresyolu]) VALUES (1, N'Ahmet Şenses Muayenehanesi', N'Efeler Mah. İzmir Bulv. No:143 B/Blok. K:1 D:1 Nova Park Sitesi (Vakıfbank Üstü)
09020 Aydın, Aydın', N'+90 850 333 0344', N'+90 507 885 20 90', N'https://goo.gl/maps/21nkWX55BKw3g9Ht5')
SET IDENTITY_INSERT [dbo].[Iletisim] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([id], [kullanici], [sifre]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[Makaleler] ON 

INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (1, N'TATİLİ ÇOCUĞUMUZ İÇİN NASIL PLANLAYALIM ?...', N'https://www.doktortakvimi.com/blog/tatili-cocugumuz-icin-nasil-planlayalim')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (2, N'Çocuğumla Kaliteli Vakit Geçirmekten Anladıklarım', N'https://www.doktortakvimi.com/blog/cocugumla-kaliteli-vakit-gecirmekten-anladiklarim')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (3, N'Çocuğumun Gelişimini Nasıl Doğru Destekleyebilirim ?
', N'https://www.doktortakvimi.com/blog/cocugumun-gelisimini-nasil-dogru-destekleyebilirim')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (4, N'Çocuğum Kaygılandığında Nasıl Tepki Vermeliyim ?
', N'https://www.doktortakvimi.com/blog/cocugum-kaygilandigin-da-nasil-tepki-vermeliyim')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (5, N'Çocuğumla Doğru İletişim Nasıl Kurabilirim?
', N'https://www.doktortakvimi.com/blog/cocugumla-dogru-iletisim-nasil-kurabilirim')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (6, N'Dikkat Eksikliği Hiperaktivite Bozukluğu Hakkında Yanlış Bildiklerimiz..
', N'https://www.doktortakvimi.com/blog/dikkat-eksikligi-hiperaktivite-bozuklugu-hakkinda-yanlis-bildiklerimiz')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (7, N'Dikkat Eksikliği Hiperaktivite Bozukluğu Nedir - 2 ?
', N'https://www.doktortakvimi.com/blog/dikkat-eksikligi-hiperaktivite-bozuklugu-nedir-2')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (8, N'Sınav Kaygısı ve Aile
', N'https://www.doktortakvimi.com/blog/sinav-kaygisi-ve-aile')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (9, N'Çocuğumuzun şiddet olaylarından etkilenmemesi için neler yapmalıyız?
', N'https://www.doktortakvimi.com/blog/cocugumuzun-siddet-olaylarindan-etkilenmemesi-icin-neler-yapmaliyiz')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (10, N'Tatili çocuğumuz için nasıl planlayalım?
', N'https://www.doktortakvimi.com/blog/tatili-cocugumuz-icin-nasil-planlayalim2')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (11, N'Dikkat Eksikliği Hiperaktivite Bozukluğu hakkında yanlış bildiklerimiz..
', N'https://www.doktortakvimi.com/blog/dikkat-eksikligi-hiperaktivite-bozuklugu-hakkinda-yanlis-bildiklerimiz2')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (12, N'Çocuklarım ile nasıl kaliteli zaman geçirebilirim?
', N'https://www.doktortakvimi.com/blog/cocuklarim-ile-nasil-kaliteli-zaman-gecirebilirim')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (13, N'Çocuklarımızı nasıl gerçek kahramanlara dönüştürebiliriz?
', N'https://www.doktortakvimi.com/blog/cocuklarimizi-nasil-gercek-kahramanlara-donusturebiliriz')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (14, N'Çocuğumun gelişimini nasıl doğru destekleyebilirim?
', N'https://www.doktortakvimi.com/blog/cocugumun-gelisimini-nasil-dogru-destekleyebilirim2')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (15, N'Sınav kaygısı nasıl oluşur?
', N'https://www.doktortakvimi.com/blog/sinav-kaygisi-nasil-olusur')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (16, N'Çocuğum kaygılandığında nasıl tepki vermeliyim?
', N'https://www.doktortakvimi.com/blog/cocugum-kaygilandiginda-nasil-tepki-vermeliyim')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (17, N'Çocuklarımızı anlamanın yolu…
', N'https://www.doktortakvimi.com/blog/cocuklarimizi-anlamanin-yolu')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (18, N'Çocuğum ile iletişim kurarken nelere dikkat etmeliyim?
', N'https://www.doktortakvimi.com/blog/cocugum-ile-iletisim-kurarken-nelere-dikkat-etmeliyim')
INSERT [dbo].[Makaleler] ([id], [Makaleadi], [Makaleyolu]) VALUES (19, N'Araba bozulur, insan hasta olur…
', N'https://www.doktortakvimi.com/blog/araba-bozulur-insan-hasta-olur')
SET IDENTITY_INSERT [dbo].[Makaleler] OFF
