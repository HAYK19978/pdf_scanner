import 'package:shared_preferences/shared_preferences.dart';

Future<bool> isFirstLaunch() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final bool isFirst = prefs.getBool('is_first_launch') ?? true;

  if (isFirst) {
    await prefs.setBool('is_first_launch', false);
  }

  return isFirst;
}
