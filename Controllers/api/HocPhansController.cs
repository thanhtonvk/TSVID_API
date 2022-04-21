﻿using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using TSVID_API.Models;

namespace TSVID_API.api.Controllers
{
    public class HocPhansController:ApiController
    {
        private DBContext db = new DBContext();
        [Route("api/HocPhans/GetHocPhan")]
        public IEnumerable<HocPhan> GetHocPhans(int idSV)
        {
            return db.HocPhans.Where(x => x.IDSV == idSV);
        }
        
    }
}