using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_aspNet
{
    public partial class inserir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
    
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            string sexo = "";
            sexo = txtF.Checked ? "F" : "M";

            cmd.CommandText = "Insert into Motoristas values (@CPF, @Nome, @Sexo, @Idade, 1)";
            cmd.Parameters.AddWithValue("CPF", txtCPF.Text );
            cmd.Parameters.AddWithValue("Nome", txtNome.Text);
            cmd.Parameters.AddWithValue("Sexo", sexo);
            cmd.Parameters.AddWithValue("Idade", txtIdade.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("index.aspx");
        }

        private void txtIdade_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtIdade.Text, "[^0-9]"))
            {
                // MessageBox.Show("Please enter only numbers.");
                txtIdade.Text = txtIdade.Text.Remove(txtIdade.Text.Length - 1);
            }
        }
    }
}