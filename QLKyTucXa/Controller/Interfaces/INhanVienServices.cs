using QLKyTucXa.models;

namespace QLKyTucXa.Controller.Interfaces
{
    public interface INhanVienServices
    {
        Task AddPhongAsync(Nhanvien phong);
        Task DeletePhongAsync(string id);
        Task<List<Nhanvien>> GetPhongAsync();
        Task<Nhanvien?> GetPhongByIdAsync(string id);
        Task UpdatePhongAsync(Nhanvien phong);
    }
}