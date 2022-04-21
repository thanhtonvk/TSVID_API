using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using TSVID_API.Models;

namespace TSVID_API.api.Controllers
{
    public class LichHocsController:ApiController
    {
        private DBContext db = new DBContext();
        [Route("api/LichHocs/GetLichHoc")]
        public IEnumerable<LichHoc> GetLichHoc(int idSV)
        {
            return db.LichHocs.Where(x => x.IDSV == idSV && x.Status==1);
        }
        
        
    }
}