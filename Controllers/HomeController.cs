using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSVID_API.Models;

namespace TSVID_API.Controllers
{
    public class HomeController : Controller
    {
        TSVIDEntities db = new TSVIDEntities();
        public ActionResult Index()
        {
            return View(db.SinhViens);
        }
    }
}
