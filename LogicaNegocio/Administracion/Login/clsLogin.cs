using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;

namespace LogicaNegocio.Administracion.Login
{
    public class clsLogin
    {
        private static dbHELPDESKDataContext db = new dbHELPDESKDataContext();

        //METODO PARA LOGIN
        public static TBL_USUARIO getUserxLogin(string email, string password)
        {
            try
            {
                var user = db.TBL_USUARIO.FirstOrDefault(data => data.USU_STATUS == 'A' && data.USU_EMAIL.Equals(email) && data.USU_PASSWORD.Equals(password));

                return user;
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error en el inicio de sesión");
            }

        }

    }
}
