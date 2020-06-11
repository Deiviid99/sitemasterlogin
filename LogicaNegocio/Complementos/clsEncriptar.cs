using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace LogicaNegocio.Complementos
{
    public class clsEncriptar
    {
        public string encriptarSHA1(string pass)
        {
            //SE CREA LA VARIBLE DEL CIFRADO
            SHA1 sha1 = SHA1Managed.Create();
            //ESTABLECER EL ESTANDAR DE CODIFICACION
            ASCIIEncoding encoding = new ASCIIEncoding();
            //CREAMOS EL ARREGLO EN BYTES
            byte[] stream = null;
            //CREAMOS UN CONSTRUCTOR DE CADENA DE TEXTO
            StringBuilder sb = new StringBuilder();
            //EXTRAEMOS LOS BYTES DE LA PALABRA EN TEXTO PLANO Y SE EJECUTA EL CIFRADO SHA1
            stream = sha1.ComputeHash(encoding.GetBytes(pass));
            //REALIZAMOS UN CICLO FOR PARA EXTRAER LETRA POR LETRA DEL ARREGLO DE BYTES CIFRADO Y ANEXA AL CONSTRUCTOR DE LA CADENA DE TEXTO 
            for (int i = 0; i < stream.Length; i++)
            {
                sb.AppendFormat("{0:x2}", stream[i]);
            }
            //EXTRAEMOS EL TEXTO CIFRADO
            return sb.ToString();
        }
    }
}
