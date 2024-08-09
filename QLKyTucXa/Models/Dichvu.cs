using System;
using System.Collections.Generic;

namespace QLKyTucXa.models;

public partial class Dichvu
{
    public string MaDv { get; set; } = null!;

    public string? TenDichVuBatBuoc { get; set; }

    public int? DinhMuc { get; set; }

    public int? DonGia { get; set; }

    public string? Dvt { get; set; }

    public virtual ICollection<Chitiethoadon> Chitiethoadons { get; set; } = new List<Chitiethoadon>();
}
