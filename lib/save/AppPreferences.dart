import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Định nghĩa các phương thức để lưu và truy vấn dữ liệu trong shared_preferences

  static String getString(String key) {
    return _prefs.getString(key) ?? '';
  }

  static Future<bool> setString(String key, String value) {
    return _prefs.setString(key, value);
  }

  static int getInt(String key) {
    return _prefs.getInt(key) ?? 0;
  }

  static Future<bool> setInt(String key, int value) {
    return _prefs.setInt(key, value);
  }

  static bool getBool(String key) {
    return _prefs.getBool(key) ?? false;
  }

  static Future<bool> setBool(String key, bool value) {
    return _prefs.setBool(key, value);
  }

  // Thêm các phương thức khác tùy ý tại đây theo nhu cầu của bạn
}
