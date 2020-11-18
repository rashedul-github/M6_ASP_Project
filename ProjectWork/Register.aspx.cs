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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbSubmit_Click(object sender, EventArgs e)
        {
            var store = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(store);
            var user = new IdentityUser { UserName = username.Text };
            var result = manager.Create(user, password.Text);
            if (result.Succeeded)
            {
                var authManager = HttpContext.Current.GetOwinContext().Authentication;
                var identity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authManager.SignIn(new AuthenticationProperties { }, identity);
                Response.Redirect("~/Secure/Porducts.aspx");

            }
            else
            {
                this.lblError.Text = "Failed to register";
                this.msg.Visible = true;
            }
        }
    }
}