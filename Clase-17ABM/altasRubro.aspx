<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altasRubro.aspx.cs" Inherits="Clase_17ABM.altasRubro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <h1>Altas Rubros</h1>
        <p>&nbsp;</p>

        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre del Rubro"></asp:Label>
            <asp:TextBox ID="txtRubros" runat="server" placeholder="hola"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Confirmar" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="lblNotificaciones" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" InsertCommand="INSERT INTO tbl_rubros(nombre_Rubro) VALUES (@nombre_rubros)" OnSelecting="SqlDataSource1_Selecting" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
    </form>
</body>
</html>
