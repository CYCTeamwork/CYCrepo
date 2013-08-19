using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MenuItem temp;

        MnPrincipal.Items.Clear();

        temp = new MenuItem("Inicio", "Inicio");
        temp.NavigateUrl = "~/Default.aspx";
        MnPrincipal.Items.Add(temp);

        temp = new MenuItem("Ingreso", "Ingreso");
        temp.NavigateUrl = "~/Ingreso.aspx";
        MnPrincipal.Items.Add(temp);

        temp = new MenuItem("Registrate", "Registrate");
        temp.NavigateUrl = "~/AltaRestaurantes.aspx";
        MnPrincipal.Items.Add(temp);

        temp = new MenuItem("Ayuda", "Ayuda");
        temp.NavigateUrl = "~/Ayuda.aspx";
        MnPrincipal.Items.Add(temp);


        if (Session["idUsuario"] != null)
        {
            int idUsuario = (int)Session["idUsuario"];
            int returnVal = 0;
            DSClientes ds = DataAccsesClientes.PorClave(idUsuario, out returnVal);

            int tipoUsuario = ds.Clientes[0].Tipousuario;
   
            switch (tipoUsuario)
            {
                case 1:
                    temp = new MenuItem("Adminitrador Usuarios", "Adminitrador Usuarios");
                    temp.NavigateUrl = "~/AdministradorUsuarios.aspx";
                    break;

                case 2:
                    temp = new MenuItem("Cliente", "Cliente");
                    temp.NavigateUrl = "~/Cliente.aspx";
                    break;

                case 3:
                    temp = new MenuItem("Restaurante", "Restaurante");
                    temp.NavigateUrl = "~/Restaurante.aspx";
                    break;
            }
            MnPrincipal.Items.Add(temp);
        }
    }
}
