import 'package:shared_preferences/shared_preferences.dart';

class AuthManager {
  late SharedPreferences _prefs;

  Future<void> initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<bool> isLoggedIn() async {
    await initPrefs();
    return _prefs.getBool('isLoggedIn') ?? false;
  }

  Future<void> setLoggedIn(bool value) async {
    await initPrefs();
    _prefs.setBool('isLoggedIn', value);
  }

  Future<void> register(String username, String password) async {
    await initPrefs();
    _prefs.setString('username', username);
    _prefs.setString('password', password);
  }

  Future<bool> login(String username, String password) async {
    await initPrefs();
    final storedUsername = _prefs.getString('username');
    final storedPassword = _prefs.getString('password');

    if (username == storedUsername && password == storedPassword) {
      await setLoggedIn(true);
      return true;
    }
    return false;
  }

  Future<void> logout() async {
    await initPrefs();
    await setLoggedIn(false);
  }
}
