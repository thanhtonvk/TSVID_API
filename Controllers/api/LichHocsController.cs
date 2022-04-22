using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using TSVID_API.Models;

namespace TSVID_API.api.Controllers
{
    public class LichHocsController:ApiController
    {
        private TSVIDEntities db = new TSVIDEntities();
        [Route("api/LichHocs/GetLichHoc")]
        public IEnumerable<LichHoc> GetLichHoc(int idSV)
        {
            return db.LichHocs.Where(x => x.IDSV == idSV && x.Status==1);
        }
        [Route("api/LichHos/GetLichHocByTuan")]
        [HttpGet]
        public IEnumerable<getlichhoc_Result> GetLichHoc(string tuan, int id, string nam)
        {
            return db.getlichhoc(tuan, id, nam);
        }

    }
}