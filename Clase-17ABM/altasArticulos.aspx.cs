using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase_17ABM
{
    public partial class altasArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceRubros_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSourceArticulos_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSourceArticulos.InsertParameters["descripcion_Articulo"].DefaultValue = txtDescripcion.Text;
            SqlDataSourceArticulos.InsertParameters["precio_Articulo"].DefaultValue = txtPrecio.Text;
            SqlDataSourceArticulos.InsertParameters["id_Rubro"].DefaultValue = DropDownList.SelectedValue;
            SqlDataSourceArticulos.Insert();
            lblNotificaciones.Text = "<strong style='color:green;'>Se Efectuo la Carga</strong>";
            txtPrecio.Text = "";
            txtDescripcion.Text = "";
        }
    }
}