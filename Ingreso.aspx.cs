using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

public partial class Ingreso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnIngreso_Click(object sender, EventArgs e)
    {
        String nombreUsuario = TbUsuario.Text.Trim();
        String Password = TbContraseña.Text.Trim();
        int returnValida;
        int ReturnVal;
        DSClientes ds = DataAccsesClientes.buscarClientePorNombre(nombreUsuario.Trim(), out returnValida);
        DSRestaurantes Dsc = DataAccsesClientes.BusquedaPorNombre(nombreUsuario.Trim(), out ReturnVal);
        //Verificando si el usuario existe
        if (returnValida > 0)
        {
            //Si existe, verificando si su password es correcto
            if (ds.Clientes[0].Contraseña == Password.Trim())
            {
                //Le podemos dar acceso a nuestro sistema
                //Eso significa que guaremos informacion del usuario en la session
                Session["idUsuario"] = ds.Clientes[0].Clave_Cliente;
                Response.Redirect("Default.aspx");
            }
            if (ReturnVal > 0)
            {
                if (Dsc.Restaurante[0].Contraseña == Password.Trim())
                {
                    Session["idRestaurante"] = Dsc.Restaurante[0].ClaveRestaurante;
                    Response.Redirect("Restaurante.aspx");
                }
            }
        }
    }
}