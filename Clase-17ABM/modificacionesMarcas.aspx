<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacionesMarcas.aspx.cs" Inherits="Clase_17ABM.modificacionesMarcas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Modificar Marcas</h1>
        <div>
            <asp:Label ID="lblNotificacionArticulo" runat="server" Text="Notificacion"></asp:Label>
            <br />
            <br />
        </div>
        <div>
            <asp:Label ID="label1" runat="server" Text="Ingrese el codigo de la Marca"></asp:Label>
            <asp:TextBox ID="txtCodigoMarca" runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="btnBuscarMarca" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceMarcas" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" ProviderName="System.Data.SqlClient" UpdateCommand="UPDATE tbl_Marcas SET name_Marca = @name_Marca , descripcion_Marca= @descripcion_Marca WHERE id_Marca = @id_Marca"  SelectCommand="SELECT descripcion_Articulo, precio_Articulo, id_Rubro FROM tbl_Articulos WHERE (id_Articulo = @id_Articulo)">
            <UpdateParameters>
                <asp:Parameter Name="name_Marca" />
                <asp:Parameter Name="descripcion_Marca" />
                <asp:Parameter Name="id_Marca" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Marca"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtnombre_marca" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="descripcion"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtdescripcion_marca" runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Modificar" OnClick="Button1_Click" style="height: 40px" />
        <br />
        <br />
        <asp:Label ID="lblNotificaciones" runat="server" Text="Label"></asp:Label>

        
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>

        
        <br />
        <br />
    </form>
</body>
</html>
