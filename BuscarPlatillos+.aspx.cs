using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BuscarPlatillos_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BTNbuscarPlatillo_Click(object sender, EventArgs e)
    {
        int returnVal;
        String busqueda = TBbuscarPlatillo.Text.Trim();
        DSPlatillos ds = DataAccsesClientes.busquedaPlatillo(busqueda, out returnVal);

        GvbuscarPlatillo.DataSource = ds.Platillos;
        GvbuscarPlatillo.DataBind();
    }
    public void GvbuscarPlatillo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        DSPlatillos.PlatillosDataTable dt = (DSPlatillos.PlatillosDataTable)GvbuscarPlatillo.DataSource;
    }
}