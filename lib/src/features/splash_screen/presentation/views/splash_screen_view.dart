import 'package:flutter/material.dart';
import 'package:pdf_scanner/src/core/mixins/after_layout_mixin.dart';
import 'package:pdf_scanner/src/core/router/router.dart';
import 'package:pdf_scanner/src/core/services/is_first_launch.dart';
import 'package:pdf_scanner/src/core/utils/image_paths/image_paths.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView>
    // ignore: always_specify_types
    with
        // ignore: always_specify_types
        AfterLayoutMixin {
  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    // ignore: always_specify_types
    await Future.delayed(const Duration(seconds: 2));
    final bool ifFirstOpening = await isFirstLaunch();
    if (ifFirstOpening) {
      router.go('/onboarding');
    } else {
      router.go('/noDocuments');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(ImagePaths.logo2),
      ),
    );
  }
}
