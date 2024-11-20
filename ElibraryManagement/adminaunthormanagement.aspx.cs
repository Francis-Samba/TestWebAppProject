using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class adminaunthormanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        // add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if(checkIfAuthorExist())
            {
                string alertMessage = "Author with this ID: " + TextBox3.Text + " already Exist. You cannot add author's with the same ID";
                string encodedMessage = HttpUtility.JavaScriptStringEncode(alertMessage);
                Response.Write("<script>alert('" + encodedMessage + "')</script>");
            }
            else
            {
                addNewAuthor();
            }
        }
        // update button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {
                updateAuthor();                                                
            }
            else
            {
                string alertMessage = "Author with this ID: " + TextBox3.Text + " does not Exist. You add author ID first";
                string encodedMessage = HttpUtility.JavaScriptStringEncode(alertMessage);
                Response.Write("<script>alert('" + encodedMessage + "')</script>");

            }
        }
        // delete button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {
                deleteAuthor();
            }
            else
            {
                string alertMessage = "Author with this ID: " + TextBox3.Text + " does not Exist. Add author ID first";
                string encodedMessage = HttpUtility.JavaScriptStringEncode(alertMessage);
                Response.Write("<script>alert('" + encodedMessage + "')</script>");

            }

        }
        // Go button click
        protected void Button4_Click(object sender, EventArgs e)
        {

        }
        // user defined function
        void deleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM author_master_tbl WHERE author_id ='" + TextBox3.Text.Trim() + "';", con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Deleted Successfully');</script>");
                clearTextBox();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void updateAuthor()
        {
             try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET author_name = @author_name WHERE author_id ='" + TextBox3.Text.Trim() + "';", con);

                cmd.Parameters.AddWithValue("@author_name", TextBox4.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Update Successfull');</script>");
                clearTextBox();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl VALUES(@author_id, @author_name)", con);

                cmd.Parameters.AddWithValue("@author_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox4.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Successfully Added');</script>");
                clearTextBox();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkIfAuthorExist() 
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from author_master_tbl where author_id ='" + TextBox3.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;

                }



                //con.Close();
                //Response.Write("<script>alert('Sign Up Successful. Go to User Login page to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void clearTextBox()
        {
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}