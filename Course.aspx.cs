using System;
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
    public partial class Course : System.Web.UI.Page
    {
        private readonly string _connectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridShow();
            }
        }

        private void GridShow()
        {
            using (var conn = new SqlConnection(_connectionString))
            using (var sda = new SqlDataAdapter("SELECT * FROM Course", conn))
            {
                var dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
                        GridView1.EditIndex = -1;
                         GridShow();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
             GridView1.PageIndex = e.NewPageIndex;
            GridShow();
        }
        

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
                    int CourseId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            SqlConnection con1 = new SqlConnection(_connectionString);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("Delete from Course where CID=@1", con1);
            cmd1.Parameters.AddWithValue("@1", CourseId);
            int result = cmd1.ExecuteNonQuery();
            con1.Close();
            if (result > 0)
            {
                Label1.Text = "Course Deleted Successful";
                Label1.ForeColor = System.Drawing.Color.DarkGreen;
            }
            else
            {
                Label1.Text = "Error in deleting Course";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            GridShow();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
                
            GridView1.EditIndex = e.NewEditIndex;
            GridShow();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string courseName = (row.FindControl("TextBox2") as TextBox).Text;
            using (var conn = new SqlConnection(_connectionString))
            using (var cmd = new SqlCommand("UPDATE Course SET CourseName = @CourseName WHERE CID = @CID", conn))
            {
                cmd.Parameters.AddWithValue("@CourseName", courseName);
                cmd.Parameters.AddWithValue("@CID", cId);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(_connectionString);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Course where CourseName='" + TextBox1.Text.ToString() + "' ", con1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Label1.Text = "This Course is Already Present";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                SqlConnection con = new SqlConnection(_connectionString);
                SqlCommand cmd = new SqlCommand("insert into Course(CourseName) values('" + TextBox1.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Course added Successfully";
                Label1.ForeColor = System.Drawing.Color.DarkGreen;
                TextBox1.Text = "";
                GridShow();
            }
        }

    }
}