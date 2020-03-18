using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI.WebControls;

namespace Examen_MarceloGastonMuzas
{
    public partial class Add : System.Web.UI.Page
    {
        private Conexion conexion;
        private Personal empleados;
        private SqlDataReader registroLoc;
        private SqlDataReader registroCent;
        private Localidades loc;
        private CentroCosto cent;
        private ArrayList localidades, centros;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.conexion = new Conexion();
            this.conexion.conectar();
            this.empleados = new Personal();
            this.loc = new Localidades();
            this.cent = new CentroCosto();
            this.empleados.Jquery();

            localidades = new ArrayList();
            centros = new ArrayList();

            this.registroCent = cent.getCentros();
            this.registroLoc = loc.getLocalidades();

            localidades.Add("Seleccione una opcion...");
            while (getRegLocalidades().Read())
            {
                localidades.Add(getRegLocalidades()["Nombre"].ToString());
            }

            listaLocalidades.DataSource = localidades;
            listaLocalidades.DataBind();

            centros.Add("Seleccione una opcion...");
            while (getRegCentros().Read())
            {
                centros.Add(getRegCentros()["Nombre"].ToString());
            }

            listaCC.DataSource = centros;
            listaCC.DataBind();
        }

        public void ProcesarCarga(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //desde aca puedo accesar todos los datos de Add.aspx del formulario
                this.empleados.InsertarRegistro(apellido.Text, nombre.Text, documento.Text);
                Response.Redirect("Default.aspx");
            }
        }

        public SqlDataReader getRegLocalidades()
        {
            return this.registroLoc;
        }

        public SqlDataReader getRegCentros()
        {
            return this.registroCent;
        }

    }
}