using Microsoft.EntityFrameworkCore;
using QLKyTucXa.Controller.Interfaces;
using QLKyTucXa.Data;

namespace QLKyTucXa.Controller.Services
{
    public class ThongBaoServices : IThongBaoServices
    {
        //sử dụng theo phương pháp này là vì DBcontext ko chạy nhiều luồng được
        private readonly IServiceScopeFactory _serviceScopeFactory;

        public ThongBaoServices(IServiceScopeFactory serviceScopeFactory)
        {
            _serviceScopeFactory = serviceScopeFactory;
        }

        public async Task<List<ThongBao>> GetthongbaobyisuserAsync(string id)
        {
            using (var scope = _serviceScopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<DataQlktxContext>();

                var pho = await context.ThongBaos
                    .Where(t => t.Iduser == id)
                    .OrderByDescending(t => t.ThoiGianThongBao)
                    .ToListAsync();

                return pho;
            }
        }

        public async Task DanhDauThongBaoAsync(string maThongBao)
        {
            using (var scope = _serviceScopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<DataQlktxContext>();
                var thongBao = await context.ThongBaos.FindAsync(maThongBao);
                if (thongBao != null)
                {
                    thongBao.TrangThaiThongBao = true; // Hoặc giá trị tương ứng để đánh dấu là đã đọc
                    await context.SaveChangesAsync();
                }
            }
        }

        public async Task AddThongBaoAsync(ThongBao tb)
        {
            using (var scope = _serviceScopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<DataQlktxContext>();
                context.ThongBaos.Add(tb);
                await context.SaveChangesAsync();
            }
        }

        //Gửi thông báo cho nhiều sinh viên
        public async Task GuiThongBaoAsync(List<string> idUsers, string noiDung)
        {
            foreach (var idUser in idUsers)
            {
                var thongBaoMoi = new ThongBao
                {
                    MaThongBao = Guid.NewGuid().ToString(),
                    Iduser = idUser,
                    NoiDung = noiDung,
                    ThoiGianThongBao = DateTime.Now,
                    TrangThaiThongBao = false,
                    LoaiThongBao = "Bình Thường"
                };
                await AddThongBaoAsync(thongBaoMoi);
            }
        }

    }
}
