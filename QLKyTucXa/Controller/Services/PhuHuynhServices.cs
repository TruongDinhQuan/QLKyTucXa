using Microsoft.EntityFrameworkCore;
using QLKyTucXa.Controller.Interfaces;
using QLKyTucXa.Data;

namespace QLKyTucXa.Controller.Services
{
    public class PhuHuynhServices : IPhuHuynhServices
    {
        private readonly DataQlktxContext _qlktxContext;
        public PhuHuynhServices(DataQlktxContext qlktxContext)
        {
            _qlktxContext = qlktxContext;
        }

        //lay danh sach phu huynh
        public async Task<List<Phuhuynh>> GetPhuhuynhsAsync()
        {
            var ph = await _qlktxContext.Phuhuynhs.ToListAsync();
            return ph;
        }

        //lay danh sach bang id
        public async Task<Phuhuynh?> GetPhuhuynhByIdAsync(string id)
        {
            var ph = await _qlktxContext.Phuhuynhs.FirstOrDefaultAsync(e => e.IdphuHuynh == id);
            return ph;
        }

        //lay phu huynh bang id sinh vien
        public async Task<List<Phuhuynh?>> GetPhuHuynhByStudentIdAsync(string? id)
        {
            var ph = await _qlktxContext.Phuhuynhs.Where(e => e.Mssv == id).ToListAsync();
            return ph;
        }

        //them phu huynh
        public async Task AddphuHuynhAsync(Phuhuynh ph)
        {
            _qlktxContext.Phuhuynhs.Add(ph);
            await _qlktxContext.SaveChangesAsync();
        }

        //cap nhat thong tin phu huynh
        public async Task UpdatePhuHuynhAsync(Phuhuynh ph)
        {
            _qlktxContext.Entry(ph).State = EntityState.Modified;
            await _qlktxContext.SaveChangesAsync();
        }

        //xoa phu huynh bang id
        public async Task DeletePhuHuynhAsync(string id)
        {
            var ph = await GetPhuhuynhByIdAsync(id);
            if (ph != null)
            {
                _qlktxContext.Remove(ph);
                await _qlktxContext.SaveChangesAsync();
            }
        }

        public async Task DeletephuhuynhForeignKeyAsync(string foreignKey)
        {
            var phList = await _qlktxContext.Phuhuynhs.Where(p => p.Mssv == foreignKey).ToListAsync();
            if (phList.Any())
            {
                _qlktxContext.Phuhuynhs.RemoveRange(phList);
                await _qlktxContext.SaveChangesAsync();
            }
        }
    }
}
