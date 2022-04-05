using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase_17ABM
{
    public partial class altasMarcas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSourceMarcas.InsertParameters["nombre_Marca"].DefaultValue = txtnombreMarca.Text;
            SqlDataSourceMarcas.InsertParameters["descripcion_Marca"].DefaultValue = txtdescripcionMarca.Text;
            SqlDataSourceMarcas.Insert();
            lblNotificaciones.Text = "<strong style='color:green;'>Marca Creada Correctamente</strong>";
            txtnombreMarca.Text = "";
            txtdescripcionMarca.Text = "";
        }

        protected void SqlDataSourceMarcas_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}