<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Clase_17ABM.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Altas.aspx">Altas</asp:HyperLink>
        </div>
        <br />
        <div>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/consultas.aspx">Consultas de Usuario</asp:HyperLink>
        </div>
        <br />
        <div>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Bajas.aspx">Bajas de Usuario</asp:HyperLink>
        </div>
        <br />
        <div>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Modificaciones.aspx">Modificacion de Usuarios</asp:HyperLink>
        </div>
    </form>
</body>
</html>
