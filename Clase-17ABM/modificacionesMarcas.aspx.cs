using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Clase_17ABM
{
    public partial class modificacionesMarcas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSourceMarcas.UpdateParameters["name_Marca"].DefaultValue = txtnombre_marca.Text;
            SqlDataSourceMarcas.UpdateParameters["descripcion_Marca"].DefaultValue = txtdescripcion_marca.Text;
            SqlDataSourceMarcas.UpdateParameters["id_Marca"].DefaultValue = txtCodigoMarca.Text;

            int cant;
            cant = SqlDataSourceMarcas.Update();
            if (cant == 1)
            {
                lblNotificacionArticulo.Text = "<strong style='background-color:lightgreen;'>Se Actualizo el Articulo Correctament</strong>";
            }
            else
            {
                lblNotificacionArticulo.Text = "<strong style='background-color:red;'>No Existe el Articulo!! </strong>";
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSourceMarcas.SelectParameters["id_Marca"].DefaultValue = txtCodigoMarca.Text;
            SqlDataSourceMarcas.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registro;
            registro = (SqlDataReader)SqlDataSourceMarcas.Select(DataSourceSelectArguments.Empty);
            if (registro.Read())
            {
                txtnombre_marca.Text = registro["name_Marca"].ToString();
                txtdescripcion_marca.Text = registro["descripcion_Marca"].ToString();
            }
            else
            {
                lblNotificacionArticulo.Text = "<strong style='color:red;'>No Existe la Marca</strong>";
            }
        }
    }
}