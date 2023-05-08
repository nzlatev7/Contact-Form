using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Contact_Form
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //connectionString
        public string conString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog = Contact; Integrated Security = True";
        //public string conString = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

        protected void btnContact_Click(object sender, EventArgs e)
        {
            //validate the data
            bool isValid = ValidateData();

            //if the data is incorrect
            if (!isValid)
            {
                MakingTxtsEmpty();

                return;
            }

            //insert the data into the Information table
            Insert();

            //send email to the support
            EmailSender();
        }
        private void MakingTxtsEmpty()
        {
            //make all txts empty
            txt_firstName.Text = string.Empty;
            txt_lastName.Text = string.Empty;
            txt_email.Text = string.Empty;
            txt_message.Text = string.Empty;
            txt_subject.Text = string.Empty;
        }
        private bool ValidateData()
        {
            // Don't allow fields empty
            if (txt_email.Text == string.Empty || txt_firstName.Text == string.Empty || 
                txt_message.Text == string.Empty || txt_subject.Text == string.Empty)
            {
                return false;
            }
            if (!EmailValidation())
            {
                return false;
            }

            return true;
        }
        private bool EmailValidation()
        { 
            string emailPattern = @"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";

            bool isEmailValid = Regex.IsMatch(txt_email.Text, emailPattern);

            if (isEmailValid)
            {
                return true;
            }
            return false;
        }
        private void Insert()
        {
            //making the connection
            SqlConnection con = new SqlConnection(conString);

            //open it
            con.Open();

            //insert into table
            string q = "insert into Information(Email,Subject,FirstName,LastName,Message)values('" + txt_email.Text.ToString() + "','" + txt_subject.Text.ToString() + "','" + txt_firstName.Text.ToString() + "','" + txt_lastName.Text.ToString() + "','" + txt_message.Text.ToString() + "')";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
        }
        private void EmailSender()
        {
            try
            {
                string from = "mark.efendi444@gmail.com";
                string to = "mark.efendi444@gmail.com";

                //if it does not work, you need to add App Password - https://myaccount.google.com/apppasswords
                const string password = "YourPassword";

                string mailSubject = txt_subject.Text;

                //making a stringBuilder, because when we need to add text sb is more powerful
                StringBuilder fullMessage = new StringBuilder();
                fullMessage.AppendLine($"From: {txt_firstName.Text} {txt_lastName.Text}");
                fullMessage.AppendLine($"Email: {txt_email.Text}");
                fullMessage.AppendLine($"Subject: {txt_subject.Text}");
                fullMessage.AppendLine($"Message: {txt_message.Text}");

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential(from, password);
                smtp.Timeout = 20000;

                smtp.Send(from, to, mailSubject, fullMessage.ToString());

                //message if ypu successful send email
                confirm.Text = "Thank you for your email!";

                //make all txts empty
                MakingTxtsEmpty();
            }
            catch (Exception a)
            {
                confirm.Text = a.Message;
                confirm.ForeColor = Color.Red;
            }
        }
    }
}