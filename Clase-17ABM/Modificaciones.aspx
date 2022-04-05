<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificaciones.aspx.cs" Inherits="Clase_17ABM.Modificaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Modificar Personal</h1>
        <div>
            <asp:Label ID="lblNotificacionPersonal" runat="server" Text="Notificacion"></asp:Label>
            <br />
            <br />
        </div>
        <div>
            <asp:Label ID="label1" runat="server" Text="Ingrese el codigo de la Persona"></asp:Label>
            <asp:TextBox ID="txtCodigoPersonal" runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="btnBuscarPersonal" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourcePersonal" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" ProviderName="System.Data.SqlClient" UpdateCommand="UPDATE tbl_Usuarios SET nombre_User = @nombre_User, clave_User = @clave_User, mail_User = @mail_User WHERE id_User = @id_User"  SelectCommand="SELECT descripcion_Articulo, precio_Articulo, id_Rubro FROM tbl_Articulos WHERE (id_Articulo = @id_Articulo)">
            <UpdateParameters>
                <asp:Parameter Name="nombre_User" />
                <asp:Parameter Name="clave_User" />
                <asp:Parameter Name="mail_User" />
                <asp:Parameter Name="id_User" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtnombre_user" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="Clave"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtclave_user" runat="server"></asp:TextBox>
        </div>
        <div>
            <br />
            <asp:Label ID="Label4" runat="server" Text="E-Mail"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtmail_user" runat="server"></asp:TextBox>
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
