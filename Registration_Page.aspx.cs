using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Registration_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string connect = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connect))
        {

            SqlCommand cmd = new SqlCommand("insert into Registration(Name,Phone_No,Address,User_Name,Password) values(@Name,@Phone_No,@Address,@User_Name,@Password)", con);
            con.Open();
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Phone_No", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@User_Name", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", TextBox5.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("DataShow.aspx");
        }
       
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}