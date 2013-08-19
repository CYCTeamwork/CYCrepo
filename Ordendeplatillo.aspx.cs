using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Ordendeplatillo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BTNpedirorden_Click(object sender, EventArgs e)
    {
        int ClavePlatillo = int.Parse(TBClavePlatillo.Text.Trim());
        int ClaveCliente = int.Parse(TBclavecliente.Text.Trim());
        String NombrePlatillo = TbNombrePlatillo.Text.Trim();
        int Cantidad = int.Parse(Tbcantidad.Text.Trim());

        int regresarVal = DataAccsesClientes.PedirOrdenes(ClavePlatillo, ClaveCliente, NombrePlatillo, Cantidad);

        if (regresarVal > 0)
        {
            LblErrorPlatillo.ForeColor = Color.Chocolate;
            LblErrorPlatillo.Text = "Su Orden ha Sido Exitosa";
        }
        else
        {
            LblErrorPlatillo.Text = "Error en Base De Datos, Comunicarse Con Nosotros";


        }
    }
}