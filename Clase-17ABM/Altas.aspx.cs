using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase_17ABM
{
    public partial class Altas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["nombreUser"].DefaultValue = txtNombre_User.Text;
            SqlDataSource1.InsertParameters["claveUser"].DefaultValue = txtClave_User.Text;
            SqlDataSource1.InsertParameters["mailUser"].DefaultValue = txtCorreo_User.Text;
            SqlDataSource1.Insert();

            lblNotificacion.Text = "Datos Registrados Correctamente";

            txtNombre_User.Text = "";
            txtClave_User.Text = "";
            txtCorreo_User.Text = "";
        }
    }
}