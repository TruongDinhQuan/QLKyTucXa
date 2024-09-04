using QLKyTucXa.Data;

namespace QLKyTucXa.Controller.Interfaces
{
        public interface IThongBaoServices
        {
            Task<List<ThongBao>> GetthongbaobyisuserAsync(string id);
            Task DanhDauThongBaoAsync(string maThongBao);
            Task AddThongBaoAsync(ThongBao TB);
            Task GuiThongBaoAsync(List<string> idUsers, string noiDung);
            Task DeletethongbaoForeignKeyAsync(string foreignKey);
        }
}