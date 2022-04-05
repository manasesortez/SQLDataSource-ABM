using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase_17ABM
{
    public partial class bajasMarcas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            var data = txtElimiMarcas.Text = "";
            SqlDataSource1.DeleteParameters["id_Marca"].DefaultValue = data;
            int cant;
            cant = SqlDataSource1.Delete();
            if (cant == 1)
            {
                lblNotificaciones.Text = "El Articulo se Borro Correctamente";
            }
            else
            {
                lblNotificaciones.Text = "El Articulo no Exite en la db";
            }
        }
    }
}