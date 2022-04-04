using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase_17ABM
{
    public partial class altasRubro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["nombre_rubros"].DefaultValue = txtRubros.Text;
            SqlDataSource1.Insert();
            lblNotificaciones.Text = "<strong style='color:green;'>Se Efectuo la Carga</strong>";
            txtRubros.Text = "";
        }
    }
}