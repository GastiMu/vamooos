using System.Data.SqlClient;

public class Conexion
{
    private SqlConnection conexion;

    public Conexion()
    {
        string cadena = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaConexion"].ConnectionString;

        this.conexion = new SqlConnection(cadena);
    }

    public void conectar()
    {
        this.conexion.Open();
    }

    public void desconectar()
    {
        this.conexion.Close();
    }

    public SqlConnection getConexion()
    {
        return this.conexion;
    }
}
