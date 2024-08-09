using Microsoft.EntityFrameworkCore;
using QLKyTucXa.Controller.Interfaces;
using QLKyTucXa.models;

namespace QLKyTucXa.Controller.Services
{
    public class SinhVienServices : ISinhVienServices
    {
        private readonly DataQlktxContext _context;
        public SinhVienServices(DataQlktxContext context)
        {
            _context = context;
        }

        //them sinh vien
        public async Task Addsinhviensync(Sinhvien sv)
        {
            _context.Sinhviens.Add(sv);
            await _context.SaveChangesAsync();
        }

        // Xoa sinh vien thong qua id
        public async Task DeleteByIdAsync(string id)
        {
            var sv = await GetByIdAsync(id);
            if (sv != null)
            {
                _context.Remove(sv);
                await _context.SaveChangesAsync();
            }
        }

        //lay bang id
        public async Task<Sinhvien?> GetByIdAsync(string id)
        {
            var sv = await _context.Sinhviens.FirstOrDefaultAsync(e => e.Mssv == id);
            return sv;
        }

        //lay danh sach sinh vien
        public async Task<List<Sinhvien>> laydssinhvien()
        {
            var sv = await _context.Sinhviens.ToListAsync();
            return sv;
        }

        //cap nhat sinh vien
        public async Task UpdateAsync(Sinhvien sv)
        {
            _context.Entry(sv).State = EntityState.Modified;
            await _context.SaveChangesAsync();
        }
    }
}
