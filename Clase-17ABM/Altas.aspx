<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Altas.aspx.cs" Inherits="Clase_17ABM.Altas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h3>Altas Personal</h3>
            </div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
                <asp:TextBox ID="txtNombre_User" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Clave: "></asp:Label>
                <asp:TextBox ID="txtClave_User" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Correo: "></asp:Label>
                <asp:TextBox ID="txtCorreo_User" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />
                &nbsp;
                <asp:Label ID="lblNotificacion" runat="server" Text="Label" BackColor="#00FF99"></asp:Label>
            </div>
            <p>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
            </p>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" InsertCommand="INSERT INTO tbl_Usuarios(id_User, nombre_User, clave_User, mail_User) VALUES (@id_User, @nombreUser, @claveUser, @mailUser)" OnSelecting="SqlDataSource1_Selecting" ProviderName="System.Data.SqlClient">
                <InsertParameters>
                    <asp:Parameter Name="id_User" />
                    <asp:Parameter Name="nombreUser" />
                    <asp:Parameter Name="claveUser" />
                    <asp:Parameter Name="mailUser" />
                </InsertParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
