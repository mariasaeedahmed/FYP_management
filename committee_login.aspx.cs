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
    public partial class committee_login : System.Web.UI.Page
    {
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

            // string query = "Insert into STUDENT values ('" + rollnum + "','" + stna + "','" + pro_num + "','" + sem + "','" + passwords + "')";
            string the_query = "select count(1) from  committee where committee_id  = @fid and passwords= @pword";
            cm = new SqlCommand(the_query, conn);
            cm.Parameters.AddWithValue("@fid", id);
            cm.Parameters.AddWithValue("@pword", passwording);
            int checker = Convert.ToInt32(cm.ExecuteScalar());
            if (checker > 0)
            {
                Session["Role_U"] = "Commitee";
                Session["sd"] = id;
                Response.Redirect("cmtsee.aspx");
            }
            cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();
        }
    }
}