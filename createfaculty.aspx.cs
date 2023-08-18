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
    public partial class createfaculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (pkviolation())
            {
                Response.Write("<script>alert('PRIMARY KEY VIOLATION');</script>");
            }
            else
            {
                register();
                Response.Write("<script>alert('Faculty Added');</script>");
            }
           
            
        }
        void register()
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
            conn.Open();

            SqlCommand cm;
            string Fac_ID = TextBox1.Text;
            string Fac_name = TextBox2.Text;
            string Fac_Password = TextBox3.Text;
            //string pro_num = TextBox4.Text;
            //string sem = TextBox5.Text;
            string acstatus = "pending";
            string query = "Insert into FACULTY values ('" + Fac_ID + "','" + Fac_name + "','" + Fac_Password + "')";
            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();


            cm.Dispose();
            conn.Close();
        }
        bool pkviolation()
        {
            try
            {
                SqlConnection connec = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
                if (connec.State == ConnectionState.Closed)
                {
                    connec.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from FACULTY where Faculty_id='" + TextBox1.Text.Trim() + "';", connec);
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


        bool fkviolation()
        {
            try
            {
                SqlConnection connec = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
                if (connec.State == ConnectionState.Closed)
                {
                    connec.Open();
                }
                //SqlCommand cmd = new SqlCommand("SELECT * from PROJECT where Project_no='" + TextBox4.Text.Trim() + "';", connec);
                //SqlDataAdapter data_ad = new SqlDataAdapter(cmd);
                DataTable dtable = new DataTable();
               // data_ad.Fill(dtable);
                if (dtable.Rows.Count == 0)
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