import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf_scanner/src/core/utils/image_paths.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;

  const CustomScaffold({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background layout with spaceBetween
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(left: 28.w, top: 62.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    ImagePaths.frame70,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    ImagePaths.scaffoldBg,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Positioned(child: child)
        ],
      ),
    );
  }
}
