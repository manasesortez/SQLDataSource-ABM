using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Clase_17ABM
{
    public partial class modificacionArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceRubros_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSourceArticulo.SelectParameters["id_Articulo"].DefaultValue = txtCodigoArticulo.Text;
            SqlDataSourceArticulo.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registro;
            registro = (SqlDataReader)SqlDataSourceArticulo.Select(DataSourceSelectArguments.Empty);
            if (registro.Read())
            {
                txtDescripcion_ar.Text = registro["descripcion_Articulo"].ToString();
                txtPrecio_ar.Text = registro["precio_articulo"].ToString();
                DropDownList_ar.SelectedValue = registro["id_Rubro"].ToString();
                DropDownList_ar.DataSource = SqlDataSourceRubros;
                DropDownList_ar.DataTextField = "nombre_rubro";
                DropDownList_ar.DataValueField = "id_Rubro";
                DropDownList_ar.DataBind();

            }
            else
            {
                lblNotificacionArticulo.Text = "<strong style='color:red;'>No Existe el Articulo</strong>";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSourceArticulo.UpdateParameters["descripcion_Articulo"].DefaultValue = txtDescripcion_ar.Text;
            SqlDataSourceArticulo.UpdateParameters["precio_Articulo"].DefaultValue = txtPrecio_ar.Text;
            SqlDataSourceArticulo.UpdateParameters["id_Rubro"].DefaultValue = DropDownList_ar.Text;
            SqlDataSourceArticulo.UpdateParameters["id_Articulo"].DefaultValue = txtCodigoArticulo.Text;

            int cant;
            cant = SqlDataSourceArticulo.Update();
            if(cant == 1)
            {
                lblNotificacionArticulo.Text = "<strong style='background-color:lightgreen;'>Se Actualizo el Articulo Correctament</strong>";
            }
            else
            {
                lblNotificacionArticulo.Text = "<strong style='background-color:red;'>No Existe el Articulo!! </strong>";
            }
        }

        protected void SqlDataSourceArticulo_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}