using Microsoft.EntityFrameworkCore;
using QLKyTucXa.Controller.Interfaces;
using QLKyTucXa.Data;

namespace QLKyTucXa.Controller.Services
{
    public class NhanVienServices : INhanVienServices
    {
        private readonly DataQlktxContext _qlktxContext;
        public NhanVienServices(DataQlktxContext qlktxContext)
        {
            _qlktxContext = qlktxContext;
        }
        //them danh sach phong
        public async Task AddPhongAsync(Nhanvien phong)
        {
            _qlktxContext.Nhanviens.Add(phong);
            await _qlktxContext.SaveChangesAsync();
        }
        //xoa phong
        public async Task DeletePhongAsync(string id)
        {
            var pho = await GetPhongByIdAsync(id);
            if (pho != null)
            {
                _qlktxContext.Remove(pho);
                await _qlktxContext.SaveChangesAsync();
            }
        }
        //lay danh sach phong
        public async Task<List<Nhanvien>> GetPhongAsync()
        {
            var pho = await _qlktxContext.Nhanviens.ToListAsync();
            return pho;
        }
        //lay phong bang id
        public async Task<Nhanvien?> GetPhongByIdAsync(string id)
        {
            var pho = await _qlktxContext.Nhanviens.FirstOrDefaultAsync(e => e.IdnhanVien == id);
            return pho;
        }
        //cap nhat phong
        public async Task UpdatePhongAsync(Nhanvien phong)
        {
            _qlktxContext.Entry(phong).State = EntityState.Modified;
            await _qlktxContext.SaveChangesAsync();
        }
        //laybangidUser
        public async Task<Nhanvien?> GetnhavienByIduserAsync(string id)
        {
            var pho = await _qlktxContext.Nhanviens.FirstOrDefaultAsync(e => e.Iduser == id);
            return pho;
        }
    }
}
