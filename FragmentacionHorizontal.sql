USE [master]
GO
/****** Object:  Database [jardineria]    Script Date: 12/12/2024 22:46:03 ******/
CREATE DATABASE [jardineria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'jardineria', FILENAME = N'D:\MSSQL15.MSSQLSERVER\MSSQL\DATA\jardineria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'jardineria_log', FILENAME = N'D:\MSSQL15.MSSQLSERVER\MSSQL\DATA\jardineria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [jardineria] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [jardineria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [jardineria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [jardineria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [jardineria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [jardineria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [jardineria] SET ARITHABORT OFF 
GO
ALTER DATABASE [jardineria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [jardineria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [jardineria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [jardineria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [jardineria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [jardineria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [jardineria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [jardineria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [jardineria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [jardineria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [jardineria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [jardineria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [jardineria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [jardineria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [jardineria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [jardineria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [jardineria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [jardineria] SET RECOVERY FULL 
GO
ALTER DATABASE [jardineria] SET  MULTI_USER 
GO
ALTER DATABASE [jardineria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [jardineria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [jardineria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [jardineria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [jardineria] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [jardineria] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'jardineria', N'ON'
GO
ALTER DATABASE [jardineria] SET QUERY_STORE = OFF
GO
USE [jardineria]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 12/12/2024 22:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[codigo_cliente] [int] NOT NULL,
	[nombre_cliente] [varchar](50) NOT NULL,
	[nombre_contacto] [varchar](30) NULL,
	[apellido_contacto] [varchar](30) NULL,
	[telefono] [varchar](15) NOT NULL,
	[fax] [varchar](15) NOT NULL,
	[linea_direccion1] [varchar](50) NOT NULL,
	[linea_direccion2] [varchar](50) NULL,
	[ciudad] [varchar](50) NOT NULL,
	[region] [varchar](50) NULL,
	[pais] [varchar](50) NULL,
	[codigo_postal] [varchar](10) NULL,
	[codigo_empleado_rep_ventas] [int] NULL,
	[limite_credito] [numeric](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente_F1]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente_F1](
	[codigo_cliente] [int] NOT NULL,
	[nombre_cliente] [varchar](50) NOT NULL,
	[nombre_contacto] [varchar](30) NULL,
	[apellido_contacto] [varchar](30) NULL,
	[telefono] [varchar](15) NOT NULL,
	[fax] [varchar](15) NOT NULL,
	[linea_direccion1] [varchar](50) NOT NULL,
	[linea_direccion2] [varchar](50) NULL,
	[ciudad] [varchar](50) NOT NULL,
	[region] [varchar](50) NULL,
	[pais] [varchar](50) NULL,
	[codigo_postal] [varchar](10) NULL,
	[codigo_empleado_rep_ventas] [int] NULL,
	[limite_credito] [numeric](15, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente_F2]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente_F2](
	[codigo_cliente] [int] NOT NULL,
	[nombre_cliente] [varchar](50) NOT NULL,
	[nombre_contacto] [varchar](30) NULL,
	[apellido_contacto] [varchar](30) NULL,
	[telefono] [varchar](15) NOT NULL,
	[fax] [varchar](15) NOT NULL,
	[linea_direccion1] [varchar](50) NOT NULL,
	[linea_direccion2] [varchar](50) NULL,
	[ciudad] [varchar](50) NOT NULL,
	[region] [varchar](50) NULL,
	[pais] [varchar](50) NULL,
	[codigo_postal] [varchar](10) NULL,
	[codigo_empleado_rep_ventas] [int] NULL,
	[limite_credito] [numeric](15, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_pedido]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_pedido](
	[codigo_pedido] [int] NOT NULL,
	[codigo_producto] [varchar](15) NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unidad] [numeric](15, 2) NOT NULL,
	[numero_linea] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_pedido] ASC,
	[codigo_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[codigo_empleado] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido1] [varchar](50) NOT NULL,
	[apellido2] [varchar](50) NULL,
	[extension] [varchar](10) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[codigo_oficina] [varchar](10) NOT NULL,
	[codigo_jefe] [int] NULL,
	[puesto] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado_F1]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado_F1](
	[codigo_empleado] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido1] [varchar](50) NOT NULL,
	[apellido2] [varchar](50) NULL,
	[extension] [varchar](10) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[codigo_oficina] [varchar](10) NOT NULL,
	[codigo_jefe] [int] NULL,
	[puesto] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado_F2]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado_F2](
	[codigo_empleado] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido1] [varchar](50) NOT NULL,
	[apellido2] [varchar](50) NULL,
	[extension] [varchar](10) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[codigo_oficina] [varchar](10) NOT NULL,
	[codigo_jefe] [int] NULL,
	[puesto] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gama_producto]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gama_producto](
	[gama] [varchar](50) NOT NULL,
	[descripcion_texto] [text] NULL,
	[descripcion_html] [text] NULL,
	[imagen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[gama] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oficina]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oficina](
	[codigo_oficina] [varchar](10) NOT NULL,
	[ciudad] [varchar](30) NOT NULL,
	[pais] [varchar](50) NOT NULL,
	[region] [varchar](50) NULL,
	[codigo_postal] [varchar](10) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
	[linea_direccion1] [varchar](50) NOT NULL,
	[linea_direccion2] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_oficina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pago](
	[codigo_cliente] [int] NOT NULL,
	[forma_pago] [varchar](40) NOT NULL,
	[id_transaccion] [varchar](50) NOT NULL,
	[fecha_pago] [date] NOT NULL,
	[total] [numeric](15, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_cliente] ASC,
	[id_transaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[codigo_pedido] [int] NOT NULL,
	[fecha_pedido] [date] NOT NULL,
	[fecha_esperada] [date] NOT NULL,
	[fecha_entrega] [date] NULL,
	[estado] [varchar](15) NOT NULL,
	[comentarios] [text] NULL,
	[codigo_cliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[codigo_producto] [varchar](15) NOT NULL,
	[nombre] [varchar](70) NOT NULL,
	[gama] [varchar](50) NOT NULL,
	[dimensiones] [varchar](25) NULL,
	[proveedor] [varchar](50) NULL,
	[descripcion] [text] NULL,
	[cantidad_en_stock] [smallint] NOT NULL,
	[precio_venta] [numeric](15, 2) NOT NULL,
	[precio_proveedor] [numeric](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_Aromaticas]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_Aromaticas](
	[codigo_producto] [varchar](15) NOT NULL,
	[nombre] [varchar](70) NOT NULL,
	[gama] [varchar](50) NOT NULL,
	[dimensiones] [varchar](25) NULL,
	[proveedor] [varchar](50) NULL,
	[descripcion] [text] NULL,
	[cantidad_en_stock] [smallint] NOT NULL,
	[precio_venta] [numeric](15, 2) NOT NULL,
	[precio_proveedor] [numeric](15, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_Frutales]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_Frutales](
	[codigo_producto] [varchar](15) NOT NULL,
	[nombre] [varchar](70) NOT NULL,
	[gama] [varchar](50) NOT NULL,
	[dimensiones] [varchar](25) NULL,
	[proveedor] [varchar](50) NULL,
	[descripcion] [text] NULL,
	[cantidad_en_stock] [smallint] NOT NULL,
	[precio_venta] [numeric](15, 2) NOT NULL,
	[precio_proveedor] [numeric](15, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_herramientas]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_herramientas](
	[codigo_producto] [varchar](15) NOT NULL,
	[nombre] [varchar](70) NOT NULL,
	[gama] [varchar](50) NOT NULL,
	[dimensiones] [varchar](25) NULL,
	[proveedor] [varchar](50) NULL,
	[descripcion] [text] NULL,
	[cantidad_en_stock] [smallint] NOT NULL,
	[precio_venta] [numeric](15, 2) NOT NULL,
	[precio_proveedor] [numeric](15, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_Ornamentales]    Script Date: 12/12/2024 22:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_Ornamentales](
	[codigo_producto] [varchar](15) NOT NULL,
	[nombre] [varchar](70) NOT NULL,
	[gama] [varchar](50) NOT NULL,
	[dimensiones] [varchar](25) NULL,
	[proveedor] [varchar](50) NULL,
	[descripcion] [text] NULL,
	[cantidad_en_stock] [smallint] NOT NULL,
	[precio_venta] [numeric](15, 2) NOT NULL,
	[precio_proveedor] [numeric](15, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [nombre_contacto]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [apellido_contacto]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [linea_direccion2]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [region]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [pais]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [codigo_postal]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [codigo_empleado_rep_ventas]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [limite_credito]
GO
ALTER TABLE [dbo].[empleado] ADD  DEFAULT (NULL) FOR [apellido2]
GO
ALTER TABLE [dbo].[empleado] ADD  DEFAULT (NULL) FOR [codigo_jefe]
GO
ALTER TABLE [dbo].[empleado] ADD  DEFAULT (NULL) FOR [puesto]
GO
ALTER TABLE [dbo].[oficina] ADD  DEFAULT (NULL) FOR [region]
GO
ALTER TABLE [dbo].[oficina] ADD  DEFAULT (NULL) FOR [linea_direccion2]
GO
ALTER TABLE [dbo].[pedido] ADD  DEFAULT (NULL) FOR [fecha_entrega]
GO
ALTER TABLE [dbo].[producto] ADD  DEFAULT (NULL) FOR [proveedor]
GO
ALTER TABLE [dbo].[producto] ADD  DEFAULT (NULL) FOR [precio_proveedor]
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([codigo_empleado_rep_ventas])
REFERENCES [dbo].[empleado] ([codigo_empleado])
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD FOREIGN KEY([codigo_pedido])
REFERENCES [dbo].[pedido] ([codigo_pedido])
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD FOREIGN KEY([codigo_producto])
REFERENCES [dbo].[producto] ([codigo_producto])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([codigo_oficina])
REFERENCES [dbo].[oficina] ([codigo_oficina])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([codigo_jefe])
REFERENCES [dbo].[empleado] ([codigo_empleado])
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD FOREIGN KEY([codigo_cliente])
REFERENCES [dbo].[cliente] ([codigo_cliente])
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD FOREIGN KEY([codigo_cliente])
REFERENCES [dbo].[cliente] ([codigo_cliente])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([gama])
REFERENCES [dbo].[gama_producto] ([gama])
GO
USE [master]
GO
ALTER DATABASE [jardineria] SET  READ_WRITE 
GO
