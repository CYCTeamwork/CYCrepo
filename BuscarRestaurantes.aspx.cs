using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BuscarRestaurantes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BTNbuscarRestaurante_Click(object sender, EventArgs e)
    {
        int returnVal;
        String busqueda = TBbuscarRestaurante.Text.Trim();

        DSRestaurantes ds = DataAccsesClientes.buscarRestaurantes(busqueda, out returnVal);

        GvbuscarRestaurante.DataSource = ds.Restaurante;
        GvbuscarRestaurante.DataBind();
    }
    public void GvbuscarRestaurante_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        DSRestaurantes.RestauranteDataTable dt = (DSRestaurantes.RestauranteDataTable)GvbuscarRestaurante.DataSource;
    }
}