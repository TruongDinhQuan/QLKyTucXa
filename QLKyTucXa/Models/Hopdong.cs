using System;
using System.Collections.Generic;

namespace QLKyTucXa.models;

public partial class Hopdong
{
    public string SoHopDong { get; set; } = null!;

    public DateOnly? NgayLap { get; set; }

    public DateOnly? ThoiGianThue { get; set; }

    public int? TienKyQuy { get; set; }

    public string? PhuongThucThanhToan { get; set; }

    public string? IdnhanVien { get; set; }

    public string? Mssv { get; set; }

    public string? MaPhong { get; set; }

    public virtual ICollection<Phong> MaPhongs { get; set; } = new List<Phong>();
}
