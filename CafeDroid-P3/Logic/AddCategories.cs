using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CafeDroid_P3.Models;

namespace CafeDroid_P3.Logic
{
    public class AddCategories
    {
        public bool AddCategory(string CategoryName, string CategoryDesc)
        {
            var myCategory = new Category();
            myCategory.CategoryName = CategoryName;
            myCategory.Description = CategoryDesc;

            using (ProductContext _db = new ProductContext())
            {
                // Add product to DB.
                _db.Categories.Add(myCategory);
                _db.SaveChanges();
            }
            // Success.
            return true;
        }
    }
}