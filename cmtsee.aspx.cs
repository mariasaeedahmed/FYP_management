using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fyp
{
    public partial class cmtsee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string stid = Session["sd"].ToString();
            //string stid = Session["the_student"].ToString();
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
            conn.Open();

            string query = "select * from STUDENT ";
            //string f = "select project_num from STUDENT where Roll_no=@studid";
            SqlCommand cm;
            SqlCommand com;
            cm = new SqlCommand(query, conn);
            // com = new SqlCommand(f, conn);
           // cm.Parameters.AddWithValue("@studid", stid);
            // com.Parameters.AddWithValue("@studid", stid);

            SqlDataReader reader = cm.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();

            //  cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();
            conn.Open();
            string new_query = "select * from STUDENT where STUDENT.Project_no= (select Project_no from STUDENT where Roll_no = @studid)";
            //string new_query = "select STUDENT.Roll_no,	STUDENT.Student_Name,	STUDENT.Project_no,	STUDENT.Semester_no	 from STUDENT,  PROJECT_MEMBERS where PROJECT_MEMBERS.Project_no = (select Project_no from STUDENT where Roll_no = @studid) and PROJECT_MEMBERS.Roll_no= STUDENT.Roll_no";
            //"select* from STUDENT inner join on  PROJECT_MEMBERS.Project_no = (select Project_no from STUDENT where Roll_no = @studid)  ";
            SqlCommand coom = new SqlCommand(new_query, conn);
            coom.Parameters.AddWithValue("@studid", stid);
            reader = coom.ExecuteReader();
           // GridView2.DataSource = reader;
           //GridView2.DataBind();
            coom.Dispose();
            conn.Close();
            conn.Open();
            string quer = "select Project.Project_no,Project.Title,SUPERVISOR.Supervisor_name  from Project, Supervisor where SUPERVISOR.Supervisor_name = (select Supervisor_name where SUPERVISOR.Supervisor_id = Project.Supervisor_id)";
            //string quer = "select SUPERVISOR.Supervisor_id, SUPERVISOR.Supervisor_name FROM SUPERVISOR,PROJECT where  SUPERVISOR.Supervisor_id= PROJECT.Supervisor_id and PROJECT.Project_no= (select Project_no from STUDENT where Roll_no = @studid) ";
            SqlCommand commm;
            commm = new SqlCommand(quer, conn);
            commm.Parameters.AddWithValue("@studid", stid);
            reader = commm.ExecuteReader();
            GridView3.DataSource = reader;
            GridView3.DataBind();

            commm.Dispose();
            conn.Close();



        }
    }
}