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
    public partial class DodajSpotkanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DodajSpotkanieButton1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = @"Data Source=DESKTOP-Q7C7E9V\DB00;Initial Catalog=API_PROJEKT;Integrated Security=True";
            SqlCommand objSqlCommand = new SqlCommand();

            objSqlCommand.Connection = conn;

            objSqlCommand.CommandType = CommandType.Text;

            objSqlCommand.CommandText = "INSERT INTO SPOTKANIE(SPOTKANIE, CEL, OPIS, DATA_SPOTKANIA, GODZ_ROZP, GODZ_ZAK, PROJEKT_IDPROJEKT) VALUES (@SPOTKANIE, @CEL, @OPIS, @DATA_SPOTKANIA, @GODZ_ROZP, @GODZ_ZAK, @PROJEKT_IDPROJEKT) select SCOPE_IDENTITY()";

            objSqlCommand.Parameters.AddWithValue("@SPOTKANIE", this.SpotkanieTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@CEL", this.CelTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@OPIS", this.OpisTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@DATA_SPOTKANIA", this.DataCalendar1.SelectedDate);
            objSqlCommand.Parameters.AddWithValue("@GODZ_ROZP", this.GodzRozpTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@GODZ_ZAK", this.GodzZakTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@PROJEKT_IDPROJEKT", this.ProjektDropDownList1.SelectedItem.Value);

            conn.Open();

            objSqlCommand.ExecuteNonQuery();

            Response.Redirect("/ListaSpotkan.aspx");
        }
    }
}