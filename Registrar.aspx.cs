using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Registrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnIngreso_Click(object sender, EventArgs e)
    {
        DataAccsesClientes dac = new DataAccsesClientes();

        String NombreCliente = TbNombre.Text.Trim();
        String Telefono = TbTelefono.Text.Trim();
        String Domicilio = TbDomicilio.Text.Trim();
        String Password = TbContraseña.Text.Trim();
        String confirmacion = TbConfirmar.Text.Trim();
        String TipoUsuario = Ddltipo.SelectedValue;

        if (NombreCliente.Length > 0 && Password.Length > 0)
        {
            if (TbConfirmar.Text == Password)
            {
                int regresarVal = dac.altaCuentas(NombreCliente,Telefono, Domicilio, Password);

                if (regresarVal > 0)
                {
                    LblErrores.ForeColor = Color.Blue;
                    LblErrores.Text = "Ya Formas Parte De ClickyComes";
                }
                else
                {
                    LblErrores.Text = "Error en Base De Datos, Comunicarse Con Nosotros";  
                }

            }
            else
            {
                LblErrores.Text = "Sus Contraseñas No Coinciden";
            }
        }
        else
        {
            LblErrores.Text = "Introdusca Los Datos Completos";
        }

    }
}
