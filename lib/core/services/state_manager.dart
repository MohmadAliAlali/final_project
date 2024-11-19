import 'package:shared_preferences/shared_preferences.dart';
// import 'package:project_stud/repositories/user_repository.dart';

class AppState {
  static SharedPreferences? prefs;
  static bool isLoggedIn = false;
  static bool isNotFirstUse = true;
  static String accessToken = '';
  static String refreshToken = '';

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
    isLoggedIn = prefs?.getBool('isLoggedIn') ?? false;
    isNotFirstUse = prefs?.getBool('isNotFirstUse') ?? true;
    accessToken = prefs?.getString('accessToken') ?? '';
    refreshToken = prefs?.getString('refreshToken') ?? '';
  }

  static Future<void> login() async {
    isLoggedIn = true;
    await prefs?.setBool('isLoggedIn', true);
  }

  static Future<void> logout() async {
    isLoggedIn = false;
    await prefs?.setBool('isLoggedIn', false);
  }

  static Future<void> firstUse() async {
    isNotFirstUse = false;
    await prefs?.setBool('isNotFirstUse', false);
  }
  static Future<void> setToken(String access ,String refresh) async {
    accessToken = access;
    refreshToken = refresh;
    await prefs?.setString('access', accessToken);
    await prefs?.setString('refresh', refreshToken);
  }
}