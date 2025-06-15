// ignore_for_file: always_specify_types, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:pdf_scanner/src/core/mixins/after_layout_mixin.dart';
import 'package:pdf_scanner/src/core/router/router.dart';
import 'package:pdf_scanner/src/core/services/is_first_launch.dart';
import 'package:pdf_scanner/src/core/utils/image_paths.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView>
    with AfterLayoutMixin {
  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    final String? route = await getInitialRoute();
    if (route != null) {
      router.go(route);
      return;
    } else {
      router.go('/documents');
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
