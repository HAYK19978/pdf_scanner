import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf_scanner/src/core/utils/image_paths.dart';

class CustomScafold extends StatelessWidget {
  const CustomScafold({
    required this.body,
    super.key,
  });
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          body,
          Padding(
            padding: EdgeInsets.only(
              left: 28.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  ImagePaths.frame70,
                ),
                Image.asset(
                  ImagePaths.scaffoldBg,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
