import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pdf_scanner/src/core/utils/image_paths.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          ImagePaths.logo2Red,
          height: 33,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          'pleaseWait'.tr(),
          style: const TextStyle(
            fontFamily: 'SF Pro',
            fontSize: 19,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
