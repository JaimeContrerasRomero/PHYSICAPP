using PHYSICAPP.dsDatosTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PHYSICAPP
{
    public partial class Login : System.Web.UI.Page
    {
        LoginTableAdapter login = new LoginTableAdapter();
        dsDatos dsDatos = new dsDatos();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    this.inputEmail.Text = Request.Cookies["UserName"].Value;
                    this.inputPassword.Text = Request.Cookies["Password"].Value;
                }
            }
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            Response.Cookies["UserName"].Value = this.inputEmail.Text;
            Response.Cookies["Password"].Value = this.inputPassword.Text;
            //Conectar con la base de datos para revisar si existe un registro con ese correo y passwors
            try
            {
                String url = Request.QueryString["ReturnUrl"];
                this.login.Fill(this.dsDatos.Login, this.inputEmail.Text.Trim(), this.inputPassword.Text.Trim()); //el metodo que ejecuta la consulta
                //validar si tiene registros la tabla con los datos que se envían
                if (this.dsDatos.Login.Rows.Count > 0)
                {
                    if (url == null)
                    {
                        Response.Redirect("Default.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                    else
                    {
                        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(this.inputEmail.Text.Trim(), false);
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}