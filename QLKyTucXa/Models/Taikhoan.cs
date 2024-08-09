using System;
using System.Collections.Generic;

namespace QLKyTucXa.models;

public partial class Taikhoan
{
    public string Iduser { get; set; } = null!;

    public string? TenDangNhap { get; set; }

    public string? MatKhau { get; set; }

    public string? Email { get; set; }

    public string? ConfirmPassword { get; set; }

    public bool ? EmailDaXacMinh { get; set; }

    public string? VaiTro { get; set; }

    public virtual ICollection<Nhanvien> Nhanviens { get; set; } = new List<Nhanvien>();

    public virtual ICollection<Sinhvien> Sinhviens { get; set; } = new List<Sinhvien>();
}
