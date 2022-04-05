<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Clase_17ABM.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class ="row">
                <div class="col-lg-6" style="background-color:#ededed; padding:15px; border-radius:12px;">
                        <div>
                            <h1>Personal</h1>
                        </div>
                        <hr />
                        <div>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Altas.aspx">Altas Personal</asp:HyperLink>
                        </div>
                        <br />
                        <div>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/consultas.aspx">Consultas de Personal</asp:HyperLink>
                        </div>
                        <br />
                        <div>
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Bajas.aspx">Bajas de Personal</asp:HyperLink>
                        </div>
                        <br />
                        <div>
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Modificaciones.aspx">Modificacion de Personal</asp:HyperLink>
                        </div>
                    </div>

                    <div class="col-lg-6"  style="background-color:#ededed; margin-top: 30px; padding:15px; border-radius:12px;">
                        <div>
                            <h1>Articulos y rubros</h1>
                        </div>
                        <hr />
                        <div>
                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/altasRubro.aspx">Altas de Rubros</asp:HyperLink>
                        </div>
                        <br />
                        <div>
                            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/altasArticulos.aspx">Altas Articulos</asp:HyperLink>
                        </div>
                        <br />
                        <div>
                            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/consultaArticulos.aspx">Consultas Articulos</asp:HyperLink>
                        </div>
                        <br />
                        <div>
                            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/bajaArticulos.aspx">Bajas de Articulos</asp:HyperLink>
                        </div>

                        <br />
                        <div>
                            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/modificacionArticulos.aspx">Modificacion de Articulos</asp:HyperLink>
                        </div>
                    </div>

                 <div class="col-lg-6"  style="background-color:#ededed; margin-top: 30px; margin-bottom:50px; padding:15px; border-radius:12px;">
                        <div>
                            <h1>Marcas</h1>
                        </div>
                        <hr />
                        <div>
                            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/altasMarcas.aspx">Altas de Marcas</asp:HyperLink>
                        </div>
                        <br />
                        <div>
                            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/bajasMarcas.aspx">Bajas de Marcas</asp:HyperLink>
                        </div>

                        <br />
                        <div>
                            <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/modificacionesMarcas.aspx">Modificacion de Marcas</asp:HyperLink>
                        </div>
                    </div>

                </div>

        </div>
    </form>
</body>
</html>
