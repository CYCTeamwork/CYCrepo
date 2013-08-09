using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restaruante : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["idRestaurante"] != null)
        {
            //Tomo el objeto de la memoria session y le hago un casting
            //a entero para poder buscar por ID
            int id = (int)Session["idRestaurante"];
            int returnVal = 0;
            // se tomara el tipo de usuario 
            DSRestaurantes ds = DataAccsesClientes.BusquedaPorClave(id, out returnVal);

            Lblbienvenido.Visible = true;
            Lblbienvenido.Text += ds.Restaurante[0].NombreRestaurante;
           
        }
    }
}