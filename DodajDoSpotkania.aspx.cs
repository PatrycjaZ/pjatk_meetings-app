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
    public partial class DodajDoSpotkania : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DodajDoSpotkaniaButton1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = @"Data Source=DESKTOP-Q7C7E9V\DB00;Initial Catalog=API_PROJEKT;Integrated Security=True";
            SqlCommand objSqlCommand = new SqlCommand();

            objSqlCommand.Connection = conn;

            objSqlCommand.CommandType = CommandType.Text;

            objSqlCommand.CommandText = "INSERT INTO UDZIAL_W_SPOTKANIU(SPOTKANIE_IDSPOTKANIE, PRACOWNIK_IDPRACOWNIK, MIEJSCE_SPOTKANIA) VALUES (@SPOTKANIE_IDSPOTKANIE, @PRACOWNIK_IDPRACOWNIK, @MIEJSCE_SPOTKANIA) select SCOPE_IDENTITY()";

            objSqlCommand.Parameters.AddWithValue("@SPOTKANIE_IDSPOTKANIE", this.SpotkanieDropDownList1.SelectedItem.Value);
            objSqlCommand.Parameters.AddWithValue("@PRACOWNIK_IDPRACOWNIK", this.PracownikDropDownList2.SelectedItem.Value);
            objSqlCommand.Parameters.AddWithValue("@MIEJSCE_SPOTKANIA", this.MiejsceRadioButtonList1.SelectedItem.Value);
            conn.Open();

            objSqlCommand.ExecuteNonQuery();
        }
    }
}