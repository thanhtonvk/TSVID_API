using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using TSVID_API.Models;

namespace TSVID_API.Controllers.api
{
    public class DiemController : ApiController
    {
        DBContext db = new DBContext();
        [HttpGet]
        [Route("api/Diems/GetDiem")]
        public IEnumerable<getBangDiem_Result> GetBangDiem(int idSV,int ky,string nam)
        {
            return db.getBangDiem(idSV, ky, nam);
        }
        [HttpGet]
        [Route("api/Diems/GetDiemAll")]
        public IEnumerable<getBangDiemAll_Result> GetBangDiemAll(int idSV)
        {
            return db.getBangDiemAll(idSV);
        }
        [HttpPost]
        [Route("api/Diems/PostDiem")]
        public int PostBangDiem([FromBody] BangDiem bangDiem)
        {
            db.BangDiems.Add(bangDiem);
            
            return db.SaveChanges();
        }
    }
}
