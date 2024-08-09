using Microsoft.EntityFrameworkCore;
using QLKyTucXa.Controller.Interfaces;
using QLKyTucXa.models;

namespace QLKyTucXa.Controller.Services
{
    public class TaiKhoanServices : ITaiKhoanServices
    {
        private readonly DataQlktxContext _qlktxContext;
        public TaiKhoanServices(DataQlktxContext qlktxContext)
        {
            _qlktxContext = qlktxContext;
        }
        //them danh sach phong
        public async Task AddtaikhoanAsync(Taikhoan phong)
        {
            _qlktxContext.Taikhoans.Add(phong);
            await _qlktxContext.SaveChangesAsync();
        }
        //xoa phong
        public async Task DeletetaikhoanAsync(string id)
        {
            var pho = await GettaikhoanByIdAsync(id);
            if (pho != null)
            {
                _qlktxContext.Remove(pho);
                await _qlktxContext.SaveChangesAsync();
            }
        }
        //lay danh sach phong
        public async Task<List<Taikhoan>> GettaikhoanAsync()
        {
            var pho = await _qlktxContext.Taikhoans.ToListAsync();
            return pho;
        }
        //lay phong bang id
        public async Task<Taikhoan?> GettaikhoanByIdAsync(string id)
        {
            var pho = await _qlktxContext.Taikhoans.FirstOrDefaultAsync(e => e.Iduser == id);
            return pho;
        }
        //cap nhat phong
        public async Task UpdatetaikhoanAsync(Taikhoan phong)
        {
            _qlktxContext.Entry(phong).State = EntityState.Modified;
            await _qlktxContext.SaveChangesAsync();
        }
    }
}
