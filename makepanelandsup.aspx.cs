using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fyp
{
    public partial class makepanelandsup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////update wali query here for assigning panelmember and supervisor
             SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
            conn.Open();

            string query = "select * from FACULTY ";
            //string f = "select project_num from STUDENT where Roll_no=@studid";
            SqlCommand cm;
            SqlCommand com;
            cm = new SqlCommand(query, conn);
            // com = new SqlCommand(f, conn);
            // cm.Parameters.AddWithValue("@studid", stid);
            // com.Parameters.AddWithValue("@studid", stid);

            SqlDataReader reader = cm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

            //  cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Existss())
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
                conn.Open();

                SqlCommand cm;
                string Projno = TextBox1.Text;
                string panelid = TextBox2.Text;
                string SuperId = TextBox3.Text;

                //Project_no
                //Supervisor_id
                //Panel_id
                string query = "UPDATE PROJECT SET Supervisor_id = @s , Panel_id=@p WHERE Project_no =@r ";
                //update project set supervisorid and panel Id where project no. equals ...
                cm = new SqlCommand(query, conn);
                cm.Parameters.AddWithValue("@r", Projno);
                cm.Parameters.AddWithValue("@s", SuperId);
                cm.Parameters.AddWithValue("@p", panelid);



                cm.ExecuteNonQuery();
                Response.Write("<script>alert('Added');</script>");
                //Response.Redirect("supsee.aspx");

                cm.Dispose();
                conn.Close();
            }
            else
            {
                Response.Write("<script>alert('Project doesn't exists');</script>");

            }
           
        }
        bool Existss()
        {
            try
            {
                SqlConnection connec = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
                if (connec.State == ConnectionState.Closed)
                {
                    connec.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from PROJECT where Project_no='" + TextBox1.Text.Trim() + "';", connec);
                SqlDataAdapter data_ad = new SqlDataAdapter(cmd);
                DataTable dtable = new DataTable();
                data_ad.Fill(dtable);
                if (dtable.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
    }
}