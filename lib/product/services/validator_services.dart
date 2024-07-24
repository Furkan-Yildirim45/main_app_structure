
import 'package:main_app_structure/product/widgets/general/general_snackbar.dart';

class ValidatorService {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      GeneralSnackbar.showWarning("Dikkat!", "Ad boş geçilemez!");
      return 'Ad boş geçilemez!';
    }
    return null;
  }

  static String? validateSurname(String? value) {
    if (value == null || value.isEmpty) {
      GeneralSnackbar.showWarning("Dikkat!", "Soyad boş geçilemez!");
      return 'Soyad boş geçilemez!';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      GeneralSnackbar.showWarning("Dikkat!", "E-posta boş geçilemez!");
      return 'E-posta boş geçilemez!';
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      GeneralSnackbar.showWarning("Dikkat!", "Geçerli bir e-posta girin!");
      return 'Geçerli bir e-posta girin!';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      GeneralSnackbar.showWarning("Dikkat!", "Şifre boş geçilemez!");
      return 'Şifre boş geçilemez!';
    } else if (value.length < 6) {
      GeneralSnackbar.showWarning("Dikkat!", "Şifre en az 6 karakter olmalıdır.");
      return 'Şifre en az 6 karakter olmalıdır.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      GeneralSnackbar.showWarning("Dikkat!", "Telefon numarası boş geçilemez!");
      return 'Telefon numarası boş geçilemez!';
    }
    return null;
  }

  static String? validateConfirmPassword(String password, String confirmPassword) {
    if (password != confirmPassword) {
      GeneralSnackbar.showWarning("Dikkat!", "Şifreler uyuşmuyor");
      return 'Şifreler uyuşmuyor';
    }
    return null;
  }

  static String? validateGender(String? value) {
    if (value == null || value.isEmpty) {
      GeneralSnackbar.showWarning("Dikkat!", "Cinsiyet boş geçilemez!");
      return 'Cinsiyet boş geçilemez!';
    }
    return null;
  }

  static String? validateJob(String? value) {
    if (value == null || value.isEmpty) {
      GeneralSnackbar.showWarning("Dikkat!", "Meslek boş geçilemez!");
      return 'Meslek boş geçilemez!';
    }
    return null;
  }
}