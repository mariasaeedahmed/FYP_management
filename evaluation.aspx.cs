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
    public partial class evaluation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-9PHPQFO\\SQLEXPRESS;Initial Catalog=FYP;Integrated Security=True");
            string grpno = TextBox1.Text;

            SqlCommand cmd = new SqlCommand("insert into EVALUATION_FORM (Poster,Work_breakdown,Content_Quality,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15) values (@n1,@n2,@n3,@n4,@n5,@n6,@n7,@n8,@n9,@n10,@n11,@n12,@n13,@n14,@n15)", con);
            cmd.Parameters.AddWithValue("n1", RadioButtonList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n2", RadioButtonList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n3", RadioButtonList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n4", RadioButtonList4.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n5", RadioButtonList5.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n6", RadioButtonList6.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n7", RadioButtonList7.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n8", RadioButtonList8.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n9", RadioButtonList9.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n10", RadioButtonList10.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n11", RadioButtonList11.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n12", RadioButtonList12.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n13", RadioButtonList13.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n14", RadioButtonList14.SelectedItem.Text);
            cmd.Parameters.AddWithValue("n15", RadioButtonList15.SelectedItem.Text);

            cmd.Parameters.AddWithValue("@g", grpno);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (i != 0)
            {
                Response.Write("<script>alert('EVALUATION ADDED');</script>");
            }
            else
            {

                Response.Write("<script>alert('Error');</script>");

            }

        }
    }
}