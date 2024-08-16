using Microsoft.EntityFrameworkCore;
using QLKyTucXa.Controller.Interfaces;
using QLKyTucXa.models;

namespace QLKyTucXa.Controller.Services
{
    public class HopDongServices : IHopDongServices
    {
        private readonly DataQlktxContext _qlktxContext;
        public HopDongServices(DataQlktxContext qlktxContext)
        {
            _qlktxContext = qlktxContext;
        }
        //them danh sach Hopdong
        public async Task AddhopdongAsync(Hopdong phong)
        {
            _qlktxContext.Hopdongs.Add(phong);
            await _qlktxContext.SaveChangesAsync();
        }
        //xoa Hopdong
        public async Task DeletehopdongAsync(string id)
        {
            var pho = await GetPhongByIdAsync(id);
            if (pho != null)
            {
                _qlktxContext.Remove(pho);
                await _qlktxContext.SaveChangesAsync();
            }
        }
        //lay danh sach hopdong
        public async Task<List<Hopdong>> GetPhongAsync()
        {
            var pho = await _qlktxContext.Hopdongs.ToListAsync();
            return pho;
        }
        //lay Hopdong bang id
        public async Task<Hopdong?> GetPhongByIdAsync(string id)
        {
            var pho = await _qlktxContext.Hopdongs.FirstOrDefaultAsync(e => e.SoHopDong == id);
            return pho;
        }
        //lay Hopdong bang Mssv
        public async Task<Hopdong?> GetHopDongByMssvAsync(string id)
        {
            var pho = await _qlktxContext.Hopdongs.FirstOrDefaultAsync(e => e.Mssv == id);
            return pho;
        }
        //cap nhat Hopdong
        public async Task UpdatePhongAsync(Hopdong phong)
        {
            _qlktxContext.Entry(phong).State = EntityState.Modified;
            await _qlktxContext.SaveChangesAsync();
        }
        //lấy danh sách HopDong thông qua trạng thái
        public async Task<List<Hopdong>> GetHopDongByTrangThaiAsync()
        {
            var result = await _qlktxContext.Hopdongs
                                    .Where(e => e.PhuongThucThanhToan == "Đang chờ phê duyệt")
                                    .ToListAsync();
            return result;
        }
    }
}
