using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["idUsuario"] != null)
        {
            //Tomo el objeto de la memoria session y le hago un casting
            //a entero para poder buscar por ID
            int id = (int)Session["idUsuario"];

            int returnVal = 0;
            DSClientes ds = DataAccsesClientes.buscarClientePorClave(id, out returnVal);

            LblBienvenida.Visible = true;
            LblBienvenida.Text += ds.Clientes[0].NombreCliente;
        }
    }
}