//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectWork.Models
{
    using System;
    using System.Collections.Generic;
    using System.Web;

    public partial class Product
    {
        public int ProductsId { get; set; }
        public string Picture { get; set; }
        public string ProductsName { get; set; }
        public decimal ProductsPrice { get; set; }
        public int Id { get; set; }
    
        public virtual Category Category { get; set; }
    }
}
