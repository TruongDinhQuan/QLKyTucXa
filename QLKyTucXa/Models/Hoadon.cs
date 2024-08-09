using System;
using System.Collections.Generic;

namespace QLKyTucXa.models;

public partial class Hoadon
{
    public string MaHd { get; set; } = null!;

    public DateOnly? NgayLapHd { get; set; }

    public string? PhuongThucThanhToan { get; set; }

    public string? TrangThai { get; set; }

    public string? MaPhong { get; set; }

    public string? IdnhanVien { get; set; }

    public virtual ICollection<Chitiethoadon> Chitiethoadons { get; set; } = new List<Chitiethoadon>();

    public virtual Phong? MaPhongNavigation { get; set; }
}
