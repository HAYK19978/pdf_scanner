import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          height: 33.h,
        ),
        SizedBox(
          height: 24.h,
        ),
        Text(
          'pleaseWait'.tr(),
          style: TextStyle(
            fontFamily: 'SF Pro',
            fontSize: 19.w,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
