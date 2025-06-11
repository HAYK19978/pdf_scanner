import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf_scanner/src/core/l10n/codegen_loader.g.dart';
import 'package:pdf_scanner/src/core/router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const <Locale>[
        Locale('en', 'US'),
        Locale('ru', 'RU'),
        Locale('de', 'DE'),
        Locale('pt', 'PT'),
        Locale('es', 'ES'),
        Locale('fr', 'FR'),
        Locale('it', 'IT'),
      ],
      path: 'assets/translations',
      useOnlyLangCode: true,
      assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale('en'),
      child: Builder(builder: (BuildContext context) {
        return ScreenUtilInit(
            designSize: const Size(375, 812),
            builder: (_, __) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routerConfig: router,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
              );
            });
      }),
    );
  }
}
