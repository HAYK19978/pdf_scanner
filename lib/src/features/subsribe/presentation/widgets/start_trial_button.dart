import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class StartTrialButton extends StatelessWidget {
  const StartTrialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tr('{pdf_scanner}_start_free_trial'),
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
