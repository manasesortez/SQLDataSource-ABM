<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altasMarcas.aspx.cs" Inherits="Clase_17ABM.altasMarcas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Altas de Marcas</h1>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Marca"></asp:Label>
            <asp:TextBox ID="txtnombreMarca" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Descripcion"></asp:Label>
            <asp:TextBox ID="txtdescripcionMarca" runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="lblNotificaciones" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>

        <asp:SqlDataSource ID="SqlDataSourceMarcas" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" InsertCommand="INSERT INTO tbl_Marcas(id_Marca, nombre_Marca, descripcion_Marca) VALUES (@id_Marca,  @nombre_Marca, @descripcion_Marca)" ProviderName="System.Data.SqlClient" OnSelecting="SqlDataSourceMarcas_Selecting">
            <InsertParameters>
                <asp:Parameter Name="id_Marca" />
                <asp:Parameter Name="nombre_Marca" />
                <asp:Parameter Name="descripcion_Marca" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
