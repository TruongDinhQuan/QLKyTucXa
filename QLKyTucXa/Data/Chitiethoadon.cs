using System;
using System.Collections.Generic;

namespace QLKyTucXa.Data;

public partial class Chitiethoadon
{
    public string MaHd { get; set; } = null!;

    public string MaDv { get; set; } = null!;

    public int? SoLuong { get; set; }

    public int? ChiSoDau { get; set; }

    public int? ChiSoCuoi { get; set; }

    public virtual Dichvu MaDvNavigation { get; set; } = null!;

    public virtual Hoadon MaHdNavigation { get; set; } = null!;
}
