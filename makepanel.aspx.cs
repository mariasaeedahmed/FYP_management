﻿using System;
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
    public partial class makepanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
           // if (pkviolation())
           // {
            //    Response.Write("<script>alert('PRIMARY KEY VIOLATION');</script>");
            //}

            //else
            {
                register();
                Response.Write("<script>alert('Panel Created');</script>");
            }
        }
        void register()
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
            conn.Open();

            SqlCommand cm;
            string Panel_ID = TextBox1.Text;
            string Fac_ID = TextBox2.Text;
            string filled = TextBox3.Text;
            string passwords = TextBox4.Text;
            //string sem = TextBox5.Text;
            //string acstatus = "pending";
            string query = "Insert into PANEL values ('" + Panel_ID + "','" + Fac_ID + "','" + filled + "','"+passwords+"')";
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
                SqlCommand cmd = new SqlCommand("SELECT * from PANEL where Panel_id='" + TextBox1.Text.Trim() + "';", connec);
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

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }


        //}

        //void assign()
        //{
        //    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-1UK6CAD\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
        //    conn.Open();

        //    SqlCommand cm;
        //    string rollnum = TextBox1.Text;
        //    string passwords = TextBox2.Text;
        //    string stna = TextBox3.Text;
        //    string pro_num = TextBox4.Text;
        //    string sem = TextBox5.Text;
        //    string acstatus = "pending";
        //    string query = "Insert into STUDENT values ('" + rollnum + "','" + stna + "','" + pro_num + "','" + sem + "','" + passwords + "','" + acstatus + "')";
        //    cm = new SqlCommand(query, conn);
        //    cm.ExecuteNonQuery();


        //    cm.Dispose();
        //    conn.Close();
        //}

        //bool pkviolation()
        //{
        //    try
        //    {
        //        SqlConnection connec = new SqlConnection("Data Source=DESKTOP-1UK6CAD\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
        //        if (connec.State == ConnectionState.Closed)
        //        {
        //            connec.Open();
        //        }
        //        SqlCommand cmd = new SqlCommand("SELECT * from STUDENT where Roll_no='" + TextBox1.Text.Trim() + "';", connec);
        //        SqlDataAdapter data_ad = new SqlDataAdapter(cmd);
        //        DataTable dtable = new DataTable();
        //        data_ad.Fill(dtable);
        //        if (dtable.Rows.Count >= 1)
        //        {
        //            return true;
        //        }
        //        else
        //        {
        //            return false;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //        return false;
        //    }
        //}

        //bool fkviolation()
        //{
        //    try
        //    {
        //        SqlConnection connec = new SqlConnection("Data Source=DESKTOP-1UK6CAD\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
        //        if (connec.State == ConnectionState.Closed)
        //        {
        //            connec.Open();
        //        }
        //        SqlCommand cmd = new SqlCommand("SELECT * from PROJECT where Project_no='" + TextBox4.Text.Trim() + "';", connec);
        //        SqlDataAdapter data_ad = new SqlDataAdapter(cmd);
        //        DataTable dtable = new DataTable();
        //        data_ad.Fill(dtable);
        //        if (dtable.Rows.Count == 0)
        //        {
        //            return true;
        //        }
        //        else
        //        {
        //            return false;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //        return false;
        //    }



        //}
    }
}