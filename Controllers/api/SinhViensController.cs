using System.Linq;
using System.Web.Http;
using TSVID_API.Models;

namespace TSVID_API.api.Controllers
{
    public class SinhViensController:ApiController
    {
        private DBContext db = new DBContext();
        [Route("api/SinhViens/Register")]
        public int Register([FromBody] SinhVien sinhVien)
        {
            if (sinhVien != null)
            {
                db.SinhViens.Add(sinhVien);
                return db.SaveChanges();
            }

            return 0;
        }

        [Route("api/SinhViens/Login")]
        public bool Login(string id, string password)
        {
            var model = db.SinhViens.FirstOrDefault(x => x.ID.ToString().Equals(id) && x.MatKhau.Equals(password));
            if (model != null) return true;
            return false;
        }

        [Route("api/SinhViens/GetSV")]
        public SinhVien GetSinhVien(string id)
        {
            if (string.IsNullOrEmpty(id)) return null;
            else
            {
                var model = db.SinhViens.Find(int.Parse(id));
                return model;
            }
            
        }
    }
}