using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSQ.Models;
using PagedList;
using PagedList.Mvc;
namespace TSQ.Controllers
{
    public class SanPhamController : Controller
    {
        // GET: SanPham
        public ActionResult Index(int id, int ? page)
        {
            int pageSize = 3;
            int pageNum = (page ?? 1);
            donghoDataContext db = new donghoDataContext();
            var query = from
                        dh in db.DONGHOs where dh.MaTH==id
                        select dh;
           
            return View(query.ToPagedList(pageNum,pageSize));
        }
        public ActionResult SPCungTH(int id,int MaTH, int? page)
        {
            int pageSize = 4;
            int pageNum = (page ?? 1);
            donghoDataContext db = new donghoDataContext();
            ViewData["MaSP"] = id;
            var query = from
                        dh in db.DONGHOs
                        where dh.MaTH == MaTH && dh.MaSP!= id
                        select dh;
            return PartialView(query.ToPagedList(pageNum, pageSize));
        }
        public ActionResult Detail(int id)
        {
            donghoDataContext db = new donghoDataContext();
            var query = from
                        dh in db.DONGHOs
                        where dh.MaSP == id
                        select dh;
            return View(query.Single());
        }

    }
}