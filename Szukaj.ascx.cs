using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spotkania_biuro
{
    public partial class Szukaj1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            this.Response.Redirect("/Szukaj.aspx?spotkanie=" + this.TextBox1.Text);
        }
    }
}