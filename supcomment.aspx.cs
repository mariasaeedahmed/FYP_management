
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;

namespace fyp
{
    public partial class supcomment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
            conn.Open();

            SqlCommand cm;
            string grpno = TextBox1.Text;
            string rev = TextBox2.Text;
            string sid= TextBox3.Text;

           
            string query = "UPDATE PROJECT SET SReview = @r WHERE Supervisor_id =@s AND  Project_no =@g";
            //update project set supervisorid and panel Id where project no. equals ...
            cm = new SqlCommand(query, conn);
            cm.Parameters.AddWithValue("@r", rev);
            cm.Parameters.AddWithValue("@s", sid);
            cm.Parameters.AddWithValue("@g", grpno);

            
            
            cm.ExecuteNonQuery();
            Response.Write("<script>alert('REVIEW ADDED');</script>");
            Response.Redirect("supsee.aspx");

            cm.Dispose();
            conn.Close();
        }
    }
}