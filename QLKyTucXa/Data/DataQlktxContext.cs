using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace QLKyTucXa.Data;

public partial class DataQlktxContext : DbContext
{
    public DataQlktxContext()
    {
    }

    public DataQlktxContext(DbContextOptions<DataQlktxContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Chitiethoadon> Chitiethoadons { get; set; }

    public virtual DbSet<Dichvu> Dichvus { get; set; }

    public virtual DbSet<Hoadon> Hoadons { get; set; }

    public virtual DbSet<Hopdong> Hopdongs { get; set; }

    public virtual DbSet<Nhanvien> Nhanviens { get; set; }

    public virtual DbSet<Phong> Phongs { get; set; }

    public virtual DbSet<Phuhuynh> Phuhuynhs { get; set; }

    public virtual DbSet<Sinhvien> Sinhviens { get; set; }

    public virtual DbSet<Taikhoan> Taikhoans { get; set; }

    public virtual DbSet<ThongBao> ThongBaos { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseSqlServer("Data Source=LAPTOP-US5EJJRM\\SQLEXPRESS;Initial Catalog=QuanLyKTX;Integrated Security=True;Trust Server Certificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Chitiethoadon>(entity =>
        {
            entity.HasKey(e => new { e.MaHd, e.MaDv }).HasName("PK_CHITIETHOADONDVBV");

            entity.ToTable("CHITIETHOADON");

            entity.Property(e => e.MaHd)
                .HasMaxLength(100)
                .HasColumnName("MaHD");
            entity.Property(e => e.MaDv)
                .HasMaxLength(100)
                .HasColumnName("MaDV");

            entity.HasOne(d => d.MaDvNavigation).WithMany(p => p.Chitiethoadons)
                .HasForeignKey(d => d.MaDv)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_CHITIETHOADON_DICHVU");

            entity.HasOne(d => d.MaHdNavigation).WithMany(p => p.Chitiethoadons)
                .HasForeignKey(d => d.MaHd)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_CHITIETHOADON_HOADON");
        });

        modelBuilder.Entity<Dichvu>(entity =>
        {
            entity.HasKey(e => e.MaDv).HasName("PK_DICHVUBATBUOC");

            entity.ToTable("DICHVU");

            entity.Property(e => e.MaDv)
                .HasMaxLength(100)
                .HasColumnName("MaDV");
            entity.Property(e => e.Dvt)
                .HasMaxLength(50)
                .HasColumnName("DVT");
            entity.Property(e => e.LoaiDichVu).HasMaxLength(50);
            entity.Property(e => e.TenDichVuBatBuoc).HasMaxLength(50);
        });

        modelBuilder.Entity<Hoadon>(entity =>
        {
            entity.HasKey(e => e.MaHd).HasName("PK_HOADONDVBATBUOC");

            entity.ToTable("HOADON");

            entity.Property(e => e.MaHd)
                .HasMaxLength(100)
                .HasColumnName("MaHD");
            entity.Property(e => e.IdnhanVien)
                .HasMaxLength(100)
                .HasColumnName("IDNhanVien");
            entity.Property(e => e.MaPhong).HasMaxLength(100);
            entity.Property(e => e.NgayLapHd).HasColumnName("NgayLapHD");
            entity.Property(e => e.PhuongThucThanhToan).HasMaxLength(50);
            entity.Property(e => e.TrangThai).HasMaxLength(50);

            entity.HasOne(d => d.IdnhanVienNavigation).WithMany(p => p.Hoadons)
                .HasForeignKey(d => d.IdnhanVien)
                .HasConstraintName("FK_HOADON_NHANVIEN");

            entity.HasOne(d => d.MaPhongNavigation).WithMany(p => p.Hoadons)
                .HasForeignKey(d => d.MaPhong)
                .HasConstraintName("FK_HOADON_PHONG");
        });

        modelBuilder.Entity<Hopdong>(entity =>
        {
            entity.HasKey(e => e.SoHopDong);

            entity.ToTable("HOPDONG");

            entity.Property(e => e.SoHopDong).HasMaxLength(100);
            entity.Property(e => e.IdnhanVien)
                .HasMaxLength(100)
                .HasColumnName("IDNhanVien");
            entity.Property(e => e.MaPhong).HasMaxLength(100);
            entity.Property(e => e.Mssv)
                .HasMaxLength(10)
                .HasColumnName("MSSV");
            entity.Property(e => e.PhuongThucThanhToan).HasMaxLength(50);
            entity.Property(e => e.TrangThai).HasMaxLength(50);

            entity.HasOne(d => d.IdnhanVienNavigation).WithMany(p => p.Hopdongs)
                .HasForeignKey(d => d.IdnhanVien)
                .HasConstraintName("FK_HOPDONG_NHANVIEN");

            entity.HasOne(d => d.MaPhongNavigation).WithMany(p => p.Hopdongs)
                .HasForeignKey(d => d.MaPhong)
                .HasConstraintName("FK_HOPDONG_PHONG");

            entity.HasOne(d => d.MssvNavigation).WithMany(p => p.Hopdongs)
                .HasForeignKey(d => d.Mssv)
                .HasConstraintName("FK_HOPDONG_SINHVIEN");
        });

        modelBuilder.Entity<Nhanvien>(entity =>
        {
            entity.HasKey(e => e.IdnhanVien);

            entity.ToTable("NHANVIEN");

            entity.Property(e => e.IdnhanVien)
                .HasMaxLength(100)
                .HasColumnName("IDNhanVien");
            entity.Property(e => e.TinhTrang).HasMaxLength(50);
            entity.Property(e => e.ChucVu).HasMaxLength(50);
            entity.Property(e => e.DiaChi).HasMaxLength(50);
            entity.Property(e => e.HoTen).HasMaxLength(50);
            entity.Property(e => e.Iduser)
                .HasMaxLength(100)
                .HasColumnName("IDUser");
            entity.Property(e => e.Sdt)
                .HasMaxLength(10)
                .HasColumnName("SDT");

            entity.HasOne(d => d.IduserNavigation).WithMany(p => p.Nhanviens)
                .HasForeignKey(d => d.Iduser)
                .HasConstraintName("FK_NHANVIEN_TAIKHOAN");
        });

        modelBuilder.Entity<Phong>(entity =>
        {
            entity.HasKey(e => e.MaPhong);

            entity.ToTable("PHONG");

            entity.Property(e => e.MaPhong).HasMaxLength(100);
            entity.Property(e => e.Khu).HasMaxLength(10);
            entity.Property(e => e.Tang).HasMaxLength(10);
            entity.Property(e => e.TenPhong).HasMaxLength(10);
        });

        modelBuilder.Entity<Phuhuynh>(entity =>
        {
            entity.HasKey(e => e.IdphuHuynh);

            entity.ToTable("PHUHUYNH");

            entity.Property(e => e.IdphuHuynh)
                .HasMaxLength(100)
                .HasColumnName("IDPhuHuynh");
            entity.Property(e => e.HoTen).HasMaxLength(50);
            entity.Property(e => e.Mssv)
                .HasMaxLength(10)
                .HasColumnName("MSSV");
            entity.Property(e => e.NgheNghiep).HasMaxLength(50);
            entity.Property(e => e.QuanHe).HasMaxLength(20);
            entity.Property(e => e.Sdt)
                .HasMaxLength(10)
                .HasColumnName("SDT");

            entity.HasOne(d => d.MssvNavigation).WithMany(p => p.Phuhuynhs)
                .HasForeignKey(d => d.Mssv)
                .HasConstraintName("FK_PHUHUYNH_SINHVIEN");
        });

        modelBuilder.Entity<Sinhvien>(entity =>
        {
            entity.HasKey(e => e.Mssv);

            entity.ToTable("SINHVIEN");

            entity.Property(e => e.Mssv)
                .HasMaxLength(10)
                .HasColumnName("MSSV");
            entity.Property(e => e.DiaChi).HasMaxLength(50);
            entity.Property(e => e.GioiTinh).HasMaxLength(10);
            entity.Property(e => e.Iduser)
                .HasMaxLength(100)
                .HasColumnName("IDUser");
            entity.Property(e => e.Khoa).HasMaxLength(50);
            entity.Property(e => e.Lop).HasMaxLength(50);
            entity.Property(e => e.Sdt)
                .HasMaxLength(10)
                .HasColumnName("SDT");
            entity.Property(e => e.SoCccd)
                .HasMaxLength(50)
                .HasColumnName("SoCCCD");
            entity.Property(e => e.TenSinhVien).HasMaxLength(50);

            entity.HasOne(d => d.IduserNavigation).WithMany(p => p.Sinhviens)
                .HasForeignKey(d => d.Iduser)
                .HasConstraintName("FK_SINHVIEN_TAIKHOAN");
        });

        modelBuilder.Entity<Taikhoan>(entity =>
        {
            entity.HasKey(e => e.Iduser);

            entity.ToTable("TAIKHOAN");

            entity.Property(e => e.Iduser)
                .HasMaxLength(100)
                .HasColumnName("IDUser");
            entity.Property(e => e.ConfirmPassword).HasMaxLength(20);
            entity.Property(e => e.Email).HasMaxLength(50);
            entity.Property(e => e.MatKhau).HasMaxLength(20);
            entity.Property(e => e.TenDangNhap).HasMaxLength(50);
            entity.Property(e => e.VaiTro).HasMaxLength(10);
        });

        modelBuilder.Entity<ThongBao>(entity =>
        {
            entity.HasKey(e => e.MaThongBao);

            entity.ToTable("ThongBao");

            entity.Property(e => e.MaThongBao).HasMaxLength(100);
            entity.Property(e => e.Iduser)
                .HasMaxLength(100)
                .HasColumnName("IDUser");
            entity.Property(e => e.LoaiThongBao).HasMaxLength(50);
            entity.Property(e => e.NoiDung).HasMaxLength(100);
            entity.Property(e => e.ThoiGianThongBao).HasColumnType("datetime");

            entity.HasOne(d => d.IduserNavigation).WithMany(p => p.ThongBaos)
                .HasForeignKey(d => d.Iduser)
                .HasConstraintName("FK_ThongBao_TAIKHOAN");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
