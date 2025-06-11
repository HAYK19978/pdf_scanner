import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';

class RateMyAppService {
  static final RateMyApp _rateMyApp = RateMyApp(
    minDays: 3,
    minLaunches: 5,
    remindDays: 7,
    remindLaunches: 5,
    // googlePlayIdentifier: 'your.package.name',
    appStoreIdentifier: '1234567890', // for iOS
  );

  static Future<void> init() async {
    await _rateMyApp.init();
  }

  static Future<void> maybeShowRateDialog(BuildContext context) async {
    if (_rateMyApp.shouldOpenDialog) {
      _rateMyApp.showRateDialog(
        context,
        title: 'Enjoying the app?',
        message: 'Please rate us on the App Store!',
        rateButton: 'RATE',
        noButton: 'NO THANKS',
        laterButton: 'MAYBE LATER',
        listener: (button) {
          switch (button) {
            case RateMyAppDialogButton.rate:
              print('User selected rate');
              break;
            case RateMyAppDialogButton.later:
              print('User selected later');
              break;
            case RateMyAppDialogButton.no:
              print('User selected no');
              break;
          }
          return true; // dialog closes
        },
        dialogStyle: const DialogStyle(
          titleStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          messageStyle: TextStyle(fontSize: 16),
          dialogShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        onDismissed: () => print('Dialog dismissed'),
      );
    }
  }
}
