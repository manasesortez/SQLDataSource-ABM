using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Clase_17ABM
{
    public partial class consultas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtFindUser.Text = null;
            SqlDataSource2.SelectParameters["nombreUser"].DefaultValue = txtFindUser.Text;
            SqlDataSource2.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            if (datos.Read())
            {
                lblNotificacion.Text = "Clave: " + datos["clave_User"] + " <br/> Correo: " + datos["mail_User"];
            }
            else {
                lblNotificacion.Text = "Persona No encontrado :(";

            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}