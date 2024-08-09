using Microsoft.EntityFrameworkCore;
using QLKyTucXa.Controller.Interfaces;
using QLKyTucXa.models;

namespace QLKyTucXa.Controller.Services
{
    public class PhongServices : IPhongServices
    {
        private readonly DataQlktxContext _qlktxContext;
        public PhongServices(DataQlktxContext qlktxContext)
        {
            _qlktxContext = qlktxContext;
        }
        //them danh sach phong
        public async Task AddPhongAsync(Phong phong)
        {
            _qlktxContext.Phongs.Add(phong);
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
        public async Task<List<Phong>> GetPhongAsync()
        {
            var pho = await _qlktxContext.Phongs.ToListAsync();
            return pho;
        }
        //lay phong bang id
        public async Task<Phong?> GetPhongByIdAsync(string id)
        {
            var pho = await _qlktxContext.Phongs.FirstOrDefaultAsync(e => e.MaPhong == id);
            return pho;
        }
        //cap nhat phong
        public async Task UpdatePhongAsync(Phong phong)
        {
            _qlktxContext.Entry(phong).State = EntityState.Modified;
            await _qlktxContext.SaveChangesAsync();
        }
    }
}
