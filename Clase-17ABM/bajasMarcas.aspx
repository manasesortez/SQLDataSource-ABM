<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bajasMarcas.aspx.cs" Inherits="Clase_17ABM.bajasMarcas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Bajas Marcas</h1>
        <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Codigo del articulo a eliminar"></asp:Label>
            <asp:TextBox ID="txtElimiMarcas" runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="btnEliminarMarcas" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
        <br />
        <br />
        <asp:Label ID="lblNotificaciones" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server">Regresar</asp:HyperLink>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" DeleteCommand="DELETE FROM tbl_Marcas WHERE id_Marca = @id_Marcas" ProviderName="System.Data.SqlClient" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="id_Marcas" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
