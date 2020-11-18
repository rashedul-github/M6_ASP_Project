using ProjectWork.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectWork.BLL
{
    
    public class CatagoryRipo
    {
        ProductDbContext db;
        public CatagoryRipo() { this.db = new ProductDbContext(); }
        public IQueryable<CatagoryDTO> GetCatagories(string sortExpression, int startRowIndex, int maximumRows)
        {
            List<Category> data;
            if (string.IsNullOrEmpty(sortExpression))
                data = db.Categories.OrderBy(x => x.Id).ToList();
            else if(sortExpression == "Id")
                data = db.Categories.OrderBy(x => x.Id).ToList();
            else
                data = db.Categories.OrderByDescending(x => x.Id).ToList();
            return data
                .Skip(startRowIndex)
                .Take(maximumRows)
                .Select(b => new CatagoryDTO { Id=b.Id,Name=b.Name })
                .AsQueryable();
        }
        public int GetCatagoriesCount()
        {
            return db.Categories.Count();
        }
        public void InsertCat(CatagoryDTO c)
        {

            db.Categories.Add(new Category {Id=c.Id,Name=c.Name});
            db.SaveChanges();
        }
        public void UpdateCat(CatagoryDTO c)
        {

            var existing = db.Categories.First(x => x.Id==c.Id);
            existing.Name= c.Name;

            db.SaveChanges();
        }
        public void DeleteCat(CatagoryDTO c)
        {

            var existing = db.Categories.First(x => x.Id == c.Id);
            db.Categories.Remove(existing);
            db.SaveChanges();
        }
    }
}