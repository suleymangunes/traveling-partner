// ignore_for_file: lines_longer_than_80_chars

/// **LocaleKeysMine Class**
///
/// Contains custom locale keys used in the application.
///
/// Example Usage:
/// ```dart
/// LocaleKeysMine.travelingPartner // Accessing the project name key
/// ```
abstract class LocaleKeysMine {
  /// Project name
  static const String travelingPartner = 'Gezgin Ortak';

  // alerts
  /// Key for the error message when an unexpected error occurs.
  static const String unexpectedError =
      'Beklenmeyen bir hata oluştu! Lütfen daha sonra tekrar deneyin.';

  /// Key for the error message when an unexpected error occurs while performing an action.
  static const String problemTryAgain =
      'İşlem yapılırken beklenmedik bir hataya rastlandı. Lütfen tekrar deneyin.';

  /// Key for the error message when an invalid value is entered.
  static const String validValue = 'Geçerli bir değer girin';

  /// Key for the error message when an invalid email address is entered.
  static const String validEmail = 'Geçerli bir eposta adresi girin';

  /// Key for the error message when an invalid password is entered.
  static const String validPassword = 'Geçerli bir şifre girin';

  /// Key for the message when the requested data is not found.
  static const String notFound = 'Veri bulunamadı';

  /// Key for the general alert message when a problem occurs.
  static const String thereisProblem = 'Bir hata oluştu!';

  /// Key for the error message when an invalid name is entered.
  static const String validName = 'Geçerli bir isim soyisim girin';

  // buttons
  /// Key for the text on the update button.
  static const String update = 'Uygula';

  /// Key for the text on the cancel button.
  static const String cancel = 'İptal';

  /// Key for the text on the login button.
  static const String login = 'Giriş Yap';

  /// Key for the text on the register now button.
  static const String registerNow = 'Hemen kaydol';

  /// Key for the text on the try again button.
  static const String tryAgain = 'Tekrar Dene';

  /// Key for the text on the sign out button.
  static const String signOut = 'Çıkış Yap';

  /// Key for the text on the sign in with Google button.
  static const String siginGoogle = 'Google İle Giriş Yap';

  /// Key for the text on the login now button.
  static const String loginNow = 'Hemen giriş yap';

  /// Key for the text on the sign up button.
  static const String signUp = 'Kayıt ol';

  /// Key for the text indicating who is with the user.
  static const String whosWithMe = 'Kimler Benimle';

  /// Key for the text on the sign up button.
  static const String register = 'Kaydol';

  /// Key for the text indicating successful registration.
  static const String registered = 'Kaydolundu';

  // infos
  /// Key for the label of email input field.
  static const String email = 'Eposta';

  /// Key for the label of password input field.
  static const String password = 'Şifre';

  /// Key for the text indicating "or".
  static const String or = 'Ya da';

  /// Key for the text indicating "just error".
  static const String justError = 'Hata';

  /// Key for the text asking if the user does not have an account.
  static const String dontAccount = 'Hesabın yok mu? ';

  /// Key for the text asking if the user already has an account.
  static const String haveAccount = 'Heabın var mı? ';

  /// Key for the label of name surname input field.
  static const String nameSurname = 'İsim Soyisim';

  // destination infos
  /// Key for the text indicating "about".
  static const String about = 'Hakkında';

  /// Key for the text indicating "places".
  static const String places = 'Gezilecek Yerler';

  /// Key for the text indicating "pick travel date".
  static const String pickTravelDate = 'Seyahat Tarihini Seç';

  // mail content
  /// Key for the mail content requesting to be a travel partner.
  static const String travelPartnerRequest =
      'Gezgin Ortağım olmak ister misiniz?';

  /// Key for the greeting message in the mail content.
  static const String hiIam = 'Merhaba, ben';

  /// Key for the between message in the mail content.
  static const String betwwen = 'tarihleri arasında';

  /// Key for the make travel message in the mail content.
  static const String makeTravel = 'konumuna seyahat edeceğim.';

  /// Key for the travel with me message in the mail content.
  static const String travelWithMe =
      'Benimle beraber seyahat ederek seyahatini daha eğlenceli hale getirmek ister misin?';

  // theme
  /// Key for the text indicating "theme".
  static const String theme = 'Tema';

  /// Key for the text indicating "pick theme".
  static const String pickTheme = 'Tema Seç';

  /// Key for the text indicating "dark theme".
  static const String darkTheme = 'Karanlık Tema';

  /// Key for the text indicating "light theme".
  static const String lightTheme = 'Aydınlık Tema';

  /// Key for the text indicating "system theme".
  static const String systemTheme = 'Sistem Varsayılanı';

  // localization
  /// Key for the text indicating "language".
  static const String lang = 'Uygulama Dili';

  /// Key for the text indicating "select language".
  static const String selectLang = 'Dil Seç';
}
