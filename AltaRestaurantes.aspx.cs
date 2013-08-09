using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
public partial class AltaRestaurantes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnResgistro_Click(object sender, EventArgs e)
    {
        String NombreRestaurante = TbNombreRestaurante.Text.Trim();
        String Telefono = TbTelefono.Text;
        String Domicilio = TbDomicilio.Text;
        int  ServicioDomicilio = int.Parse(DdlServicio.Text);
        String Password = Tbcontraseña.Text.Trim();
        String Confirmacion = TbConfirmar.Text.Trim();
        if (NombreRestaurante.Length > 0 && Password.Length > 0)
        {
            if (TbConfirmar.Text == Password)
            {
                int regresarVal = DataAccsesClientes.AltaRestaurantes(NombreRestaurante, Telefono, Domicilio, ServicioDomicilio, Password);

                if (regresarVal > 0)
                {
                    LblerrorRestaurante.ForeColor = Color.Chocolate;
                    LblerrorRestaurante.Text = "Ya Formas Parte De ClickyComes";
                }
                else
                {
                    LblerrorRestaurante.Text = "Error en Base De Datos, Comunicarse Con Nosotros";
                }

            }
            else
            {
                LblerrorRestaurante.Text = "Sus Contraseñas No Coinciden";
            }
        }
        else
        {
            LblerrorRestaurante.Text = "Introdusca Los Datos Completos";
        }
        TbConfirmar.Text = "";
        Tbcontraseña.Text = "";
        TbDomicilio.Text = "";
        TbNombreRestaurante.Text = "";
        TbTelefono.Text = "";
        LblerrorRestaurante.Text = "";
    }

    protected void BtnIngreso_Click(object sender, EventArgs e)
    {
        String NombreCliente = TbNombre.Text.Trim();
        String Telefono = TbTelefonoCliente.Text.Trim();
        String Domicilio = TbDomicilioCliente.Text.Trim();
        String Password = TbContraseñaCliente.Text.Trim();
        String confirmacion = TbPassword.Text.Trim();

        if (NombreCliente.Length > 0 && Password.Length > 0)
        {
            if (TbPassword.Text == Password)
            {
                int regresarVal = DataAccsesClientes.AltaClientes(NombreCliente, Telefono, Domicilio, Password);

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
        TbContraseñaCliente.Text = "";
        TbDomicilioCliente.Text = "";
        TbPassword.Text = "";
        TbTelefonoCliente.Text = "";
        LblErrores.Text = "";
    }
}
