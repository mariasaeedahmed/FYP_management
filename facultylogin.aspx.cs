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
    public partial class facultylogin : System.Web.UI.Page
    {
        string strc = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
            conn.Open();
            SqlCommand cm;
            string id = TextBox1.Text;
            string passwording = TextBox2.Text;

            string the_query = "select count(1) from FACULTY where Faculty_id = @fid and password= @pword";
            cm = new SqlCommand(the_query, conn);
            cm.Parameters.AddWithValue("@fid", id);
            cm.Parameters.AddWithValue("@pword", passwording);
            int checker = Convert.ToInt32(cm.ExecuteScalar());
            if (checker > 0)
            {
                Session["Role_U"] = "Faculty";
                //Session["the_student"] = id;
                Response.Redirect("midder.aspx");
            }
            else
            {
                Response.Write("<script>alert('Incorrect Password or Faculty ID doesn't exit');</script>");
            }
            cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();
        }
    }
}