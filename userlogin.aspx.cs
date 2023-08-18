using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

using System.Data.SqlClient;
namespace fyp
{
    public partial class userlogin : System.Web.UI.Page
    {
        string strc = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("strc");

            }
            catch (Exception ex)
            {

            }
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
            conn.Open();
            SqlCommand cm;
            string id = TextBox1.Text;
            string passwording = TextBox2.Text;

            
            string the_query = "select count(1) from STUDENT where Roll_no = @fid and passwords= @pword";
            cm = new SqlCommand(the_query, conn);
            cm.Parameters.AddWithValue("@fid", id);
            cm.Parameters.AddWithValue("@pword", passwording);
           // SqlDataReader dd = cm.ExecuteReader();
            int checker = Convert.ToInt32(cm.ExecuteScalar());
            if(checker>0)
            {
                //if (dd.HasRows)
                // {
                //    while (dd.Read())
                //     {
                Session["Role_U"] = "Student";
                Session["the_student"] = id;
                //  Session["Rollno"] = dd.GetValue(0).ToString();
                
                        Response.Write("<script>alert('Logging In');</script>");
                
                   // }
                    Response.Redirect("student_interface.aspx");

                //}
            }
            else
            //if (!(dd.HasRows))
            {
                Response.Write("<script>alert('Incorrect Password or Student doesn't exit');</script>");
               
            }
             
            cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();
            //Response.Write("<script>alert('Signup'));</ClientScript>");
        }
    }
}