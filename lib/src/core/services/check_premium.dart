import 'package:shared_preferences/shared_preferences.dart';

Future<void> setPremium(bool value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('is_premium', value);
}

Future<bool> isPremium() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('is_premium') ?? false;
}
