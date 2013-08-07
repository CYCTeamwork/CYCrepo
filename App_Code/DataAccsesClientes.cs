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
    /*Registro de clientes  
    //aqui se obitiene la coneccion es el web.config
    string connectionString=ConfigurationManager.ConnectionStrings["DBCLICKyCOMES"].ConnectionString;
    SqlConnection sqlc;*/
    public DataAccsesClientes()
    {
    }

    /*se regresa retun Val en todas las validaciones RegresarVal=-1 cuando hay falla de datos, RegresarVal=0 cuando hay exitosa cuando se agrego pero no 
    //se guardaron los datos, RegresarVal=1 cuando todo esta perfecto
    public int altaCuentas(string NombreCliente,string Telefono,  string Domicilio, string Contraseña)
    {   
        sqlc.Open();
        int regresarVal=0;
        //aqui se dan de alta los clientes que ingresen
        String query = "INSERT INTO Clientes (NombreCliente, Telefono, Domicilio, Contraseña) VALUES ('" + NombreCliente + "','" + Telefono + "','" + Domicilio + "','" + Contraseña + "')";
        try
        {
            SqlCommand sqlcomando = new SqlCommand(query, sqlc);
            regresarVal = sqlcomando.ExecuteNonQuery();
        }
        catch
        {   
            regresarVal = -1;
        }
        sqlc.Close();
        return regresarVal;
    }*/

    public static DSClientes buscarClientePorClave(int Clave, out int returnVal)
    {
        Taclientes ta = new Taclientes();
        DSClientes ds = new DSClientes();

        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            //de registros que se han adquirido.
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
            //de registros que se han adquirido.
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
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            //de registros que se han adquirido.
            returnVal = ta.FillByNombre(ds.Clientes, Nombre);
        }
        catch (Exception exp)
        {
            //Esto se hace cuando la conexion truena.
            returnVal = -1;
            String mensajeError = exp.Message;
        }

        return ds;
    }

    public static int AltaRestaurantes(string NombreRestaurante, string Telefono, string Domicilio, int ServicioDomicilio, string Contraseña)
    {
        TARestaurantes ta = new TARestaurantes();
        DSRestaurantes ds = new DSRestaurantes();
        int returnVal;
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            //de registros que se han adquirido.
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
    public static int AltaPlatillo(string NombrePlatillo, string Descripcion, int Precio)
    {
        TAPlatillos ta = new TAPlatillos();
        DSPlatillos ds = new DSPlatillos();
        int returnVal;
        try
        {
            //Aqui se adquirira la informcion de la base de datos y la cantidad
            //de registros que se han adquirido.
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
}

 /*   public  DataSet consultaClinetes (String Nombre, String Password,  out int regresarVal)
      {
            regresarVal = 0;
            DataSet Ds= new DataSet();
            //aqui la base de datos cambia a el nombre de tu base de datos
            String query = "SELECT *  from Clientes where Clientes.Nombre='" + Nombre + "'AND Clientes.ClaveCleintes='" + Password + "'";

            SqlCommand Sqlcomm = new SqlCommand(query, sqlc);
            try
            {
                sqlc.Open();
                SqlDataAdapter Sda = new SqlDataAdapter(Sqlcomm);
                Sda.Fill(Ds);

                regresarVal=Ds.Tables[0].Rows.Count;
            }
            catch(SqlException exec)
            {
                regresarVal=-1;
            }
            sqlc.Close();
            return Ds;
       }*/

 /* public int AltaRestaurante(string NombreRestaurante, string Telefono, string Domicilio,int ServicioDomicilio, string Contraseña)
      {   
            sqlc.Open();
            int regresarVal=0;
            //aqui se dan de alta los clientes que ingresen
            String query = "INSERT INTO Restaurante (NombreRestaurante,Telefono,Domicilio,ServicioDomicilio,Contraseña) VALUES ('" + NombreRestaurante + "','" + Telefono + "','" + Domicilio + "','"+ServicioDomicilio+"','" + Contraseña + "')";
            try
            {
                SqlCommand sqlcomando = new SqlCommand(query, sqlc);
                regresarVal = sqlcomando.ExecuteNonQuery();
            }
            catch
            {   
                regresarVal = -1;

            }
            sqlc.Close();
            return regresarVal;
        }*/

 /* public int AltaPlatillos (string NombrePlatillo, string Descripcion, int Precio)
        {   
            sqlc.Open();
            int regresar=0;
            //aqui se dan de alta los clientes que ingresen
            String query = "INSERT INTO Platillos (NombrePlatillo,Precio, Descripcion) VALUES ('" + NombrePlatillo + "','" + Precio + "','" + Descripcion+"')";
            try
            {
                SqlCommand sqlcomand= new SqlCommand(query, sqlc);
                regresar = sqlcomand.ExecuteNonQuery();
            }
            catch
            {   
                //
                regresar= -1;

            }
            sqlc.Close();
            return regresar;
        }
    }*/
 

