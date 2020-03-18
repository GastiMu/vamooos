using System;

namespace Examen_MarceloGastonMuzas
{
    public partial class Delete : System.Web.UI.Page
    {
        private Personal empleado;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.empleado = new Personal();
            //recupero valor enviado por URL ...?id=...
            string valor = Request.QueryString["id"];
            int id = int.Parse(valor);
            this.empleado.EliminarRegistro(id);

            Response.Redirect("Default.aspx");
        }
    }
}