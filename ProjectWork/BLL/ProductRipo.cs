using ProjectWork.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Hosting;

namespace ProjectWork.BLL
{
    public class ProductRipo
    {
        ProductDbContext db;
        public ProductRipo() { this.db = new ProductDbContext(); }

        public IQueryable<ProductDTO> GetProduct(string sortExpression, int startRowIndex, int maximumRows)
        {
            List<Product> data;
            if (string.IsNullOrEmpty(sortExpression))
                data = db.Products.OrderBy(x => x.ProductsId).ToList();
            else if (sortExpression == "ProductsId")
                data = db.Products.OrderBy(x => x.ProductsId).ToList();
            else
                data = db.Products.OrderByDescending(x => x.ProductsId).ToList();
            return data
                .Skip(startRowIndex)
                .Take(maximumRows)
                .Select(b => new ProductDTO { ProductsId=b.ProductsId,ProductsName=b.ProductsName,Picture=b.Picture,ProductsPrice=b.ProductsPrice,Id=b.Id,CatagoryName=b.Category.Name})
                .AsQueryable();
        }
        public int GetProductCount()
        {
            return db.Products.Count();
        }
        public void InsertProduct(ProductDTO p)
        {
            
            db.Products.Add(new Product {ProductsId=p.ProductsId,ProductsName=p.ProductsName,Picture=p.Picture,ProductsPrice=p.ProductsPrice,Id=p.Id});
            db.SaveChanges();
        }
        public void UpdateProduct(ProductDTO p)
        {

            var existing = db.Products.First(x => x.ProductsId == p.ProductsId);
            existing.ProductsName = p.ProductsName;
            existing.Picture = p.Picture;
            existing.ProductsPrice = p.ProductsPrice;
            existing.Id = p.Id;
            db.SaveChanges();
        }
        public void DeleteProduct(ProductDTO p)
        {

            var existing = db.Products.First(x => x.ProductsId == p.ProductsId);
            db.Products.Remove(existing);
            db.SaveChanges();
        }
        public IQueryable<Category> GetCatForDropDown()
        {
            return db.Categories;
        }
    }
}