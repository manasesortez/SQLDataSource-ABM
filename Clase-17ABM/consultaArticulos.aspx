<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaArticulos.aspx.cs" Inherits="Clase_17ABM.consultaArticulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Consulta de Articulos</h1>
        <br />
        <div>
            <asp:Label ID="txtCodigo" runat="server" Text="Ingrese Codigo Articulo"></asp:Label>
            <asp:TextBox ID="txtCodigoArticulo" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
        </div>
        <br />
        <asp:Label ID="lblNotificaciones" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" ProviderName="System.Data.SqlClient" SelectCommand="SELECT ar.descripcion_Articulos AS descriArticulo, ar.precio_Articulo, ru.nombre_Rubro AS descriRubro FROM tbl_Articulos AS ar INNER JOIN tbl_rubros AS ru ON ru.id_Rubro WHERE (ar.id_aArticulo = @id_Articulo)">
            <SelectParameters>
                <asp:Parameter Name="id_Articulo" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
