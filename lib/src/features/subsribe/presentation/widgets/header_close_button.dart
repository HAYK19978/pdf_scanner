import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderCloseButton extends StatelessWidget {
  const HeaderCloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: const Align(
        alignment: Alignment.topRight,
        child: Icon(Icons.close),
      ),
    );
  }
}
