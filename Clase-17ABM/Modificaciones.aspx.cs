using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Clase_17ABM
{
    public partial class Modificaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            SqlDataSourcePersonal.SelectParameters["id_Articulo"].DefaultValue = txtCodigoPersonal.Text;
            SqlDataSourcePersonal.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registro;
            registro = (SqlDataReader)SqlDataSourcePersonal.Select(DataSourceSelectArguments.Empty);
            if (registro.Read())
            {
                txtnombre_user.Text = registro["nombre_User"].ToString();
                txtclave_user.Text = registro["clave_User"].ToString();
                txtmail_user.Text = registro["mail_User"].ToString();
            }
            else
            {
                lblNotificaciones.Text = "<strong style='color:red;'>No Existe el empleado</strong>";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataSourcePersonal.UpdateParameters["nombre_User"].DefaultValue = txtnombre_user.Text;
            SqlDataSourcePersonal.UpdateParameters["clave_User"].DefaultValue = txtclave_user.Text;
            SqlDataSourcePersonal.UpdateParameters["mail_User"].DefaultValue = txtmail_user.Text;
            SqlDataSourcePersonal.UpdateParameters["id_User"].DefaultValue = txtCodigoPersonal.Text;

            int cant;
            cant = SqlDataSourcePersonal.Update();
            if (cant == 1)
            {
                lblNotificaciones.Text = "<strong style='background-color:lightgreen;'>Se Actualizo el empleado Correctamente</strong>";
            }
            else
            {
                lblNotificaciones.Text = "<strong style='background-color:red;'>No Existe ese empleado!! </strong>";
            }
        }
    }
}