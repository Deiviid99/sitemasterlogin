using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AccesoDatos;
using LogicaNegocio;
using LogicaNegocio.Complementos;

namespace pryLoginSitemaster.Formularios
{
    public partial class wfmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        //EVENTO PARA BOTON DE INICIAR SESION
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                TBL_USUARIO _infoUsuario = new TBL_USUARIO();
                //INSTANCIAR EL METODO PARA ENCRIPTAR
                clsEncriptar encrypt = new clsEncriptar();
                _infoUsuario = LogicaNegocio.Administracion.Login.clsLogin.getUserxLogin(txtEmail.Text, encrypt.encriptarSHA1(txtPassword.Text));
                if (_infoUsuario != null)
                {
                    Response.Write("<script>alert('Ingreso Exitoso');location='../wfmHome.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('Usuario o Contraseña incorrectos');</script>");
                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message.ToString() + "');</script>");
            }


        }
    }
}