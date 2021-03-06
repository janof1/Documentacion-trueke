USE [master]
GO
/****** Object:  Database [trueke]    Script Date: 10/05/2021 11:44:22 ******/
CREATE DATABASE [trueke]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'trueke', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\trueke.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'trueke_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\trueke_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [trueke] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [trueke].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [trueke] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [trueke] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [trueke] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [trueke] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [trueke] SET ARITHABORT OFF 
GO
ALTER DATABASE [trueke] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [trueke] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [trueke] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [trueke] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [trueke] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [trueke] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [trueke] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [trueke] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [trueke] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [trueke] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [trueke] SET  DISABLE_BROKER 
GO
ALTER DATABASE [trueke] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [trueke] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [trueke] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [trueke] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [trueke] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [trueke] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [trueke] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [trueke] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [trueke] SET  MULTI_USER 
GO
ALTER DATABASE [trueke] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [trueke] SET DB_CHAINING OFF 
GO
ALTER DATABASE [trueke] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [trueke] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [trueke]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categoria](
	[id_categoria] [int] NOT NULL,
	[nombre_categoria] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chat]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chat](
	[id_chat] [int] IDENTITY(1,1) NOT NULL,
	[mensaje] [varchar](max) NOT NULL,
	[id_usuario_emisor] [int] NOT NULL,
	[id_usuaro_receptor] [int] NOT NULL,
	[fecha_chat] [datetime] NOT NULL,
 CONSTRAINT [PK_chat] PRIMARY KEY CLUSTERED 
(
	[id_chat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clase]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clase](
	[id] [int] NOT NULL,
	[nombre_clase] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[id_subcategoria] [int] NOT NULL,
 CONSTRAINT [PK_clases] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comuna]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[comuna](
	[comuna_id] [int] NOT NULL,
	[comuna_nombre] [varchar](64) NOT NULL,
	[provincia_id] [int] NOT NULL,
 CONSTRAINT [PK_comuna] PRIMARY KEY CLUSTERED 
(
	[comuna_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[denuncia]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[denuncia](
	[id_denuncia] [int] NOT NULL,
	[descripcion] [varchar](200) NOT NULL,
	[id_usuario_denuncia] [int] NOT NULL,
	[id_usuario_denunciado] [int] NOT NULL,
	[id_publicacion_denunciada] [int] NOT NULL,
 CONSTRAINT [PK_denuncia] PRIMARY KEY CLUSTERED 
(
	[id_denuncia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[estado]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estado](
	[id_estado] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_estado] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[menu_opciones]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[menu_opciones](
	[id_menu_padre] [int] NOT NULL,
	[descripcion] [varchar](80) NOT NULL,
	[id_parent_menu_hijo] [int] NOT NULL,
	[url] [varchar](80) NOT NULL,
	[id_unico] [bigint] IDENTITY(1,1) NOT NULL,
	[activo] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[movimientos_trueke]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[movimientos_trueke](
	[id_movimiento] [int] NOT NULL,
	[documento] [int] NOT NULL,
	[codigo_movimiento] [char](3) NOT NULL,
	[descripcion_movimiento] [char](100) NOT NULL,
	[monto] [int] NOT NULL,
	[fecha_movimiento] [datetime] NOT NULL,
	[coins] [int] NOT NULL,
	[coins_regalo] [int] NOT NULL,
	[tipmov] [char](1) NOT NULL,
 CONSTRAINT [PK_movimientos_trueke] PRIMARY KEY CLUSTERED 
(
	[id_movimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pagina]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pagina](
	[id_pagina] [int] NOT NULL,
	[contenido] [text] NULL,
	[nombre] [varchar](30) NULL,
	[descripcion] [varchar](80) NULL,
	[fecha_registro] [datetime] NULL,
	[fecha_actualizacion] [datetime] NULL,
	[id_usuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pagina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[provincia](
	[provincia_id] [int] NOT NULL,
	[provincia_nombre] [varchar](64) NOT NULL,
	[region_id] [int] NOT NULL,
 CONSTRAINT [PK_provincia] PRIMARY KEY CLUSTERED 
(
	[provincia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[publicacion]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[publicacion](
	[id_publicacion] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_region] [int] NOT NULL,
	[id_estado] [int] NOT NULL,
	[id_clase] [int] NOT NULL,
	[titulo] [varchar](100) NOT NULL,
	[descripcion] [varchar](max) NOT NULL,
	[fecha_publicacion] [datetime] NOT NULL,
	[fecha_trueke] [datetime] NOT NULL,
	[trueke_realizado] [int] NOT NULL,
	[trueke_observacion] [varchar](max) NOT NULL,
	[usuario_trueke] [int] NOT NULL,
	[imagen1] [varchar](max) NOT NULL,
	[imagen2] [varchar](max) NOT NULL,
	[imagen3] [varchar](max) NOT NULL,
	[imagen4] [varchar](max) NOT NULL,
	[imagen5] [varchar](max) NOT NULL,
 CONSTRAINT [PK_publicacion] PRIMARY KEY CLUSTERED 
(
	[id_publicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[recarga]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recarga](
	[id_recarga] [int] NOT NULL,
	[id_usuario_recarga] [int] NOT NULL,
	[monto_recarga_moneda] [int] NOT NULL,
	[monto_recarga_truekes] [int] NOT NULL,
	[fecha_recarga] [datetime] NOT NULL,
 CONSTRAINT [PK_recarga] PRIMARY KEY CLUSTERED 
(
	[id_recarga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[region]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[region](
	[region_id] [int] NOT NULL,
	[region_nombre] [varchar](64) NOT NULL,
	[region_ordinal] [varchar](4) NOT NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rol]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rol](
	[id_rol] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sub_categoria]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sub_categoria](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[id_categoria] [int] NOT NULL,
 CONSTRAINT [PK_sub_categoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trueke]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trueke](
	[id_trueke] [int] NOT NULL,
	[id_publicacion] [int] NOT NULL,
	[fecha_trueke] [datetime] NOT NULL,
	[usuario_trueke] [int] NOT NULL,
 CONSTRAINT [PK_trueke] PRIMARY KEY CLUSTERED 
(
	[id_trueke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuario]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[id_comuna] [int] NOT NULL,
	[id_rol] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[apellidos] [varchar](100) NOT NULL,
	[rut] [varchar](10) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[telefono] [varchar](15) NOT NULL,
	[correo] [varchar](100) NOT NULL,
	[clave] [varchar](100) NOT NULL,
	[verificado] [char](1) NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[fecha_actualizacion] [datetime] NOT NULL,
	[truekecoins] [int] NOT NULL,
	[activo] [smallint] NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[categoria_sub_categoria_clase]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[categoria_sub_categoria_clase]
AS
SELECT        dbo.categorias.nombre_categoria AS Categoria, dbo.sub_categoria.nombre AS Sub_Categoria, dbo.clases.nombre_clase AS Clase
FROM            dbo.categorias INNER JOIN
                         dbo.sub_categoria ON dbo.categorias.id_categoria = dbo.sub_categoria.id_categoria INNER JOIN
                         dbo.clases ON dbo.sub_categoria.id = dbo.clases.id_subcategoria

GO
/****** Object:  View [dbo].[region_provincia_comuna]    Script Date: 10/05/2021 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[region_provincia_comuna]
AS
SELECT        dbo.regiones.region_ordinal, dbo.regiones.region_nombre, dbo.provincias.provincia_nombre, dbo.comunas.comuna_nombre
FROM            dbo.regiones INNER JOIN
                         dbo.provincias ON dbo.regiones.region_id = dbo.provincias.region_id INNER JOIN
                         dbo.comunas ON dbo.provincias.provincia_id = dbo.comunas.provincia_id

GO
ALTER TABLE [dbo].[menu_opciones] ADD  CONSTRAINT [DF_Menu_Options_activo]  DEFAULT ((0)) FOR [activo]
GO
ALTER TABLE [dbo].[recarga] ADD  CONSTRAINT [DF_Table_1_monto_recarga]  DEFAULT ((0)) FOR [monto_recarga_moneda]
GO
ALTER TABLE [dbo].[recarga] ADD  CONSTRAINT [DF_recarga_fecha_recarga]  DEFAULT (getdate()) FOR [fecha_recarga]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF_usuario_fecha_creacion]  DEFAULT (getdate()) FOR [fecha_creacion]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF_usuario_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[chat]  WITH CHECK ADD  CONSTRAINT [FK_chat_usuario] FOREIGN KEY([id_usuario_emisor])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[chat] CHECK CONSTRAINT [FK_chat_usuario]
GO
ALTER TABLE [dbo].[chat]  WITH CHECK ADD  CONSTRAINT [FK_chat_usuario1] FOREIGN KEY([id_usuaro_receptor])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[chat] CHECK CONSTRAINT [FK_chat_usuario1]
GO
ALTER TABLE [dbo].[clase]  WITH CHECK ADD  CONSTRAINT [FK_clases_sub_categorias] FOREIGN KEY([id_subcategoria])
REFERENCES [dbo].[sub_categoria] ([id])
GO
ALTER TABLE [dbo].[clase] CHECK CONSTRAINT [FK_clases_sub_categorias]
GO
ALTER TABLE [dbo].[comuna]  WITH CHECK ADD  CONSTRAINT [FK_comunas_provincias] FOREIGN KEY([provincia_id])
REFERENCES [dbo].[provincia] ([provincia_id])
GO
ALTER TABLE [dbo].[comuna] CHECK CONSTRAINT [FK_comunas_provincias]
GO
ALTER TABLE [dbo].[denuncia]  WITH CHECK ADD  CONSTRAINT [FK_denuncia_publicacion] FOREIGN KEY([id_publicacion_denunciada])
REFERENCES [dbo].[publicacion] ([id_publicacion])
GO
ALTER TABLE [dbo].[denuncia] CHECK CONSTRAINT [FK_denuncia_publicacion]
GO
ALTER TABLE [dbo].[denuncia]  WITH CHECK ADD  CONSTRAINT [FK_denuncia_usuario] FOREIGN KEY([id_usuario_denuncia])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[denuncia] CHECK CONSTRAINT [FK_denuncia_usuario]
GO
ALTER TABLE [dbo].[denuncia]  WITH CHECK ADD  CONSTRAINT [FK_denuncia_usuario1] FOREIGN KEY([id_usuario_denunciado])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[denuncia] CHECK CONSTRAINT [FK_denuncia_usuario1]
GO
ALTER TABLE [dbo].[pagina]  WITH CHECK ADD  CONSTRAINT [FK__pagina__id_usuar__2EDAF651] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[pagina] CHECK CONSTRAINT [FK__pagina__id_usuar__2EDAF651]
GO
ALTER TABLE [dbo].[provincia]  WITH CHECK ADD  CONSTRAINT [FK_provincias_regiones] FOREIGN KEY([region_id])
REFERENCES [dbo].[region] ([region_id])
GO
ALTER TABLE [dbo].[provincia] CHECK CONSTRAINT [FK_provincias_regiones]
GO
ALTER TABLE [dbo].[publicacion]  WITH CHECK ADD  CONSTRAINT [FK_publicacion_clase] FOREIGN KEY([id_clase])
REFERENCES [dbo].[clase] ([id])
GO
ALTER TABLE [dbo].[publicacion] CHECK CONSTRAINT [FK_publicacion_clase]
GO
ALTER TABLE [dbo].[publicacion]  WITH CHECK ADD  CONSTRAINT [FK_publicacion_estado] FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado] ([id_estado])
GO
ALTER TABLE [dbo].[publicacion] CHECK CONSTRAINT [FK_publicacion_estado]
GO
ALTER TABLE [dbo].[publicacion]  WITH CHECK ADD  CONSTRAINT [FK_publicacion_region] FOREIGN KEY([id_region])
REFERENCES [dbo].[region] ([region_id])
GO
ALTER TABLE [dbo].[publicacion] CHECK CONSTRAINT [FK_publicacion_region]
GO
ALTER TABLE [dbo].[publicacion]  WITH CHECK ADD  CONSTRAINT [FK_publicacion_trueke] FOREIGN KEY([trueke_realizado])
REFERENCES [dbo].[trueke] ([id_trueke])
GO
ALTER TABLE [dbo].[publicacion] CHECK CONSTRAINT [FK_publicacion_trueke]
GO
ALTER TABLE [dbo].[publicacion]  WITH CHECK ADD  CONSTRAINT [FK_publicacion_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[publicacion] CHECK CONSTRAINT [FK_publicacion_usuario]
GO
ALTER TABLE [dbo].[recarga]  WITH CHECK ADD  CONSTRAINT [FK_recarga_usuario] FOREIGN KEY([id_usuario_recarga])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[recarga] CHECK CONSTRAINT [FK_recarga_usuario]
GO
ALTER TABLE [dbo].[sub_categoria]  WITH CHECK ADD  CONSTRAINT [FK_sub_categoria_categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[sub_categoria] CHECK CONSTRAINT [FK_sub_categoria_categoria]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_comuna] FOREIGN KEY([id_comuna])
REFERENCES [dbo].[comuna] ([comuna_id])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_comuna]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[rol] ([id_rol])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_rol]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fecha del movimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movimientos_trueke', @level2type=N'COLUMN',@level2name=N'fecha_movimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'+ o -' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movimientos_trueke', @level2type=N'COLUMN',@level2name=N'tipmov'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'usuario que publica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'publicacion', @level2type=N'CONSTRAINT',@level2name=N'FK_publicacion_usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "categorias"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sub_categoria"
            Begin Extent = 
               Top = 5
               Left = 327
               Bottom = 135
               Right = 535
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "clases"
            Begin Extent = 
               Top = 12
               Left = 616
               Bottom = 142
               Right = 824
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'categoria_sub_categoria_clase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'categoria_sub_categoria_clase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "regiones"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "provincias"
            Begin Extent = 
               Top = 10
               Left = 389
               Bottom = 123
               Right = 597
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "comunas"
            Begin Extent = 
               Top = 66
               Left = 660
               Bottom = 179
               Right = 868
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'region_provincia_comuna'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'region_provincia_comuna'
GO
USE [master]
GO
ALTER DATABASE [trueke] SET  READ_WRITE 
GO
