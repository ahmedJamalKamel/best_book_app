import 'package:shared_preferences/shared_preferences.dart';

enum PrefKeys { lang ,name,email,image}

class SharedPrefController {
  static final SharedPrefController _instance =
      SharedPrefController._internal();
  late SharedPreferences _sharedPreferences;

  SharedPrefController._internal();

  factory SharedPrefController() {
    return _instance;
  }

  Future<void> initPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> setLanguage({required bool lang}) async {
    await _sharedPreferences.setBool(PrefKeys.lang.toString(), lang);
  }

  bool get language => _sharedPreferences.getBool(PrefKeys.lang.toString()) ?? false;

  Future<void> setUserName({required String name}) async {
    await _sharedPreferences.setString(PrefKeys.name.toString(), name);
    //await _sharedPreferences.setString(PrefKeys.email.toString(), email);
  }
  Future<void> setUserEmail({required String email}) async {
    await _sharedPreferences.setString(PrefKeys.email.toString(), email);
    //await _sharedPreferences.setString(PrefKeys.email.toString(), email);
  }

  Future<void> setUserImage({required String image}) async {
    await _sharedPreferences.setString(PrefKeys.image.toString(), image);
    //await _sharedPreferences.setString(PrefKeys.email.toString(), email);
  }

  String get name => _sharedPreferences.getString(PrefKeys.name.toString()) ?? "default name";
  String get email => _sharedPreferences.getString(PrefKeys.email.toString()) ?? "example@exaple.com";
  String get image => _sharedPreferences.getString(PrefKeys.image.toString()) ?? "";
}
