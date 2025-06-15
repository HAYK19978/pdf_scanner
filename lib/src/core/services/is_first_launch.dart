import 'package:shared_preferences/shared_preferences.dart';

Future<String?> getInitialRoute() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  int launchCount = prefs.getInt('launch_count') ?? 0;

  launchCount++;
  await prefs.setInt('launch_count', launchCount);

  if (launchCount == 1) return '/onboarding';
  if (launchCount == 2) return '/rateMyApp';

  return null;
}
