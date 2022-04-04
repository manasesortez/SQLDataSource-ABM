using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Clase_17ABM
{
    public partial class consultaArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["id_Articulo"].DefaultValue = txtCodigoArticulo.Text;
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;

            registros = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
                lblNotificaciones.Text = "Descripcion: " + registros["descriArticulos"] + "<br/>"
                + "Precio: " + registros["precio_Articulo"] + "<br/>"
                + "Rubro: " + registros["descriRubro"];

            else
                lblNotificaciones.Text = lblNotificaciones.Text = "<strong style='color:red;'>No Existe el Articulo</strong>";;



        }
    }
}