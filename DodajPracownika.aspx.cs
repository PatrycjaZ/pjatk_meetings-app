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
    public partial class DodajPracownika : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DodajPracownikaButton1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = @"Data Source=DESKTOP-Q7C7E9V\DB00;Initial Catalog=API_PROJEKT;Integrated Security=True";
            SqlCommand objSqlCommand = new SqlCommand();

            objSqlCommand.Connection = conn;

            objSqlCommand.CommandType = CommandType.Text;

            objSqlCommand.CommandText = "INSERT INTO PRACOWNIK(IMIE, NAZWISKO, ROK_UR, MIASTO, STANOWISKO, EMAIL, NR_TEL, TABLICA_INFO) VALUES (@IMIE, @NAZWISKO, @ROK_UR, @MIASTO, @STANOWISKO, @EMAIL, @NR_TEL, @TABLICA_INFO) select SCOPE_IDENTITY()";

            objSqlCommand.Parameters.AddWithValue("@IMIE", this.ImieTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@NAZWISKO", this.NazwiskoTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@ROK_UR", Int32.Parse(this.RokTextBox1.Text));
            objSqlCommand.Parameters.AddWithValue("@MIASTO", this.MiastoTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@STANOWISKO", this.StanowiskoTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@EMAIL", this.EmailTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@NR_TEL", this.NrtelTextBox1.Text);
            objSqlCommand.Parameters.AddWithValue("@TABLICA_INFO", this.TablicaTextBox1.Text);
            conn.Open();

            objSqlCommand.ExecuteNonQuery();

            Response.Redirect("/ListaPracownikow.aspx");
        }
    }
}