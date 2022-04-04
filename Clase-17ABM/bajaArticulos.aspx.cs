using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase_17ABM
{
    public partial class bajaArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteParameters["id_Articulo"].DefaultValue = txtEliminarArticulos.Text;
            int cant;
            cant = SqlDataSource1.Delete();
            if(cant == 1)
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