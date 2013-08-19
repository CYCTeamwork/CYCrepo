using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdministradorUsuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       //Checar si esta ingresado
        if (Session["idUsuario"] != null)
        {
            int idUsuario = (int)Session["idUsuario"];
            int returnVal = 0;

            DSClientes ds = DataAccsesClientes.buscarClientePorClave(idUsuario, out returnVal);
            //Se adquiere de que tipo es el usuario
            int tipoUsuario = ds.Clientes[0].Tipousuario;
        }
        int returnValida;
        DSClientes Dsc = DataAccsesClientes.cPorNombre(out returnValida);
        GvUsuarios.DataSource = Dsc.Clientes;
        GvUsuarios.DataBind();

        int returnValidaciones;
        DSRestaurantes Dsr = DataAccsesClientes.ConsultaNombre(out returnValidaciones);
        GvResturantes.DataSource = Dsr.Restaurante;
        GvResturantes.DataBind();      
    }
}