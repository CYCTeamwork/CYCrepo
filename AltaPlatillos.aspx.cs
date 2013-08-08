using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;

public partial class AltaPlatillos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnResgistro_Click(object sender, EventArgs e)
    {
        TbPrecio.Text = "";
        TbNombrePlatillo.Text = "";
        TbDescripcion.Text = "";
        String NombrePlatillos = TbNombrePlatillo.Text.Trim();
        String Descripcion = TbDescripcion.Text;
        int Precio = int.Parse(TbPrecio.Text);

        int regresarVal = DataAccsesClientes.AltaPlatillo(NombrePlatillos, Descripcion, Precio);

        if (regresarVal > 0)
            {
            LblErrorPlatillo.ForeColor = Color.Chocolate;
            LblErrorPlatillo.Text = "Haz Ingresado un Platillo";
            }
        else
            {
            LblErrorPlatillo.Text = "Error en Base De Datos, Comunicarse Con Nosotros";

            }
        }

}

