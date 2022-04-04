<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altasArticulos.aspx.cs" Inherits="Clase_17ABM.altasArticulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Altas de Articulos</h1>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Descripcion"></asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Precio"></asp:Label>
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="Rubro"></asp:Label>
            <asp:DropDownList ID="DropDownList" runat="server" DataSourceID="SqlDataSourceRubros" DataTextField="mombre_Rubro" DataValueField="id_Rubro"></asp:DropDownList>
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="lblNotificaciones" runat="server" Text="Label"></asp:Label>

        
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
        <asp:SqlDataSource ID="SqlDataSourceRubros" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" OnSelecting="SqlDataSourceRubros_Selecting" ProviderName="System.Data.SqlClient" SelectCommand="SELECT id_Rubro,mombre_Rubro FROM tbl_rubros"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceArticulos" runat="server" ConnectionString="Data Source=AMTO_DEV;Initial Catalog=dbSitio;Persist Security Info=True;User ID=sa;Password=mamatina2.0" InsertCommand="INSERT INTO tbl_Articulos(descripcion_Articulo, precio_Articulo, id_Rubro ) VALUES (@descripcion_Articulo,  @precio_Articulo, @id_Rubro)" OnSelecting="SqlDataSourceArticulos_Selecting" ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="descripcion_Articulo" />
                <asp:Parameter Name="precio_Articulo" />
                <asp:Parameter Name="id_Rubro" />
            </InsertParameters>
        </asp:SqlDataSource>
        
    </form>
</body>
</html>
