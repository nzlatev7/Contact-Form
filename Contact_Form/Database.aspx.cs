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
            //зареждаме информацията от базата данни
            SqlConnection sqlCon = new SqlConnection(conString);


            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Information", sqlCon);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);

            // bind our info with GridView 
            gv.DataSource = dtbl;
            gv.DataBind();

        }
    }
}