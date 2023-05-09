using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Contact_Form
{
    public partial class Database : System.Web.UI.Page
    {
        //connectionString
        public string conString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog = Contact; Integrated Security = True";
        //public string conString = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //making the connection
            SqlConnection sqlCon = new SqlConnection(conString);

            //open the connection
            sqlCon.Open();

            //select all info
            Select(sqlCon);
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txt_idForDelete.Text);

            //DELETE FROM Information WHERE id = {id};
            SqlConnection sqlCon = new SqlConnection(conString);
            sqlCon.Open();
            string q = $"DELETE FROM Information WHERE id = {id}";
            SqlCommand cmd = new SqlCommand(q, sqlCon);
            cmd.ExecuteNonQuery();

            //select the table in the end
            Select(sqlCon);
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txt_idForUpdate.Text);

            //DELETE FROM Information WHERE id = {id};
            SqlConnection sqlCon = new SqlConnection(conString);
            sqlCon.Open();
            string q = $"UPDATE Information SET FirstName = '{txt_firstName.Text}', LastName = '{txt_lastName.Text}', Subject = '{txt_subject.Text}', Message = '{txt_message.Text}', Email = '{txt_email.Text}' WHERE Id = {id}";
            SqlCommand cmd = new SqlCommand(q, sqlCon);
            cmd.ExecuteNonQuery();

            //select the table in the end
            Select(sqlCon);
        }
        private void Select(SqlConnection sqlCon)
        {
            
            SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Information", sqlCon);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);

            // bind our info with GridView 
            gv.DataSource = dtbl;
            gv.DataBind();
        }
    }
}