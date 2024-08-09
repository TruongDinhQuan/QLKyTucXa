using System;
using System.Collections.Generic;

namespace QLKyTucXa.models;

public partial class Nhanvien
{
    public string IdnhanVien { get; set; } = null!;

    public string? HoTen { get; set; }

    public string? Sdt { get; set; }

    public string? DiaChi { get; set; }

    public string? ChucVu { get; set; }

    public string? Iduser { get; set; }

    public virtual Taikhoan? IduserNavigation { get; set; }
}
