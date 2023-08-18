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
    public partial class student_interface : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string stid = Session["the_student"].ToString();
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
            conn.Open();

            string query = "select * from STUDENT where Roll_no=@studid";
            //string f = "select project_num from STUDENT where Roll_no=@studid";
            SqlCommand cm;
            SqlCommand com;
            cm = new SqlCommand(query, conn);
           // com = new SqlCommand(f, conn);
            cm.Parameters.AddWithValue("@studid", stid);
           // com.Parameters.AddWithValue("@studid", stid);

            SqlDataReader reader = cm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

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
            GridView2.DataSource = reader;
            GridView2.DataBind();
            coom.Dispose();
            conn.Close();
            conn.Open();
            string quer = "select SUPERVISOR.Supervisor_id, SUPERVISOR.Supervisor_name FROM SUPERVISOR,PROJECT where  SUPERVISOR.Supervisor_id= PROJECT.Supervisor_id and PROJECT.Project_no= (select Project_no from STUDENT where Roll_no = @studid) ";
            SqlCommand commm;
            commm = new SqlCommand(quer, conn);
            commm.Parameters.AddWithValue("@studid", stid);
            reader = commm.ExecuteReader();
            GridView3.DataSource = reader;
            GridView3.DataBind();

            commm.Dispose();
            conn.Close();
            conn.Open();


            string queri = "select Panel_member, FACULTY.Faculty_name  FROM PANEL,PROJECT, FACULTY where  PANEL.Panel_id = PROJECT.Panel_id and PANEL.Panel_member= FACULTY.Faculty_id and  PROJECT.Panel_id =(select Project_no from STUDENT where Roll_no = @studid) ";

            SqlCommand c;
            c = new SqlCommand(queri, conn);
            c.Parameters.AddWithValue("@studid", stid);
            reader = c.ExecuteReader();
            GridView4.DataSource = reader;
            GridView4.DataBind();
            commm.Dispose();
            conn.Close();
        }


        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}