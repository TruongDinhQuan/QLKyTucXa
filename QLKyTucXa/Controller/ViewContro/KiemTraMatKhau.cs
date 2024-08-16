using System.ComponentModel.DataAnnotations;
using System.Text.RegularExpressions;

namespace QLKyTucXa.Controller.ViewContro
{
    public class KiemTraMatKhau : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            var password = value as string;

            // Kiểm tra điều kiện mật khẩu (ví dụ: ít nhất 8 ký tự, có ít nhất 1 chữ cái, 1 chữ số, 1 ký tự đặc biệt)
            if (string.IsNullOrWhiteSpace(password) ||
                password.Length < 8 ||
                !password.Any(char.IsLetter) ||
                !password.Any(char.IsDigit) ||
                !password.Any(ch => "!@#$%^&*()_+-=".Contains(ch)))
            {
                return new ValidationResult("Mật khẩu phải có ít nhất 8 ký tự, bao gồm chữ cái, chữ số và ký tự đặc biệt.");
            }
            return ValidationResult.Success;
        }
    }
}
