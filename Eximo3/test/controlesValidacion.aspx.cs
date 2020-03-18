using System;
using System.Collections;
using System.Web.UI;

namespace Eximo3.test
{
    public partial class controlesValidacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition(
                //param 1 y param 2
                "jquery",new ScriptResourceDefinition
                {
                    Path = "~/public/js/jquery.js",
                    DebugPath = "~/public/js/jquery.js",
                    CdnSupportsSecureConnection = true,
                    LoadSuccessExpression = "window.jQuery"
                }
                );
            ArrayList arreglo = new ArrayList();
            arreglo.Add("seleccione...");
            arreglo.Add("Opcion 1");
            arreglo.Add("Opcion 2");
            arreglo.Add("Opcion 3");
            arreglo.Add("Opcion 4");
            form2.DataSource = arreglo;
            form2.DataBind();
        }

        public void procesarForm(object sender, EventArgs e)
        {
            if(IsValid) //valido que formulario fue enviado via post
            {
                //trabajo con los id, al id rtdo_nombre(label) le asigno lo escrito en el lbl de arriba.
                //esta accion se hace mediante el boton que llama a procesarForm
                rtdo_nombre.Text = nombre.Text;
            }
        }
    }
}