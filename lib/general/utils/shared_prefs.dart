import 'package:shared_preferences/shared_preferences.dart';
import '../constants/constants.dart';

class SharedPrefs {
  static getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString(Constants.authToken);
    return token ?? '';
  }

  static saveToken(token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(Constants.authToken, token);
  }

  static void removeToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(Constants.authToken, '');
  }
}
