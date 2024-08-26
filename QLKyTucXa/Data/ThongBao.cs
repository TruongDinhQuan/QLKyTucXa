using System;
using System.Collections.Generic;

namespace QLKyTucXa.Data;

public partial class ThongBao
{
    public string MaThongBao { get; set; } = null!;

    public string? NoiDung { get; set; }

    public DateTime? ThoiGianThongBao { get; set; }

    public bool? TrangThaiThongBao { get; set; }

    public string? LoaiThongBao { get; set; }

    public string? Iduser { get; set; }

    public virtual Taikhoan? IduserNavigation { get; set; }
}
