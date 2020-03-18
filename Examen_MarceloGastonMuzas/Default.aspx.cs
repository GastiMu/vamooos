using System;
using System.Data.SqlClient;

public partial class Default : System.Web.UI.Page
{
    private Personal empleados;
    private SqlDataReader registro;

    protected void Page_Load(object sender, EventArgs e)
    {
        empleados = new Personal();
        registro = this.empleados.getPersonal();
    }

    public SqlDataReader getRegistros()
    {
        return this.registro;
    }
}