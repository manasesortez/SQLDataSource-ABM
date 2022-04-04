<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacionArticulos.aspx.cs" Inherits="Clase_17ABM.modificacionArticulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Modificar Articulos</h1>
        <div>
            <asp:Label ID="lblNotificacionArticulo" runat="server" Text="Notificacion"></asp:Label>
            <br />
            <br />
        </div>
        <div>
            <asp:Label ID="label1" runat="server" Text="Ingrese el codigo del Articulo"></asp:Label>
            <asp:TextBox ID="txtCodigoArticulo" runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceArticulo" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" ProviderName="System.Data.SqlClient" UpdateCommand="UPDATE tbl_Articulos SET descripcion_Articulo = @descripcion_Articulo, precio_Articulo = @precio_Articulo,  id_Rubro = @id_Rubro WHERE id_Articulo = @id_Articulo" OnSelecting="SqlDataSourceArticulo_Selecting" SelectCommand="SELECT descripcion_Articulo, precio_Articulo, id_Rubro FROM tbl_Articulos WHERE (id_Articulo = @id_Articulo)">
            <SelectParameters>
                <asp:Parameter Name="id_Articulo" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="descripcion_Articulo" />
                <asp:Parameter Name="precio_Articulo" />
                <asp:Parameter Name="id_Rubro" />
                <asp:Parameter Name="id_Articulo" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Descripcion"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtDescripcion_ar" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="Precio"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtPrecio_ar" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label4" runat="server" Text="Rubro"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownList_ar" runat="server" DataSourceID="SqlDataSourceRubros" DataTextField="mombre_Rubro" DataValueField="id_Rubro"></asp:DropDownList>
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Modificar" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="lblNotificaciones" runat="server" Text="Label"></asp:Label>

        
        <br />
        <asp:SqlDataSource ID="SqlDataSourceRubros" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" OnSelecting="SqlDataSourceRubros_Selecting" ProviderName="System.Data.SqlClient" SelectCommand="SELECT id_rubro, mombre_Rubro FROM tbl_rubros"></asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>

        
        <br />
        <br />
    </form>
</body>
</html>
