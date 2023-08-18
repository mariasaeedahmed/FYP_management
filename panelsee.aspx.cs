using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fyp
{
    public partial class panelsee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
            conn.Open();

            string query = "select Project.Project_no,Project.Title,SUPERVISOR.Supervisor_name from Project, Supervisor where SUPERVISOR.Supervisor_name = (select Supervisor_name where SUPERVISOR.Supervisor_id = Project.Supervisor_id)";
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
            Response.Redirect("evaluation.aspx");
        }
    }
}