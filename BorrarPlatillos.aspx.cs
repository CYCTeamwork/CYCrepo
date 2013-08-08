using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class BorrarPlatillos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnResgistro_Click(object sender, EventArgs e)
    {
        String NombrePlatillo = TbBorrar.Text.Trim();
        String Contraseña = TbContraseñaPlatillos.Text.Trim();
        String Confirmar = TbConfirmarplatillo.Text.Trim();
        if (NombrePlatillo.Length > 0 && Contraseña.Length > 0)
        {
            if (TbConfirmarplatillo.Text == Contraseña)
            {
                int returnval = DataAccsesClientes.borrarPlatillo(NombrePlatillo);
                if (returnval > 0)
                {
                    LblErrorBorrado.ForeColor = Color.Gold;
                    LblErrorBorrado.Text = "su platillos hacido borrado";
                }
                else
                {
                    LblErrorBorrado.Text = "sus contraseñas no coinciden";
                }
            }
            else
            {
                LblErrorBorrado.Text = "El Platillos no esta registrado";
            }

          }
       }
  }
