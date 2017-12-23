using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;

public partial class MKatalogOnline : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            if (Session["Logged"] == null)
            {
                lbtnLogin.Visible = true;
                lbtnLogout.Visible = false;
                lblKet.Visible = false;
                lblUsername.Visible = false;
                lbtnListKereta.Visible = false;
                Menu1.Visible = false;
            }
            else
            {
                if ((bool)Session["Logged"] == true)
                {
                    lbtnLogin.Visible = false;
                    lbtnLogout.Visible = true;
                    lblKet.Visible = true;
                    lblUsername.Visible = true;
                    lbtnListKereta.Visible = true;
                    lblUsername.Text = Session["Nama"].ToString();
                    Menu1.Visible = false;
                    if (Session["Hak"].ToString() == "1")
                    {
                        Menu1.Visible = true;
                    }
                }
            }
        }
    }

    protected void lbtnLogout_Click(object sender, EventArgs e)
    {
        
        FormsAuthentication.SignOut();
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }

    protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {

    }
}
