<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaArticulos.aspx.cs" Inherits="Clase_17ABM.consultaArticulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="articulo" HeaderText="articulo" SortExpression="articulo" />
                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                <asp:BoundField DataField="vendedor" HeaderText="vendedor" SortExpression="vendedor" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSitioConnectionString %>" SelectCommand="SELECT tbl_Articulos.descripcion_Articulo AS articulo, 
tbl_Articulos.precio_Articulo AS precio, 
tbl_rubros.mombre_Rubro AS Categoria, 
tbl_Marcas.nombre_Marca AS Marca, 
tbl_Usuarios.nombre_User AS vendedor 
FROM tbl_Articulos
INNER JOIN tbl_rubros ON  tbl_Articulos.id_Rubro = tbl_rubros.id_Rubro 
INNER JOIN tbl_Marcas ON tbl_Articulos.id_Marca = tbl_Marcas.id_Marca 
INNER JOIN tbl_Usuarios ON tbl_Articulos.id_User = tbl_Usuarios.id_User;"></asp:SqlDataSource>
    </form>
</body>
</html>
