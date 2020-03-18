using System;
using System.Collections;

namespace Eximo3.test
{
    public partial class controlServidor : System.Web.UI.Page
    {
        private Arreglo arr;
        private ArrayList datos;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.arr = new Arreglo();
            this.datos = this.arr.getLista();
            texto.Text = "controlandoDesdeCodeBehind";
        }

        public ArrayList getLista()
        {
            return this.datos;
        }
    }
}