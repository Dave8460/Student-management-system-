﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_System
{
    public partial class Teacher : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridShow();
        }

         private void GridShow()
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("select TName as Name,TUserID as EmailID from Teacher", con);
            con.Open();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(str);
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from Teacher where TUserID='" + TextBox3.Text.ToString() + "'", con2);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Label1.Text = "Enter Email ID is Already Registered";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
            else
            {
                string Fname = TextBox2.Text;
                string Lname = TextBox4.Text;
                string Fullname = Fname + Lname;
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Teacher(TName,TUserID,TPassword) values(@1,@2,@3)",con);
                cmd.Parameters.AddWithValue("@1",Fullname);
                cmd.Parameters.AddWithValue("@2",TextBox3.Text);
                cmd.Parameters.AddWithValue("@3",TextBox1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text="Successfuly Added";
                Label1.ForeColor=System.Drawing.Color.Green;
                TextBox2.Text="";
                TextBox3.Text="";
                TextBox1.Text="";
                TextBox4.Text="";
                GridShow();
            }
        } 
       
    }
}