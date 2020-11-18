using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWork
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntLogin_Click(object sender, EventArgs e)
        {
            string returnUrl = "~/Secure/Porducts.aspx";
            if (!string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
            {
                returnUrl = Request.QueryString["ReturnUrl"];
            }
            var store = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(store);
            var user = manager.Find(username.Text, password.Text);
            if (user != null)
            {
                var authManager = HttpContext.Current.GetOwinContext().Authentication;
                var identity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authManager.SignIn(new AuthenticationProperties { IsPersistent = false }, identity);
                Response.Redirect(returnUrl);
            }
            else
            {
                this.lblError.Text = "Username or password incorrect";
                this.msg.Visible = true;
            }
        }
    }
}