USE [master]
GO
/****** Object:  Database [funeraria]    Script Date: 27/04/2021 12:47:13 a. m. ******/
CREATE DATABASE [funeraria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'funeraria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\funeraria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'funeraria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\funeraria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [funeraria] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [funeraria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [funeraria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [funeraria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [funeraria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [funeraria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [funeraria] SET ARITHABORT OFF 
GO
ALTER DATABASE [funeraria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [funeraria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [funeraria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [funeraria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [funeraria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [funeraria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [funeraria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [funeraria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [funeraria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [funeraria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [funeraria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [funeraria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [funeraria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [funeraria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [funeraria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [funeraria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [funeraria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [funeraria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [funeraria] SET  MULTI_USER 
GO
ALTER DATABASE [funeraria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [funeraria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [funeraria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [funeraria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [funeraria] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [funeraria] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [funeraria] SET QUERY_STORE = OFF
GO
USE [funeraria]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 27/04/2021 12:47:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[idcliente] [tinyint] NOT NULL,
	[nombre] [varchar](50) NULL,
	[domicilio] [varchar](50) NULL,
	[estadocivil] [bit] NULL,
	[hijos] [tinyint] NULL,
	[ingresoMen] [numeric](8, 2) NULL,
	[ingresoAcum] [numeric](8, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paquetes]    Script Date: 27/04/2021 12:47:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paquetes](
	[idpaquete] [tinyint] NOT NULL,
	[nombre] [varchar](15) NULL,
	[descripcion] [varchar](150) NULL,
	[precio] [numeric](8, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idpaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recibos]    Script Date: 27/04/2021 12:47:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recibos](
	[idrecibo] [tinyint] NOT NULL,
	[idcliente] [tinyint] NOT NULL,
	[idpaquete] [tinyint] NOT NULL,
	[enganche] [numeric](8, 2) NULL,
	[mensualidad] [numeric](8, 2) NULL,
	[estatus] [bit] NULL,
	[fecha] [date] NULL,
 CONSTRAINT [PK__recibos__86F5D88CDF965233] PRIMARY KEY CLUSTERED 
(
	[idrecibo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (1, N'ALEXIS BALTAZAR LOPEZ SOBERANES', N'CASAS NUEVAS', 0, 0, CAST(15000.00 AS Numeric(8, 2)), CAST(12000.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (2, N'PRUEBA1', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (3, N'PRUEBA2', N'CONOCIDO', 0, 0, CAST(8000.00 AS Numeric(8, 2)), CAST(6400.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (4, N'PRUEBA3', N'CONOCIDO', 1, 4, CAST(8000.00 AS Numeric(8, 2)), CAST(3200.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (5, N'PRUEBA4', N'CONOCIDO', 1, 1, CAST(9000.00 AS Numeric(8, 2)), CAST(4500.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (6, N'PRUEBA5', N'CONOCIDO', 1, 1, CAST(9000.00 AS Numeric(8, 2)), CAST(4500.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (7, N'PRUEBA6', N'COHNOCIDO', 1, 1, CAST(9000.00 AS Numeric(8, 2)), CAST(4500.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (8, N'PRUEBA7', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (9, N'PRUEBA8', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (10, N'PRUEBA9', N'CONOCIDO', 1, 1, CAST(9000.00 AS Numeric(8, 2)), CAST(4500.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (11, N'PRUEBA10', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (12, N'PRUEBA11', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (13, N'PRUEBA12', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (14, N'PRUEBA13', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (15, N'PRUEBA14', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (16, N'PRUEBA15', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (17, N'PRUEBA16', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (18, N'PRUEBA17', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (19, N'PRUEBA18', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (20, N'PRUEBA19', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (21, N'PRUEBA20', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (22, N'PRUEBA21', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (23, N'PRUEBA22', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (24, N'PRUEBA23', N'CONOCIDO', 1, 2, CAST(5000.00 AS Numeric(8, 2)), CAST(2250.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (25, N'GASPAR RAMIREZ BOJORQUES CHAVEZ ', N'SINALOA DE LEYVA, SINALOA', 0, 0, CAST(9000.00 AS Numeric(8, 2)), CAST(7200.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (26, N'MARIO GUADALUPE CORTEZ', N'SINALOA DE LEYVA, SINALOA', 0, 0, CAST(9000.00 AS Numeric(8, 2)), CAST(7200.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (27, N'PRUEBA24', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (28, N'LOZAIDA GAMEZ', N'CONOCIDO', 1, 2, CAST(9000.00 AS Numeric(8, 2)), CAST(4050.00 AS Numeric(8, 2)))
INSERT [dbo].[clientes] ([idcliente], [nombre], [domicilio], [estadocivil], [hijos], [ingresoMen], [ingresoAcum]) VALUES (29, N'FLAVIO CESAR MORALES', N'CONOCIDO', 1, 3, CAST(9000.00 AS Numeric(8, 2)), CAST(3600.00 AS Numeric(8, 2)))
GO
INSERT [dbo].[paquetes] ([idpaquete], [nombre], [descripcion], [precio]) VALUES (1, N'Economico', N'Ataúd Metálico, Mobiliario para 50 personas, Traslado C-I-P, 4 sirios', CAST(15600.00 AS Numeric(8, 2)))
INSERT [dbo].[paquetes] ([idpaquete], [nombre], [descripcion], [precio]) VALUES (2, N'Estandar', N'Velación en capilla, Flores, Servicio de Cafetería Ilimitado', CAST(28400.00 AS Numeric(8, 2)))
INSERT [dbo].[paquetes] ([idpaquete], [nombre], [descripcion], [precio]) VALUES (3, N'Oro', N'Misa de cuerpo presente, Ataúd de Madera, Sirios Ilimitados', CAST(15600.00 AS Numeric(8, 2)))
INSERT [dbo].[paquetes] ([idpaquete], [nombre], [descripcion], [precio]) VALUES (4, N'Diamante', N'Ataúd es de madera fina o plus (Cedro, Caoba), Cremación', CAST(105200.00 AS Numeric(8, 2)))
GO
INSERT [dbo].[recibos] ([idrecibo], [idcliente], [idpaquete], [enganche], [mensualidad], [estatus], [fecha]) VALUES (1, 1, 1, CAST(1215.00 AS Numeric(8, 2)), CAST(945.00 AS Numeric(8, 2)), 1, CAST(N'2001-01-01' AS Date))
INSERT [dbo].[recibos] ([idrecibo], [idcliente], [idpaquete], [enganche], [mensualidad], [estatus], [fecha]) VALUES (2, 26, 2, CAST(8520.00 AS Numeric(8, 2)), CAST(6626.67 AS Numeric(8, 2)), 1, CAST(N'2021-04-26' AS Date))
INSERT [dbo].[recibos] ([idrecibo], [idcliente], [idpaquete], [enganche], [mensualidad], [estatus], [fecha]) VALUES (3, 27, 2, CAST(8520.00 AS Numeric(8, 2)), CAST(6626.67 AS Numeric(8, 2)), 1, CAST(N'2021-04-27' AS Date))
INSERT [dbo].[recibos] ([idrecibo], [idcliente], [idpaquete], [enganche], [mensualidad], [estatus], [fecha]) VALUES (4, 28, 2, CAST(21300.00 AS Numeric(8, 2)), CAST(2366.67 AS Numeric(8, 2)), 1, CAST(N'2021-04-27' AS Date))
INSERT [dbo].[recibos] ([idrecibo], [idcliente], [idpaquete], [enganche], [mensualidad], [estatus], [fecha]) VALUES (5, 29, 4, CAST(78900.00 AS Numeric(8, 2)), CAST(8766.67 AS Numeric(8, 2)), 1, CAST(N'2021-04-27' AS Date))
GO
ALTER TABLE [dbo].[recibos]  WITH CHECK ADD  CONSTRAINT [FK__recibos__idclien__3A81B327] FOREIGN KEY([idcliente])
REFERENCES [dbo].[clientes] ([idcliente])
GO
ALTER TABLE [dbo].[recibos] CHECK CONSTRAINT [FK__recibos__idclien__3A81B327]
GO
ALTER TABLE [dbo].[recibos]  WITH CHECK ADD  CONSTRAINT [FK__recibos__idpaque__3B75D760] FOREIGN KEY([idpaquete])
REFERENCES [dbo].[paquetes] ([idpaquete])
GO
ALTER TABLE [dbo].[recibos] CHECK CONSTRAINT [FK__recibos__idpaque__3B75D760]
GO
/****** Object:  StoredProcedure [dbo].[fichasdepago]    Script Date: 27/04/2021 12:47:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[fichasdepago]
@idcliente tinyint,
@idpaquete tinyint,
@fecha datetime
as
begin
	select c.nombre as 'CLIENTE', c.domicilio,
	p.nombre as 'PAQUETE',p.descripcion,p.precio, 
	r.enganche, r.mensualidad, r.fecha 
	from recibos r
	join paquetes p on r.idpaquete = p.idpaquete
	join clientes c on r.idcliente = c.idcliente
	where r.idcliente = @idcliente and r.idpaquete = @idpaquete
end
GO
USE [master]
GO
ALTER DATABASE [funeraria] SET  READ_WRITE 
GO
