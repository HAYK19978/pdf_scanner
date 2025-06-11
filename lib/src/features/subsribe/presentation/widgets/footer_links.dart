import 'package:flutter/material.dart';

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Restore', style: TextStyle(color: Colors.grey)),
          Text('Privacy', style: TextStyle(color: Colors.grey)),
          Text('Terms', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
