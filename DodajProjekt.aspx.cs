using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spotkania_biuro
{
    public partial class DodajProjekt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DodajProjektButton1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = @"Data Source=DESKTOP-Q7C7E9V\DB00;Initial Catalog=API_PROJEKT;Integrated Security=True";
            SqlCommand objSqlCommand = new SqlCommand();

            objSqlCommand.Connection = conn;

            objSqlCommand.CommandType = CommandType.Text;

            objSqlCommand.CommandText = "INSERT INTO PROJEKT(PROJEKT, OPIS, DEADLINE, PRIORYTET) VALUES (@PROJEKT, @OPIS, @DEADLINE, @PRIORYTET) select SCOPE_IDENTITY()";

            objSqlCommand.Parameters.AddWithValue("@PROJEKT", this.ProjektTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@OPIS", this.OpisTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@DEADLINE", this.DataCalendar1.SelectedDate);
            objSqlCommand.Parameters.AddWithValue("@PRIORYTET", Int32.Parse(this.PriorytetTextBox1.Text));
            conn.Open();

            objSqlCommand.ExecuteNonQuery();

            Response.Redirect("/ListaProjektow.aspx");
        }
    }
}