﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

using Taclientes = DSClientesTableAdapters.ClientesTableAdapter;
using TARestaurantes = DSRestaurantesTableAdapters.RestauranteTableAdapter;
using TAPlatillos = DSPlatillosTableAdapters.PlatillosTableAdapter;
using TAordenes = DSordenesTableAdapters.OrdenesTableAdapter;
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
            returnVal = ta.FillByPorClave(ds.Clientes, Clave);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return ds;
    }
    public static int AltaClientes(string NombreCliente, string Telefono, string Domicilio, string Contraseña,int TipoUsuario)
    {
        Taclientes ta = new Taclientes();
        DSClientes ds = new DSClientes();
        int returnVal;
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.AltaClientes(NombreCliente, Telefono, Domicilio, Contraseña,TipoUsuario);
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

            returnVal = ta.FillByPorNombre(ds.Clientes, Nombre);
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
    public static int AltaRestaurantes(string NombreRestaurante, string Telefono, string Domicilio,string Contraseña, int TipoUsuarios)
    {
        TARestaurantes ta = new TARestaurantes();
        DSRestaurantes ds = new DSRestaurantes();
        int returnVal;
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.AltaRestaurantes(NombreRestaurante, Telefono, Domicilio,Contraseña, TipoUsuarios);
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
            returnVal = ta.FillByPorID(ds.Restaurante, Clave);
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
            returnVal = ta.FillByporNombre(ds.Restaurante, Nombre);
        }
        catch (Exception exp)
        {
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return ds;
    }
    //platillos
    public static int AltaPlatillo(int ClaveRestaurante,string NombrePlatillo, string Descripcion, int Precio)
    {
        TAPlatillos ta = new TAPlatillos();
        DSPlatillos ds = new DSPlatillos();
        int returnVal;
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.AltaPlatillo(ClaveRestaurante, NombrePlatillo, Descripcion, Precio);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return returnVal;
    }
    public static int borrarPlatillo (string NombrePlatillo)
    {
        TAPlatillos ta = new TAPlatillos();
        DSPlatillos ds = new DSPlatillos();
        int returnValida;
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnValida = ta.BorrarPlatillo(NombrePlatillo);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnValida = -1;
            String mensajeError = exp.Message;
        }

        return returnValida;
          }
    //ordenes
    public static int PedirOrdenes(int ClaveCliente,int ClavePlatillo,string NombrePlatillo,int Cantidad)
    {
        DSordenes ds = new DSordenes();
        TAordenes  ta = new TAordenes ();
        int returnVal;
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.AltaOrdenes(ClaveCliente, ClavePlatillo, NombrePlatillo,Cantidad);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return returnVal;
    }
    public static DSClientes PorClave(int Clave, out int returnVal)
    {
        Taclientes ta = new Taclientes();
        DSClientes ds = new DSClientes();

        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.FillByPorClave(ds.Clientes, Clave);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return ds;
    }
    public static DSRestaurantes PorID(int Clave, out int returnVal)
    {
        TARestaurantes ta = new TARestaurantes();
        DSRestaurantes ds = new DSRestaurantes();

        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            returnVal = ta.FillByPorID(ds.Restaurante, Clave);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }
        return ds;
    }
    //gridview
    public static DSClientes cPorNombre(out int ReturnValida)
    {
        DSClientes dsu = new DSClientes();
        DSClientesTableAdapters.ClientesTableAdapter tac = new DSClientesTableAdapters.ClientesTableAdapter();

        try
        {
            ReturnValida = tac.Fill(dsu.Clientes);
        }
        catch (Exception exp)
        {
            ReturnValida = -1;
            String mensajeError = exp.Message;
        }
        return dsu;
    }
    public static DSRestaurantes ConsultaNombre(out int ReturnValida)
    {
        DSRestaurantes dsu = new DSRestaurantes();
        DSRestaurantesTableAdapters.RestauranteTableAdapter tac = new DSRestaurantesTableAdapters.RestauranteTableAdapter();

        try
        {
            ReturnValida = tac.Fill(dsu.Restaurante);
        }
        catch (Exception exp)
        {
            ReturnValida = -1;
            String mensajeError = exp.Message;
        }
        return dsu;
    }
    public static DSRestaurantes buscarRestaurantes(string busqueda, out int returnVal)
    {
        returnVal = 0;
        TARestaurantes ta = new TARestaurantes();
        DSRestaurantes ds = new DSRestaurantes();

        try
        {
            returnVal = ta.buscarRestaurante(ds.Restaurante, busqueda);
        }
        catch (Exception exp)
        {
            returnVal = -1;
            String error = exp.Message;
        }
        return ds;
    }
    public static DSPlatillos busquedaPlatillo(string busqueda, out int returnVal)
    {
        TAPlatillos ta = new TAPlatillos();
        DSPlatillos ds = new DSPlatillos();

        try
        {
            returnVal = ta.busquedaPlatillos(ds.Platillos, busqueda);
        }
        catch (Exception exp)
        {
            returnVal = -1;
            String error = exp.Message;
        }
        return ds;
    }
}

 

