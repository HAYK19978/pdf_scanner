import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SubscriptionInfoSection extends StatelessWidget {
  const SubscriptionInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text.rich(
            TextSpan(
              text: '${tr('{pdf_scanner}_ultimate')} ',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              children: <InlineSpan>[
                TextSpan(
                  text: '${tr('{pdf_scanner}_pdf')} ',
                  style: const TextStyle(color: Colors.red),
                ),
                TextSpan(
                  text: tr('{pdf_scanner}_scanner'),
                  style: const TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            tr('{pdf_scanner}_get_unlimited_scans'),
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 24),
          Image.asset(
            'assets/images/scanner_illustration.png',
            height: 200,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
