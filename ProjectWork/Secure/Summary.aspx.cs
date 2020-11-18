using ProjectWork.Models;
using ProjectWork.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWork.Secure
{
    public partial class Summary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductDbContext db = new ProductDbContext();
            var data = db.Products
                .Select(x => new ProductVM
                {
                    ProductsId = x.ProductsId,
                    ProductsName = x.ProductsName,
                    ProductsPrice = x.ProductsPrice,
                    Name = x.Category.Name
                }).ToList();
            CrystalReport rpt = new CrystalReport();
            rpt.SetDataSource(data);
            CrystalReportViewer1.ReportSource = rpt;
            CrystalReportViewer1.RefreshReport();
        }
    }
}