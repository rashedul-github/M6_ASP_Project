using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectWork.BLL
{
    public class ProductDTO
    {
        public int ProductsId { get; set; }
        public string Picture { get; set; }
        public string ProductsName { get; set; }
        public decimal ProductsPrice { get; set; }
        public int Id { get; set; }
        public string CatagoryName { get; set; }
    }
}