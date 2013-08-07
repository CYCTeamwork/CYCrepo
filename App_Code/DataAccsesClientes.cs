using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

using Taclientes = DSClientesTableAdapters.ClientesTableAdapter;
using TARestaurantes = DSRestaurantesTableAdapters.RestauranteTableAdapter;
using TAPlatillos = DSPlatillosTableAdapters.PlatillosTableAdapter;
public class DataAccsesClientes
{

    public DataAccsesClientes()
    {

    }
    //esto es del DataSet Clientes
    public static DSClientes buscarClientePorClave(int Clave, out int returnVal)
    {
        Taclientes ta = new Taclientes();
        DSClientes ds = new DSClientes();

        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.FillByClave(ds.Clientes, Clave);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return ds;
    }

    public static int AltaClientes(string NombreCliente, string Telefono, string Domicilio, string Contraseña)
    {
        Taclientes ta = new Taclientes();
        DSClientes ds = new DSClientes();
        int returnVal;
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.AltaClientes(NombreCliente, Telefono, Domicilio, Contraseña);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return returnVal;
    }

    public static DSClientes buscarClientePorNombre(String Nombre, out int returnVal)
    {
        Taclientes ta = new Taclientes();
        DSClientes ds = new DSClientes();

        try
        {

            returnVal = ta.FillByNombre(ds.Clientes, Nombre);
        }
        catch (Exception exp)
        {

            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return ds;
    }
    //aqui termina lo del cliente

    //y empiezan los Restaruantes
    public static int AltaRestaurantes(string NombreRestaurante, string Telefono, string Domicilio, int ServicioDomicilio, string Contraseña)
    {
        TARestaurantes ta = new TARestaurantes();
        DSRestaurantes ds = new DSRestaurantes();
        int returnVal;
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.AltaRestaurante(NombreRestaurante, Telefono, Domicilio, ServicioDomicilio, Contraseña);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return returnVal;
    }
    public static DSRestaurantes BusquedaPorClave(int Clave, out int returnVal)
    {
        TARestaurantes ta = new TARestaurantes();
        DSRestaurantes ds = new DSRestaurantes();
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.FillByPorClave(ds.Restaurante, Clave);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return ds;
    }
    public static DSRestaurantes BusquedaPorNombre(String Nombre, out int returnVal)
    {
        TARestaurantes ta = new TARestaurantes();
        DSRestaurantes ds = new DSRestaurantes();
        try
        {
            returnVal = ta.FillByPorNombre(ds.Restaurante, Nombre);
        }
        catch (Exception exp)
        {
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return ds;
    }
    //platillos
    public static int AltaPlatillo(string NombrePlatillo, string Descripcion, int Precio)
    {
        TAPlatillos ta = new TAPlatillos();
        DSPlatillos ds = new DSPlatillos();
        int returnVal;
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.AltaPlatillo(NombrePlatillo, Descripcion, Precio);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return returnVal;
    }

   /* public static DSPlatillos ModificarPlatillo(string NombrePlatillo, string Descripcion, decimal Precio)
    {
        TAPlatillos ta = new TAPlatillos();
        DSPlatillos ds = new DSPlatillos();
        int returnVal;
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.ModificarPlatillos(NombrePlatillo, Descripcion, Precio);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return returnVal;
    }*/
     


}

 

