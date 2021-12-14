using EduHome.Data;
using EduHome.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace EduHome.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class BlogController : Controller
    {  private readonly AppDbContext _context;
        private readonly IWebHostEnvironment _webHostEnviromet;

        public BlogController(AppDbContext context, IWebHostEnvironment webHostEnviromet )
        {
            _context = context;
            _webHostEnviromet = webHostEnviromet;
        }
        public IActionResult Index()
        {

            return View(_context.Blogs.OrderByDescending(o=>o.CreatedDate).Include(u=>u.User).Include(c=>c.BlogCategory).Include(tb=>tb.TagToBlogs).ThenInclude(t=>t.Tag).ToList());
        }

        public IActionResult Create()
        {
            ViewBag.Category = _context.BlogCategories.ToList();
            ViewBag.Tags = _context.Tags.ToList();
            return View();
        }
        [HttpPost]
        public IActionResult Create(Blog model)
        {

            //Create Blog
            if (ModelState.IsValid)
            {
                if (model.ImageFile.ContentType == "image/jpeg" || model.ImageFile.ContentType == "image/png")
                {
                    if (model.ImageFile.Length<=2097152)
                    {
                        string fileName = Guid.NewGuid() + "-" + DateTime.Now.ToString("yyyyMMddHHmmss")+ "-" + model.ImageFile.FileName;
                        string filePath = Path.Combine(_webHostEnviromet.WebRootPath, "Uploads", fileName);

                        using (var stream=new FileStream (filePath,FileMode.Create))
                        {
                            model.ImageFile.CopyTo(stream);
                        }
                        model.Image = fileName;
                        model.CreatedDate = DateTime.Now;
                        model.UserId = 2;

                        _context.Blogs.Add(model);
                        _context.SaveChanges();


                        //Create Tag to Blog
                        if (model.TagToBlogsId != null && model.TagToBlogsId.Count > 0)
                        {
                            foreach (var item in model.TagToBlogsId)
                            {
                                TagToBlog tagToBlog = new TagToBlog();
                                tagToBlog.TagId = item;
                                tagToBlog.BlogId = model.Id;
                                _context.TagToBlogs.Add(tagToBlog);
                                _context.SaveChanges();
                            }
                        }
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        ModelState.AddModelError("", "You can only upload 2 Mb images");
                        return View();
                    }
                }
                else
                {
                    ModelState.AddModelError("", "You can only upload .jpeg,.jpg,.png");
                    return View();
                }
            }

            return View();
        }



        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                ///
            }

            Blog blog = _context.Blogs.Find(id);

            if (blog == null)
            {
                ///
            }

         

            _context.Blogs.Remove(blog);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}


   

