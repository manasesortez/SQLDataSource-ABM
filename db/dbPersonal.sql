USE [personal]]
GO
/****** Object:  Table [dbo].[tbl_Articulos]    Script Date: 4/4/2022 18:18:12 ******/
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
	[id_User] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Marcas]    Script Date: 4/4/2022 18:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Marcas](
	[id_Marca] [int] IDENTITY(1,1) NOT NULL,
	[nombre_Marca] [varchar](50) NOT NULL,
	[descripcion_Marca] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_rubros]    Script Date: 4/4/2022 18:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_rubros](
	[id_Rubro] [int] IDENTITY(1,1) NOT NULL,
	[mombre_Rubro] [varchar](50) NULL,
	[img_Rubro] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Rubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Usuarios]    Script Date: 4/4/2022 18:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Usuarios](
	[id_User] [int] IDENTITY(1,1) NOT NULL,
	[nombre_User] [varchar](50) NOT NULL,
	[clave_User] [varchar](50) NOT NULL,
	[mail_User] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Articulos]  WITH CHECK ADD FOREIGN KEY([id_Marca])
REFERENCES [dbo].[tbl_Marcas] ([id_Marca])
GO
ALTER TABLE [dbo].[tbl_Articulos]  WITH CHECK ADD FOREIGN KEY([id_Rubro])
REFERENCES [dbo].[tbl_rubros] ([id_Rubro])
GO
ALTER TABLE [dbo].[tbl_Articulos]  WITH CHECK ADD FOREIGN KEY([id_User])
REFERENCES [dbo].[tbl_Usuarios] ([id_User])
GO

/**SELECT PARA RELLENAR EL GRIPVIEW DEL FORM consulta Articulo**/
SELECT tbl_Articulos.descripcion_Articulo AS articulo, 
tbl_Articulos.precio_Articulo AS precio, 
tbl_rubros.mombre_Rubro AS Categoria, 
tbl_Marcas.nombre_Marca AS Marca, 
tbl_Usuarios.nombre_User AS vendedor 
FROM tbl_Articulos
INNER JOIN tbl_rubros ON  tbl_Articulos.id_Rubro = tbl_rubros.id_Rubro 
INNER JOIN tbl_Marcas ON tbl_Articulos.id_Marca = tbl_Marcas.id_Marca 
INNER JOIN tbl_Usuarios ON tbl_Articulos.id_User = tbl_Usuarios.id_User;

GO
