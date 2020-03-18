using System;
using System.Data.SqlClient;
using System.Web.UI;
public class CentroCosto : Conexion
{
    private SqlDataReader registro;
    private SqlConnection conexion;

    public CentroCosto()
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

    public SqlDataReader getCentros()
    {
        conectar();
        String sql = "SELECT IdCentroCosto, Nombre FROM CentroCosto WHERE Baja='False'ORDER BY Nombre;";

        //permite la ejecucion de una instruccion sql en la bd 
        SqlCommand comando = new SqlCommand(sql, this.conexion);
        this.registro = comando.ExecuteReader();

        return this.registro;
    }
}