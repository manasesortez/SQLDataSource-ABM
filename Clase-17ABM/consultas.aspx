<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultas.aspx.cs" Inherits="Clase_17ABM.consultas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Consultas</h1>
        </div>
        <asp:Label ID="lblFindUser" runat="server" Text="Buscar Usuario"></asp:Label>
        <asp:TextBox ID="txtFindUser" runat="server"></asp:TextBox>

        <p>
            <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
        </p>
        <asp:Label ID="lblNotificacion" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">HyperLink</asp:HyperLink>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" InsertCommand="SELECT clave_User, mail_User FROM tbl_Usuarios WHERE (nombre_User = @nombreUser)" OnSelecting="SqlDataSource1_Selecting" ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="nombreUser" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
