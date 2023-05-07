using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
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

        protected void btnContact_Click(object sender, EventArgs e)
        {
            try
            {
                string from = "mark.efendi444@gmail.com";
                string to = "mark.efendi444@gmail.com";
                const string password = "pass";

                string mailSubject = txt_subject.Text;

                //making a stringBuilder, because when we need to add text sb is more powerful
                StringBuilder fullMessage = new StringBuilder();
                fullMessage.AppendLine($"From {txt_firstName} {txt_lastName}");
                fullMessage.AppendLine($"Email {txt_email}");
                fullMessage.AppendLine($"Subject {txt_subject}");
                fullMessage.AppendLine($"Messgae {txt_message}");

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(from, password);
                smtp.Timeout = 20000;

                smtp.Send(from, to, mailSubject, fullMessage.ToString());

                //thank you for your email


                //make all txts empty
                txt_firstName.Text = string.Empty;
                txt_lastName.Text = string.Empty;
                txt_email.Text = string.Empty;
                txt_message.Text = string.Empty;
                txt_subject.Text = string.Empty;
            }
            catch (Exception a)
            {
                Console.WriteLine(a.Message);
            }
        }
    }
}