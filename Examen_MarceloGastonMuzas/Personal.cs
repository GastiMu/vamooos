using System;
using System.Data.SqlClient;
using System.Web.UI;
public class Personal : Conexion
{
    private SqlDataReader registro;
    private SqlConnection conexion;

    public Personal()
    {
        this.conexion = getConexion();
    }

    public void Jquery()
    {
        ScriptManager.ScriptResourceMapping.AddDefinition
            (

                "jquery", new ScriptResourceDefinition
                {
                    Path = "~/public/js/jquery/.js",
                    DebugPath = "~/public/js/jquery.js",
                    CdnSupportsSecureConnection = true,
                    LoadSuccessExpression = "window.jQuery"
                }
            );
    }

    public SqlDataReader getPersonal()
    {
        conectar();
        String sql = "SELECT IdPersonal, Apellido, Nombre, Dni, CentroDeCosto, Localidad FROM Personal WHERE Baja='False' ORDER BY Apellido, Nombre;";

        //permite la ejecucion de una instruccion sql en la bd 
        SqlCommand comando = new SqlCommand(sql, this.conexion);
        this.registro = comando.ExecuteReader();

        return this.registro;

    }

    public void InsertarRegistro(String apellido, String nombre, String documento)
    {
        conectar();

        String sql = "INSERT INTO Personal (Apellido,Nombre,Dni,CentroDeCosto,Localidad,Baja) VALUES ('" + apellido + "','" + nombre + "'," + documento + ",'0','0','False')";
        SqlCommand comando = new SqlCommand(sql, this.conexion);
        comando.ExecuteNonQuery();

        desconectar();

    }

    public void EliminarRegistro(int id)
    {
        conectar();

        String sql = "UPDATE Personal SET Baja = 'True' WHERE IdPersonal = '" + id + "'";
        SqlCommand comando = new SqlCommand(sql, this.conexion);
        comando.ExecuteNonQuery();

        desconectar();
    }
}