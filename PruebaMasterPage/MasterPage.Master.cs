using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaMasterPage
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.setMenu();
        }
        public void setMenu()
        {
            String achievepage = Request.RawUrl;
            switch (achievepage)
            {
                case "/Default.aspx":  
                    link1.Attributes.Add("class","active"); break;

                case "/Default2.aspx":  
                    link2.Attributes.Add("class", "active"); break;
            }
        }
    }
}