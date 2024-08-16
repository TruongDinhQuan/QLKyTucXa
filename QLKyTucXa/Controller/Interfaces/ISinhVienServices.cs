using QLKyTucXa.models;

namespace QLKyTucXa.Controller.Interfaces
{
    public interface ISinhVienServices
    {
        Task Addsinhviensync(Sinhvien sv);
        Task DeleteByIdAsync(string id);
        Task<Sinhvien?> GetByIdAsync(string id);
        Task<Sinhvien?> GetByIdUserAsync(string id);
        Task<List<Sinhvien>> laydssinhvien();
        Task UpdateAsync(Sinhvien sv);
    }
}