using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWork.Secure
{
    public partial class Porducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListProducts_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            FileUpload fu = e.Item.FindControl("FileUpload1") as FileUpload;
            if (fu.HasFile)
            {
                if (fu.PostedFile.ContentLength > 0)
                {
                    var ext = Path.GetExtension(fu.PostedFile.FileName);
                    var f = Guid.NewGuid() + ext;
                    fu.PostedFile.SaveAs(Server.MapPath("~/Images/") + f);
                    e.Values["Picture"] = f;
                }
            }
        }

        protected void ListProducts_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            FileUpload fu = ListProducts.EditItem.FindControl("FileUpload2") as FileUpload;
            if (fu.HasFile)
            {
                if (fu.PostedFile.ContentLength > 0)
                {
                    var ext = Path.GetExtension(fu.PostedFile.FileName);
                    var f = Guid.NewGuid() + ext;
                    fu.PostedFile.SaveAs(Server.MapPath("~/Images/") + f);
                    e.NewValues["Picture"] = f;
                }  
            }
        }
    }
}