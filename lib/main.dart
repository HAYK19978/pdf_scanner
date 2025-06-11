import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pdf_scanner/src/core/app.dart';
import 'package:pdf_scanner/src/core/services/rate_my_app_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await RateMyAppService.init();

  runApp(const App());
}
