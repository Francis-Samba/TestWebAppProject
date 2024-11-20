using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // user login
        protected void Button1_Click(object sender, EventArgs e)
        {
            try 
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed) 
                { 
                    con.Open();                
                }
                SqlCommand cmd = new SqlCommand("Select * from member_master_tbl where member_id ='" + TextBox1.Text.Trim() + "' and password = '"+ TextBox2.Text.Trim() + "';", con);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        //Response.Write("<script>alert('Valid User: " + rdr.GetValue(8).ToString() + "')</script>");
                        Response.Write("<script>alert('Login Successful!')</script>");
                        Session["username"] = rdr.GetValue(8).ToString();
                        Session["fullname"] = rdr.GetValue(0).ToString();
                        Session["status"] = rdr.GetValue(10).ToString();
                        Session["role"] = "user";


                    }
                    Response.Redirect("homepage.aspx");
                }
                else 
                {
                    Response.Write("<script>alert('Invalid Credential')</script>");
                
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            //Response.Write("<script>alert('Succesful button Click');</script>");

        }
    }
}