import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final PageController _controller = PageController();

  // ignore: library_private_types_in_public_api
  final List<_OnboardingData> pages = <_OnboardingData>[
    _OnboardingData(
      title: 'PDF Scanner',
      subtitle: 'Easily scan documents\nor convert them to PDF',
      imagePath: 'assets/images/scanner_onboarding1.png', // вставь свой путь
    ),
    _OnboardingData(
      title: 'Rate Us',
      subtitle: 'Help us improve with\nyour feedback',
      imagePath: 'assets/images/scanner_onboarding3.png',
    ),
  ];

  OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: pages.length,
        itemBuilder: (context, index) {
          final page = pages[index];
          return Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  page.imagePath,
                  height: 300,
                ),
                const SizedBox(height: 40),
                Text(
                  page.title,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  page.subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 14),
                  ),
                  onPressed: () {
                    if (index < pages.length - 1) {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      // перейти в основное приложение
                    }
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Continue', style: TextStyle(fontSize: 16)),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _OnboardingData {
  final String title;
  final String subtitle;
  final String imagePath;

  _OnboardingData({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
}
