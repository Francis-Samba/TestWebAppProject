using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null || Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton5.Visible = false; // hello user link button

                    LinkButton6.Visible = true; // admin login link button
                    LinkButton7.Visible = false; // author management link button
                    LinkButton8.Visible = false; // publisher management link button
                    LinkButton9.Visible = false; // book inventory link button
                    LinkButton10.Visible = false; // book issuing link button
                    LinkButton11.Visible = false; // member management link button

                }
                else if (Session["role"].Equals("user")) 
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton5.Visible = true; // hello user link button
                    LinkButton5.Text = "Hello "+Session["username"].ToString();

                    LinkButton6.Visible = true; // admin login link button
                    LinkButton7.Visible = false; // author management link button
                    LinkButton8.Visible = false; // publisher management link button
                    LinkButton9.Visible = false; // book inventory link button
                    LinkButton10.Visible = false; // book issuing link button
                    LinkButton11.Visible = false; // member management link button
                }

                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton5.Visible = true; // hello user link button
                    LinkButton5.Text = "Hello Admin";

                    LinkButton6.Visible = false; // admin login link button
                    LinkButton7.Visible = true; // author management link button
                    LinkButton8.Visible = true; // publisher management link button
                    LinkButton9.Visible = true; // book inventory link button
                    LinkButton10.Visible = true; // book issuing link button
                    LinkButton11.Visible = true; // member management link button
                }

            }
            catch (Exception ex) 
            {
                Response.Write("<script>alert('"+ ex.Message +"')</script>");
            
            }

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminaunthormanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuingpage.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("membermanagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            // clear the session
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();

            // redirect to homepage
            Response.Redirect("homepage.aspx");

            // ---Alternative way to achieve clear session---
            //Session["username"] = "";
            //Session["fullname"] = "";
            //Session["status"] = "";
            //Session["role"] = "";

            //LinkButton1.Visible = true; // user login link button
            //LinkButton2.Visible = true; // sign up link button

            //LinkButton3.Visible = false; // logout link button
            //LinkButton5.Visible = false; // hello user link button

            //LinkButton6.Visible = true; // admin login link button
            //LinkButton7.Visible = false; // author management link button
            //LinkButton8.Visible = false; // publisher management link button
            //LinkButton9.Visible = false; // book inventory link button
            //LinkButton10.Visible = false; // book issuing link button
            //LinkButton11.Visible = false; // member management link button
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }
    }
}