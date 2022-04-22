using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using TSVID_API.Models;

namespace TSVID_API.api.Controllers
{
    public class SinhViensController:ApiController
    {
        private TSVIDEntities db = new TSVIDEntities();
        [Route("api/SinhViens/Register")]
        [HttpPost]
        public int Register([FromBody] SinhVien sinhVien)
        {
            if (sinhVien != null)
            {
                db.SinhViens.Add(sinhVien);
                return db.SaveChanges();
            }
            return 0;
        }
        [Route("api/SinhViens/Update")]
        [HttpPut]
        public int UpdateSV(int id,[FromBody] SinhVien sinhVien)
        {
            if (sinhVienExits(id))
            {
                if (sinhVien != null)
                db.SinhViens.Add(sinhVien);
                db.Entry(sinhVien).State = System.Data.Entity.EntityState.Modified;
                return db.SaveChanges();
            }     
            return 0;
        }
        public bool sinhVienExits(int id)
        {
            return db.SinhViens.Count(x=>x.ID == id)>0;
        }

        [Route("api/SinhViens/GetSV")]
        public SinhVien GetSinhVien(string id,string pass)
        {
            if (string.IsNullOrEmpty(id)) return null;
            else
            {
                var model = db.SinhViens.Find(int.Parse(id));
                if(model!=null&&(bool)model.Status && pass==model.MatKhau)
                {

                    return model;
                }
                return null;
            }
            
        }
        [Route("api/SinhViens/GetALLSV")]
        public IEnumerable<SinhVien> GetAllSinhVien()
        {
            return db.SinhViens.Where(x=>x.Status==true);

        }

    }
}