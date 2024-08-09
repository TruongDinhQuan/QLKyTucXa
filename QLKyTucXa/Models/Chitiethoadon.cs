using System;
using System.Collections.Generic;

namespace QLKyTucXa.models;

public partial class Chitiethoadon
{
    public string MaHd { get; set; } = null!;

    public string MaDv { get; set; } = null!;

    public int? ChiSoDau { get; set; }

    public int? ChiSoCuoi { get; set; }

    public virtual Dichvu MaDvNavigation { get; set; } = null!;

    public virtual Hoadon MaHdNavigation { get; set; } = null!;
}
