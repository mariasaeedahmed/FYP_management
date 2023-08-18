using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fyp
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["Role_U"]==null)
                {
                    LinkButton1.Visible = true;//student login
                    LinkButton13.Visible = true;//faculty login
                    LinkButton7.Visible = false; //welcome

                    LinkButton3.Visible = false;//logout


                    LinkButton6.Visible = true;//commitee login
                    LinkButton11.Visible = false;//commitee see
                    LinkButton12.Visible = false;//Make panel
                    LinkButton8.Visible = false;//Create Faculty
                    LinkButton9.Visible = false;//Student Registeration
                    LinkButton10.Visible = false;//Make panel
                }
                else if(Session["Role_U"].Equals("Student"))
                {
                    LinkButton1.Visible = false;//login
                    LinkButton7.Visible = true; //welcome
                    LinkButton13.Visible = false;//faculty login
                    LinkButton3.Visible = true;//logout
                     
                    LinkButton6.Visible = true;//commitee login
                    LinkButton11.Visible = false;//commitee see
                    LinkButton12.Visible = false;//Make panel
                    LinkButton8.Visible = false;//Create Faculty
                    LinkButton9.Visible = false;//Student Registeration
                    LinkButton10.Visible = false;//Make panel

                }
                else if (Session["Role_U"].Equals("Faculty"))
                {
                    LinkButton1.Visible = false;//login
                    LinkButton13.Visible = false;//login
                    LinkButton7.Visible = true; //welcome

                    LinkButton3.Visible = true;//logout

                    LinkButton6.Visible = true;//commitee login
                    LinkButton11.Visible = false;//commitee see
                    LinkButton12.Visible = false;//Make panel
                    LinkButton8.Visible = false;//Create Faculty
                    LinkButton9.Visible = false;//Student Registeration
                    LinkButton10.Visible = false;//Make panel

                }
                else if (Session["Role_U"].Equals("Commitee"))
                {
                    LinkButton1.Visible = false;//login
                    LinkButton13.Visible = false;//login
                    LinkButton7.Visible = true; //welcome

                    LinkButton3.Visible = true;//logout

                    LinkButton6.Visible = false;//commitee login
                    LinkButton11.Visible = true;//commitee see
                    LinkButton12.Visible = true;//Make panel
                    LinkButton8.Visible = true;//Create Faculty
                    LinkButton9.Visible = true;//Student Registeration
                    LinkButton10.Visible = true;//Make panel

                }


            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("committee_login.aspx");
        }
        //cmtmemview
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("cmtsee.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("makepanelandsup.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("createfaculty.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("student_registeration.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("makepanel.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //logout
            Session["Role_U"] = "";
            LinkButton1.Visible = true;//student login
            LinkButton13.Visible = true;//faculty login
            LinkButton7.Visible = false; //welcome

            LinkButton3.Visible = false;//logout


            LinkButton6.Visible = true;//commitee login
            LinkButton11.Visible = false;//commitee see
            LinkButton12.Visible = false;//Make panel
            LinkButton8.Visible = false;//Create Faculty
            LinkButton9.Visible = false;//Student Registeration
            LinkButton10.Visible = false;//Make panel
            Response.Redirect("Home.aspx");

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            //welcome
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //Signup
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //userlogin
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            //view
        }
        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            //userlogin
            Response.Redirect("facultylogin.aspx");
        }

        protected void LinkButton13_Click1(object sender, EventArgs e)
        {
            //faculty login
            Response.Redirect("facultylogin.aspx");

        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}