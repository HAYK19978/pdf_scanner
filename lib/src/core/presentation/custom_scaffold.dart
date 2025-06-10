import 'package:flutter/material.dart';
import 'package:pdf_scanner/src/core/utils/image_paths/image_paths.dart';

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
          Positioned(
              width: MediaQuery.of(context).size.width,
              right: 0,
              top: 88,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 28,
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
              )),
        ],
      ),
    );
  }
}
