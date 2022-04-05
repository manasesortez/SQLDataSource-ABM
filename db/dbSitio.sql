USE [Personal]
GO
/****** Object:  Table [dbo].[tbl_Articulos]    Script Date: 4/4/2022 15:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Articulos](
	[id_Articulo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion_Articulo] [varchar](50) NOT NULL,
	[precio_Articulo] [float] NULL,
	[id_Rubro] [int] NULL,
	[id_Marca] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Marcas]    Script Date: 4/4/2022 15:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Marcas](
	[id_Marca] [int] IDENTITY(1,1) NOT NULL,
	[nombre_Marca] [varchar](1) NOT NULL,
	[descripcion_Marca] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_rubros]    Script Date: 4/4/2022 15:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_rubros](
	[id_Rubro] [int] IDENTITY(1,1) NOT NULL,
	[mombre_Rubro] [varchar](50) NULL,
	[img_Rubro] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Rubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Usuarios]    Script Date: 4/4/2022 15:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Usuarios](
	[nombre_User] [varchar](50) NOT NULL,
	[clave_User] [varchar](50) NOT NULL,
	[mail_User] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nombre_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Articulos]  WITH CHECK ADD FOREIGN KEY([id_Marca])
REFERENCES [dbo].[tbl_Marcas] ([id_Marca])
GO
ALTER TABLE [dbo].[tbl_Articulos]  WITH CHECK ADD FOREIGN KEY([id_Rubro])
REFERENCES [dbo].[tbl_rubros] ([id_Rubro])
GO
