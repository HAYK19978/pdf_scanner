import 'package:flutter/material.dart';
import 'package:pdf_scanner/src/core/utils/app_colors.dart';
import 'package:pdf_scanner/src/core/utils/image_paths.dart';

class ScanButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ScanButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 264,
            height: 68,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(88),
              boxShadow: <BoxShadow>[
                const BoxShadow(
                  color: Color(0x14343434),
                  blurRadius: 24,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            alignment: Alignment.center,
          ),
          Image.asset(
            ImagePaths.btn,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
